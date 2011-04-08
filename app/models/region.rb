class Region < ActiveRecord::Base
  has_many :sections
  has_many :events, :through => :sections
  
end
