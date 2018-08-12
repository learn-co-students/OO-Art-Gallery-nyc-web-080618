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

  def self.all_cities
    @@all.collect do |gallery|
      gallery.city
    end.uniq
  end

  def paintings
    Painting.all.select do |painting|
      painting.gallery == self
    end
  end

  def artists
    paintings.collect do |painting|
      painting.artist
    end.uniq
  end

  def comb_years_exp
    years = 0
    artists.each do |artist|
      years += artist.years_active
    end
    years
  end






end
