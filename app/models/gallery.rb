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
  self.all.map do |gallery|
    gallery.city
  end.uniq
end

def gallery_artists
  gal = Painting.all.select do |painting|
    painting.gallery == self
  end
  gal.map do |gallery|
    gallery.artist
  end
end

def gallery_names
  gallery_artists.map do |artist|
    artist.name
  end
end

def gallery_exp
  exp = gallery_artists.map do |artist|
    artist.years_active
  end
  exp.reduce(:+) / exp.count
end

end
