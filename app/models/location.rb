class Location < ActiveRecord::Base
  attr_accessible  :address, :name, :url, :longitude, :latitude   

  geocoded_by :address
  after_validation :geocode 
end
