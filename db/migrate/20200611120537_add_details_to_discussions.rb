class AddDetailsToDiscussions < ActiveRecord::Migration[6.0]
  def change
    change_column_null :discussions, :name, false
    change_column_null :discussions, :goal, false
  end
end
