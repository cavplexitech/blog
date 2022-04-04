class AddProfileReferenceInComment < ActiveRecord::Migration[7.0]
  def change
    change_table :comments do |t|
      t.references :profile, foreign_key: true
    end
  end
end
