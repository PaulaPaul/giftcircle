class CircleMember < ActiveRecord::Base
	#the Circle Member records are really tracking the 'givers'; these records are
	#populated with the recipients when the circle members are shuffled and assigned
	#belongs to a gift circle
	belongs_to :gift_circle
	#belongs to a person, who is the giver of the gift
	belongs_to :person
	has_one :gift
end
