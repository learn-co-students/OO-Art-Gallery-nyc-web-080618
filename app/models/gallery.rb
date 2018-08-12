class Gallery

  attr_reader :name, :city

  @@all = [ ]

  def self.all
    @@all
  end


  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all_cities
    self.all.map do |gallery|
      gallery.city
    end.uniq
  end

 #get all paintings at a specific Gallery
  def all_paintings
    Painting.all.select do |painting|
      painting.gallery == self
    end
  end


  #all artists that have paintings at a specific Gallery
  def all_artists
    self.all_paintings.map do |painting|
      painting.artist
    end.uniq
  end

  #get a list of the names of artists that have paintings at a specific gallery
  def artist_names
    self.all_artists.map do |artist|
      artist.name
    end
  end

#Get the combined years of experience of all artists at a specific gallery
  def total_years
    total_years = 0
    self.all_artists.each do |artist|
      total_years += artist.years_active
    end
    total_years
  end





end #end gallery class
