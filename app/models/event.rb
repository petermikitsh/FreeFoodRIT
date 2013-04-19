class Event < ActiveRecord::Base
  attr_accessible :start_date, :start_time, :duration, :title, :location_id, :food_ids, :latitude, :longitude
  has_and_belongs_to_many :foods
  belongs_to :location
  validates :start_date, :start_time, :duration, :title, :location, :foods, :presence => true
  acts_as_gmappable

  def gmaps
  	true
  end

end
