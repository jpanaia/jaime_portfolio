# require 'role_model.rb'

class User < ActiveRecord::Base

  # include RoleModel

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # # Setup accessible (or protected) attributes for your model
  # attr_accessible :email, :password, :password_confirmation, :remember_me, :roles, :roles_mask

  # # optionally set the integer attribute to store the roles in,
  # # :roles_mask is the default
  # roles_attribute :roles_mask

  # # declare the valid roles -- do not change the order if you add more
  # # roles later, always append them at the end!
  # roles :admin, :guest

  has_many :blogs
  has_many :blog_posts

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  after_create :send_welcome_email
  	def send_welcome_email
  		UserMailer.welcome_email(self).deliver
  	end

end
