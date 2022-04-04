class SetArticleIdNullableInComments < ActiveRecord::Migration[7.0]
  def change
    change_column_null(:comments, :article_id, true)
  end
end
