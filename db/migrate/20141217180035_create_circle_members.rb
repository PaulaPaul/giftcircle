class CreateCircleMembers < ActiveRecord::Migration
  def change
    create_table :circle_members do |t|
      t.integer :giver_id
      t.string :giverNickname
      t.integer :person_id
      t.text :personInterests
      t.text :giverNotes
      t.boolean :giftGiven?
      t.text :thankYou
      t.integer :giftCircle_id
      t.integer :gift_id

      t.timestamps
    end
  end
end
