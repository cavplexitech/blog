class CreateComments < ActiveRecord::Migration[7.0]
  def change
    change_table :comments do |t|
      t.string :commentable_type
      t.integer :commentable_id
      t.references :user, null: false, foreign_key: true

      t.remove :status
    end
  end
end
