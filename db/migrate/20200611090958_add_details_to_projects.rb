class AddDetailsToProjects < ActiveRecord::Migration[6.0]
  def change
    change_column_null :projects, :name, false
    change_column_null :projects, :exposition, false
  end
end
