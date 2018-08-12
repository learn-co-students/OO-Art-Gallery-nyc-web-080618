class Artist

  @@all = []

  attr_reader :name, :years_active

  def initialize(name, years_active)
    @name = name
    @years_active = years_active
    @@all << self
  end

  def self.all
    @@all
  end

  def my_paintings
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  def my_exhibitions
    my_paintings.collect do |painting|
      painting.gallery
    end.uniq
  end

  def my_exhibitions_cities
    my_paintings.collect do |painting|
      painting.gallery.city
    end.uniq
  end

  def self.avg_years_exp
    years = 0
    @@all.each do |artist|
      years += artist.years_active
    end
    (years.to_f / @@all.length)
  end


end
