class WelcomeController < ApplicationController
  def index
  	@blog_post = BlogPost.last()
  	@blog_posts = BlogPost.all
  end
  
  def contact
  end
end
