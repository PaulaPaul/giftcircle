class RemoveGiverIdFromCircleMembers < ActiveRecord::Migration
  def change
    remove_column :circle_members, :giver_id, :integer
  end
end
