class LadderProfile < ActiveRecord::Base
  has_one :user, :as => :profile, dependent: :destroy

  attr_accessor :username,:email,:password_confirmation,:password
  attr_accessible :institution, :registration_no ,:email,:username, :password, :password_confirmation, :remember_me
  accepts_nested_attributes_for :user,:allow_destroy => true

  def all_events
    logger.debug Event.find(:all,:conditions => ["ladder_id in (?)",user.id])
    Event.find(:all,:conditions => ["ladder_id in (?)",user.id],:order => "created_at desc")
  end


end
