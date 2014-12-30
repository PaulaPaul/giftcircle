module GiftCirclesHelper

	#called to create the pairs of givers and receivers from the gift_circle.circle_members
	#each circle_member has a person_id that is the giver; the receiver_id needs to be set based on the shuffle
	#still working on this... should just be able to pass in the circle_members
	def shuffle(givers)
		#at this point the helper function assumes the caller has verified there are 
		#at least 3 givers, and returns a hash of giver-->receiver pairs that follow the rules:
		# giver and receiver can't be the same name (you can be your own giver)
	    # giver and receiver can't be circular (a is b's giver where b is a's recipient)
		giver_receiver_hash = {}
		done = false

		while done == false
		    receivers = givers.shuffle
		 	#log "initial givers list: #{givers}"
			#log "initial receivers list: #{receivers}"
			i=0
			while i < givers.length do
		    	giver_receiver_hash[givers[i]] = receivers[i]
				# log "i=#{i}, giver=#{givers[i]}, receiver=#{receivers[i]}"
				i+=1
			end		
			# now we've made the list, time to check it and throw the whole thing out if there is a problem
			i = 0
			done = true
			while i < givers.length && done == true do
				if giver_receiver_hash[givers[i]] == receivers[i] # you can't be your own giver
					done = false
					#log "had to throw out this shuffle for i=#{i} where giver=#{givers[i]}:receiver=#{giver_receiver_hash[givers[i]]}"
				elsif giver_receiver_hash[giver_receiver_hash[givers[i]]] == givers[i] # you can't be the giver of your giver
					done = false
					#log "had to throw out this shuffle for i=#{i} where giver=#{givers[i]}:receiver=#{giver_receiver_hash[givers[i]]},"
					#log "because giver=#{giver_receiver_hash[givers[i]]}:receiver=#{giver_receiver_hash[giver_receiver_hash[givers[i]]]}"
				end
				i+=1
			end
		end

		return giver_receiver_hash 

	end

end
