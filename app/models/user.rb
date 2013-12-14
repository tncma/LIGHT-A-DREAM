class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  belongs_to :profile, polymorphic: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email,:username, :password, :password_confirmation, :remember_me
  validates_presence_of :username
  validates_uniqueness_of :username
  # Setup accessible (or protected) attributes for your model



  # attr_accessible :title, :body

end
