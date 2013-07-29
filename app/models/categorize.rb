class Categorize < ActiveRecord::Base
  attr_accessible :date, :description, :location_id, :type_id
  belongs_to :location
  belongs_to :type
end
