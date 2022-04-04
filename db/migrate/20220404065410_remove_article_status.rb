class RemoveArticleStatus < ActiveRecord::Migration[7.0]
  def change
    change_table :articles do |t|
      t.remove :status
    end
  end
end
