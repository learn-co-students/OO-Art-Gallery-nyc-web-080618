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


# Get a list of all the paintings by a specific artists
def all_paintings
  artist_paintings = Painting.all.select do |painting_ob|
    #binding.pry
    painting_ob.artist == self
  end
  artist_paintings.map do |painting_ob|
    painting_ob.title
  end
end # end of all_paintings instance method


# Get a list of all the galleries that a specific artist has paintings in
def all_galleries
  gallery_arr = Painting.all.select do |painting_ob|
    painting_ob.artist == self
  end
  gallery_arr.map do |painting_ob|
    painting_ob.gallery.name
  end
end # end of all_galleries instance method


# Get a list of all cities that contain galleries
# that a specific artist has paintings in
def all_cities
  city_arr = Painting.all.select do |painting_ob|
    #binding.pry
    painting_ob.artist == self
  end
  city_arr.map do |painting_ob|
    painting_ob.gallery.city
  end
end # end of all_cities instance method


# Find the average years of experience of all artists
def self.experience
  exp = 0
  total_artists = @@all.length

  Artist.all.each do |artist_ob|
    exp += artist_ob.years_active.to_f
  end
  (exp / total_artists)
end # end of experience Class Method


end # end of Artist Class
