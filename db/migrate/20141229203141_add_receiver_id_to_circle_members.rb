class AddReceiverIdToCircleMembers < ActiveRecord::Migration
  def change
    add_column :circle_members, :receiver_id, :integer
  end
end
