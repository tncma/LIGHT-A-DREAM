class Event < ActiveRecord::Base
  attr_accessible :eventend, :eventname, :eventstart, :eventtype, :location
end
