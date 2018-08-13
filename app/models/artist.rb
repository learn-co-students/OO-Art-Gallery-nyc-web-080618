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
#
#
  def galleries
    Gallery.all.select do |gallery|
     !(gallery.paintings & self.paintings).empty?
    end
  end
#
    def cities
      array = []
      self.galleries.each do |gallery|
        array << gallery.city
    end
    array
  end
#
def self.average_years
  total = 0
  Artist.all.each do |artist|
    total += artist.years_active
  end
  (total / Artist.all.length.to_f).round
end

end
