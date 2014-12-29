class CreateGiftCircles < ActiveRecord::Migration
  def change
    create_table :gift_circles do |t|
      t.string :name
      t.text :about
      t.string :theme
      t.date :giving_date
      t.date :reveal_date
      t.float :min_giftprice
      t.float :max_giftprice
      t.boolean :annon_admin?
      t.boolean :active?
      t.integer :person_id

      t.timestamps
    end
  end
end
