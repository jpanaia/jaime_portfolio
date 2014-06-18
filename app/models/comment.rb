class Comment < ActiveRecord::Base
	belongs_to :blog_post
	belongs_to :blog
	validates :author, presence: true
    validates :comment, presence: true
end