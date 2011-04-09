class Section < ActiveRecord::Base
  belongs_to :region
  has_many :events
  
  
end
