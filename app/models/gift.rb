class Gift < ActiveRecord::Base
	#belongs to the circle_member, where circle_member.person_id is the giver
	belongs_to :circle_member
	#belongs to the person who received the gift via the circle_member association of giver and recipient
	belongs_to :person
end
