class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def self.cities
    Gallery.all.map do |gallery|
      gallery.city
    end.uniq
  end

  def my_paintings
    Painting.all.select do |painting|
      painting.gallery == self
    end
  end

  def my_artists
    my_paintings.map do |painting|
      painting.artist
    end
  end

  def artist_names
    my_artists.map do |artist|
      artist.name
    end
  end

  def avg_exp
    total_exp = my_artists.reduce(0) do |sum, artist|
      sum + artist.years_active
    end
    (total_exp.to_f / my_artists.length).round
  end

end
