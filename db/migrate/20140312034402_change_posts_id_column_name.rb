class ChangePostsIdColumnName < ActiveRecord::Migration
  def up
    rename_column(:comments, :posts_id, :post_id)
  end

  def down
    rename_column(:comments, :post_id, :posts_id)
  end
end
