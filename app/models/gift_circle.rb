class GiftCircle < ActiveRecord::Base
	#gift circles always belong to a person (the circle admin)
	#gift circles can optionally belong to a group (like a book club or work group)
	belongs_to :person
	belongs_to :group
	has_many :circle_members
end
