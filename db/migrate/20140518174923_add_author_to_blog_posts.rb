class AddAuthorToBlogPosts < ActiveRecord::Migration
  def change
    add_column :blog_posts, :author, :string
  end
end
