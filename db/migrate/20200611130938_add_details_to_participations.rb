class AddDetailsToParticipations < ActiveRecord::Migration[6.0]
  def change
    change_column_null :participations, :member_id, false
    change_column_null :participations, :discussion_id, false


    add_foreign_key "participations", "members"
    add_foreign_key "participations", "discussions"
  end
end
