class Gallery
  @@all =[]
  attr_reader :name, :city

def initialize(name, city)
  @name = name
  @city = city
  @@all <<self
end

 def self.all
   @@all
 end

 def self.all_cities
   all.map{|gallery|
   gallery.city}.uniq
 end

 def get_artists_from_gallery
   painting=Painting.all.select{
   |painting|painting.gallery==self }
   painting.map{
     |painting|painting.artist }
 end

 def get_artists_names_from_gallery
   get_artists_from_gallery.map{
     |artist|artist.name  }
  end

  def get_experience_from_gallery
    get_artists_from_gallery.reduce(0){
      |sum,artist|sum+artist.years_active
    }
  end

end
