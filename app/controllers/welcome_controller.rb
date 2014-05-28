class WelcomeController < ApplicationController

  def index
  	@blog_post = BlogPost.last()

  client = Twitter::REST::Client.new do |config|
    config.consumer_key        = "gvREoYwqhbOtyE2OLqyMbP0LV"
    config.consumer_secret     = "nuF3mZQVpUhNwpFNRERp0at7PzEbnHPBZk3PPL1jOyRSBIMcJj"
    config.access_token        = "308547305-41l4LiEtEuGrFwvJzPtKbS4M9CM18i6iAbBKo44n"
    config.access_token_secret = "LpyF6laXwm45O9S3baj3tBBCX3G1oiSWt8AFY76jqRXDG"
  end
 
  def client.get_all_tweets(user)
      options = {:count => 5, :include_rts => true}
      user_timeline(user, options)
  end

      @tweet_news = client.get_all_tweets("jnpdesigns")
  end
  
  def contact
  end
end
