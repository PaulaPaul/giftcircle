class CreateGifts < ActiveRecord::Migration
  def change
    create_table :gifts do |t|
      t.string :name
      t.text :about
      t.string :image
      t.text :giftcard
      t.integer :person_id
      t.integer :circleMember_id

      t.timestamps
    end
  end
end
