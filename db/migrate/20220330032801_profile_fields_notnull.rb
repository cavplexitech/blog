class ProfileFieldsNotnull < ActiveRecord::Migration[7.0]
  def change
    change_column_null(:profiles, :first_name, false)
    change_column_null(:profiles, :last_name, false)
    change_column_null(:profiles, :phone, false)
  end
end
