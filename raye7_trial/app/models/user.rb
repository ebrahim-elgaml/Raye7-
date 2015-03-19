class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :firstName, :lastName,:remember_me 
  # attr_accessible :title, :body

  has_one :basic_profile
  has_one :full_profile
  has_one :linkedin_oauth_setting
end
