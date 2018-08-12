class Gallery
  @@all = []

  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def self.cities
    cities = all.map do |gallery|
      gallery.city
    end
    cities.uniq
  end

  def artists
    paintings = Painting.all.select do |painting|
      painting.gallery == self
    end
    paintings.map do |painting|
      painting.artist
    end
  end

  def artist_names
    artists.map do |artist|
      artist.name
    end
  end

  def combined_years_of_experience
    sum = 0
    artists.each do |artist|
      sum += artist.years_active
    end
    sum
  end

end
