class AddAboutToGroup < ActiveRecord::Migration
  def change
    add_column :groups, :about, :text
  end
end
