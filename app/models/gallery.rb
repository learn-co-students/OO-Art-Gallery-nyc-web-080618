class Gallery

  attr_reader :name, :city, :paintings
  @@all = []
def initialize(name, city, paintings)
  @name = name
  @city = city
  @paintings = paintings
  @@all << self
end

def self.all
  @@all
end

def self.cities
arr = []
Gallery.all.each do |gallery|
  arr << gallery.city
end
arr.uniq
end

def artists
  array = []
  self.paintings.each do |painting|
    if Artist.all.include?(painting.artist)
      array << painting.artist
    end
end
array.uniq
end

def name_of_artists
  array = []
  artists.each do |artist|
    array << artist.name
  end
  array.uniq
end

def total_experiences
  total = 0
  self.artists.each do |artist|
  total += artist.years_active
end
total
end

end
