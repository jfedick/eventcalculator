class Event < ActiveRecord::Base
  belongs_to :region
  belongs_to :category

end
