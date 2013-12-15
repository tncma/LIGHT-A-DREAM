class Event < ActiveRecord::Base
  belongs_to :ladder
  has_many :dreamers, :through => :eventregistrations
  attr_accessible :eventend, :eventname, :eventstart, :eventtype, :location
  validates_presence_of :eventname,:eventend,:eventstart,:eventtype,:location
 
  def all_participants
    registrants= Eventregistration.find(:all,:conditions => ["event_id in (?)",self.id])
    logger.debug registrants
    if registrants
      registrants
    end
  end
end
