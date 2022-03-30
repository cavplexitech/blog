class ProfileAddReferenceToUser < ActiveRecord::Migration[7.0]
  def change
    change_table :profiles do |t|
      t.references :user, null: false, foreign_key: true
    end
  end
end
