class Blog < ActiveRecord::Base
	has_many :blog_posts
	has_many :comments

	belongs_to :user
end
