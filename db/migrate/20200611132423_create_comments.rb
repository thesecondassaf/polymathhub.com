class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.references :prompt, index: true, foreign_key: {to_table: :comments}, default: nil
      t.references :discussion, null: false, foreign_key: true
      t.references :member, null: false, foreign_key: true
      t.text :content, null: false
      t.string :comment_type, null: false
      t.timestamps
    end
  end
end
