class Event < ActiveRecord::Base
  belongs_to :ladder
  has_many :dreamers, :through => :eventregistrations
  attr_accessible :eventend, :eventname, :eventstart, :eventtype, :location

end
