class LadderProfile < ActiveRecord::Base
  has_one :user, :as => :profile, dependent: :destroy

  attr_accessor :username,:email,:password_confirmation,:password
  attr_accessible :institution, :registration_no ,:email,:username, :password, :password_confirmation, :remember_me
  accepts_nested_attributes_for :user,:allow_destroy => true


end
