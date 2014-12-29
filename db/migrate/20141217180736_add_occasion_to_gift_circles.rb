class AddOccasionToGiftCircles < ActiveRecord::Migration
  def change
    add_column :gift_circles, :occasion, :string
  end
end
