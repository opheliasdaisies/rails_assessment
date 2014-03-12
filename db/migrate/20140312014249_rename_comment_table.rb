class RenameCommentTable < ActiveRecord::Migration
  def up
    rename_table(:comments_tables, :comments)
  end

  def down
    rename_table(:comments, :comments_tables)
  end
end
