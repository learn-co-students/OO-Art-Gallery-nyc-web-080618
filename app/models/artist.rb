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

  def self.average_years #iterates through all artists, totals years_active, divides by num of artists
    total_artists = self.all.count
    years = 0
    self.all.each do |artist|
      years += artist.years_active
    end
    (years/total_artists)
  end

  def paintings #iterates thru paintings, matches paintings to artist & returns
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  def galleries #iterates through #paintings and returns galleries
    paintings.map do |painting|
      painting.gallery.name
    end
  end

  def cities #iterates through #paintings returns cities
    paintings.map do |painting|
      painting.gallery.city
    end
  end


end #END CLASS
