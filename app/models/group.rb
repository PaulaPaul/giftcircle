class Group < ActiveRecord::Base
	has_many :people
	belongs_to :person
	has_many :gift_circles
end
