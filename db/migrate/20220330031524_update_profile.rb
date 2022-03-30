class UpdateProfile < ActiveRecord::Migration[7.0]
  def change
    change_table :profiles do |t|
      t.remove :name
      t.remove :email

      t.string :first_name
      t.string :last_name
      t.string :phone
      t.text :biography
    end
  end
end
