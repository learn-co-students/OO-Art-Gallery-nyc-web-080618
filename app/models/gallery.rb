class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all < self
  end

  def self.all
    @@all
  end

  def all_cities
    cities = Gallery.all.map do |gallery|
      gallery.city
    end
    cities.uniq
  end

  def artists
    Painting.all.select do |painting|
      if painting.gallery == self
        painting.artist
      end
    end
  end

  def artist_name
    artist.map do |artist|
      artist.name
    end
  end

  def avg_experience
    sum = 0
    artists.each do |artist|
      sum += artist.years_active
    end
    sum.to_f / artists.length 
  end

end
