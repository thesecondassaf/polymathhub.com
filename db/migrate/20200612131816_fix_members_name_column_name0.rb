class FixMembersNameColumnName0 < ActiveRecord::Migration[6.0]
  def change
    rename_column :members, :name, :displayname
  end
end
