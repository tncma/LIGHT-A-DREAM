class DreamerProfile < ActiveRecord::Base
  has_one :user,as: :profile, dependent: :destroy
  accepts_nested_attributes_for :user,:allow_destroy => true
  attr_accessible :category, :institution,:email,:username, :password, :password_confirmation, :remember_me
  attr_accessor :username,:email,:password_confirmation,:password
  has_many :eventregistrations
  has_many :events, :through => :eventregistrations
  
  def all_events
    Event.find(:all,:order => "created_at desc")    
  end

  def isRegistered?(event)
    if  Eventregistration.where(event_id: event.id,dreamer_profile_id: user.profile_id).empty?
      false
    else
      true
     end
  end

  def addevent(event)
    if !isRegistered?(event)
      eventregistration = eventregistrations.build(event_id: event.id)
      if eventregistration.save!
        logger.debug "already added"
      end
    else
      logger.debug "already added"
    end
  end


end
