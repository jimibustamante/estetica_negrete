class Map < ActiveRecord::Base
  acts_as_gmappable
  
  attr_accessible :address, :city, :country, :gmaps, :latitude, :longitude, :name

  # validates :address, :presence => true
  # validates :city, :presence => true
  # validates :country :presence => true

  def self.set_map
    if Map.all.count == 0
      map = Map.new
    	map.name = APP_CONFIG['map']['name']
    	map.address = APP_CONFIG['map']['address']
    	map.city = APP_CONFIG['map']['city']
    	map.country = APP_CONFIG['map']['country']
    	map.latitude = APP_CONFIG['map']['latitude'].to_f
    	map.longitude = APP_CONFIG['map']['longitude'].to_f
    	map.gmaps = true
    	map.save!
    else
      map = Map.first
      map.save!
    end
    return map
  end

  def gmaps4rails_address
  	"#{self.address}, #{self.city}, #{self.country}"
  end
end
