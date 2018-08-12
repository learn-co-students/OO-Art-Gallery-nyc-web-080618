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


# Get a list of all cities that have a gallery,
# A city should not appear more than once in the list.
def self.all_cities
  cities_arr = Painting.all.select do |painting_ob|
    #binding.pry
    painting_ob.gallery
  end
  cities_arr.map do |painting_ob|
    painting_ob.gallery.city
  end.uniq
end # end of all_cities Class method


# Get a list of artists that have paintings at a specific gallery
def artists_with_paintings
  this_gallery_arr = Painting.all.select do |painting_ob|
    #binding.pry
    painting_ob.gallery == self
  end
  this_gallery_arr.map do |painting_ob|
    painting_ob.artist
  end
end # end of artists_with_paintings instance method


# Get a list of the names of artists that have paintings at a specific gallery
def artist_names_with_paintings
  artist_name_arr = Painting.all.select do |painting_ob|
    #binding.pry
    painting_ob.gallery == self
  end
  artist_name_arr.map do |painting_ob|
    painting_ob.artist.name
  end
end # end of artist_names_with_paintings instance method


# Get the combined years of experience of all artists at a specific gallery
def experience
  exp = 0

  artists_with_paintings.each do |artist_ob|
    #binding.pry
      exp += artist_ob.years_active.to_f
  end
  exp
end # end of experience instance method



end # end of Gallery Class
