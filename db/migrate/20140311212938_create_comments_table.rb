class CreateCommentsTable < ActiveRecord::Migration
  def change
    create_table :comments_tables do |t|
      t.string :author
      t.text :body

      t.timestamps

      t.belongs_to :posts
    end
  end
end
