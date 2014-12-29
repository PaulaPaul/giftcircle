class Person < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :groups   #can be the owner of many groups/clubs/employee departments over time
	has_many :gift_circles  #can be the owner of many gift circles over time 
	has_many :circle_members # can be paired with another person as a giver in multiple gift circles
	has_many :gifts #can receive many gifts over time
end
