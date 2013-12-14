class DreamerProfile < ActiveRecord::Base
  has_one :user,as: :profile, dependent: :destroy
  attr_accessible :category, :institution
end
