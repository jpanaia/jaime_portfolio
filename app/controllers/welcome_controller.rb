class WelcomeController < ApplicationController

include ApplicationHelper

  def index
  	@blog_post = BlogPost.last()
    call_tweets
  end
  
  def contact
  end
end
