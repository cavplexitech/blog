class AddFullNameToProfile < ActiveRecord::Migration[7.0]
  def change
    change_table :profiles do |t|
      t.string :full_name
    end
  end
end
