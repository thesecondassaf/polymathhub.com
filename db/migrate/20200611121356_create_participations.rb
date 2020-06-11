class CreateParticipations < ActiveRecord::Migration[6.0]
  def change
    create_table :participations do |t|
      t.belongs_to :user
      t.belongs_to :discussion
      t.timestamps
    end
  end
end
