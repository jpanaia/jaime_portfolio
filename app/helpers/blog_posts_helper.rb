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

  def create
  	  @user = User.create( user_params )
  end

  private

  # Use strong_parameters for attribute whitelisting
  # Be sure to update your create() and update() controller methods.

  def user_params
  	  params.require(:user).permit(:avatar)
  end
end