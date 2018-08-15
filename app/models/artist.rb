class Artist

  attr_reader :name, :years_active

  @@all = []

  def initialize(name, years_active)
    @name = name
    @years_active = years_active
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_paintings
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  def artist_galleries
    artist_paintings.map do |painting|
      painting.gallery
    end
  end

  def artist_cities
    artist_galleries.map do |gallery|
      gallery.city
    end
  end

  def self.experience
    exp = self.all.map do |artist|
      artist.years_active
    end
    exp.reduce(:+) / exp.count
  end

end#end of class
