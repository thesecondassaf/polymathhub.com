class RenameUsersToMembers < ActiveRecord::Migration[6.0]
  def change
    rename_table :users, :members
    rename_column :participations, :user_id, :member_id
  end
end
