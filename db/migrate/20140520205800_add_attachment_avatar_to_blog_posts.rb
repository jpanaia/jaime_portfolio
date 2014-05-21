class AddAttachmentAvatarToBlogPosts < ActiveRecord::Migration
  def self.up
    change_table :blog_posts do |t|
      t.attachment :avatar
    end
  end

  def self.down
    drop_attached_file :blog_posts, :avatar
  end
end
