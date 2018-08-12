class Artist
 @@all =[]
  attr_reader :name,:years_active

  def initialize(name, years_active)
    @name = name
    @years_active = years_active
    @@all << self
  end

  def self.all
    @@all
  end

  def get_painting_from_artist
    Painting.all.select {
      |painting|painting.artist==self
    }
  end

  def get_galleries_from_artist
    get_painting_from_artist.map {
      |painting|painting.gallery
    }
  end

  def get_cities_from_artist
    get_galleries_from_artist.map{
    |gallery|gallery.city }
  end

  def self.average_experience
    total= all.reduce(0){
      |sum,artist|sum+artist.years_active
    }
    total.to_f/all.length.to_f
  end

end
