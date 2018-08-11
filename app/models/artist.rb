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

  def my_paintings
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  def my_galleries
    my_paintings.map do |painting|
      painting.gallery
    end
  end

  def my_cities
    my_galleries.map do |gallery|
      gallery.city
    end
  end

  def self.avg_exp
    total_exp = self.all.reduce(0) do |sum, artist|
      sum + artist.years_active
    end
    (total_exp.to_f / self.all.length).round
  end

end
