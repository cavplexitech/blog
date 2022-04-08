class FriendshipsConfirmedNotNullable < ActiveRecord::Migration[7.0]
  def change
    change_column_null(:friendships, :confirmed, false)
  end
end
