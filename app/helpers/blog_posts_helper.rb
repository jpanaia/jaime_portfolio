module BlogPostsHelper

 def update_comments_count(blog_post_id)
	 #the blog_post we're updating
     blog_post = BlogPost.find(blog_post_id)

     #step 1: let's count the comments
     num_comments = blog_post.comments.count

     #step 2: update the blog_post table
     blog_post.num_comments = num_comments

     #set 3: save to table
     blog_post.save
	end
end