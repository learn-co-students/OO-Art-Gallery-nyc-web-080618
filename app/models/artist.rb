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

  def paintings
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  def galleries
    paintings.map do |painting|
      painting.gallery
    end
  end

  def all_cities
    galleries.map do |gallery|
      gallery.city
    end
  end

  def avg_experience
    sum = 0
    Artist.all.each do |artist|
      sum += artist.years_active
    end
    sum.to_f / Artist.all.length
  end

end #end of class 
