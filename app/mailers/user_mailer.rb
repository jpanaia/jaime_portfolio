class UserMailer < ActionMailer::Base
  default from: "jnpwebtesting@gmail.com"

  # def welcome_email(user)
  # 	@user  = user
  # 	@url = 'http://example.com/login'
  # 	mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  # end

  def send_email(blog_post)
  	@blog_post = blog_post
  	mail(to: 'jnpwebtesting@gmail.com', subject: 'A New Blog Post Was Created!')
  end
end
