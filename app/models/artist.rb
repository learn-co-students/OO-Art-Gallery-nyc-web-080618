class Artist

  attr_reader :name, :years_active

  @@all = []

  def initialize(name, years_active)
    @name = name
    @years_active = years_active
    @@all << self
  end # initialize

  def self.all
    @@all
  end # self.all

  def paintings
    Painting.all.select do |painting|
      painting.artist == self
    end # Painting.all.select
  end # paintings

  def galleries
    paintings.map do |painting|
      painting.gallery
    end.uniq # paintings.map
  end # galleries

  def cities
    galleries.map do |gallery|
      gallery.city
    end.uniq # galleries.map
  end # cities

  def self.average_years_experience
    total_years = 0
    @@all.each do |artist|
      total_years += artist.years_active
    end # all.each
    total_years / @@all.length
  end # self.average_years_experience

end # class Artist
