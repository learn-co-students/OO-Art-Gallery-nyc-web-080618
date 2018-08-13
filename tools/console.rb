require_relative '../config/environment.rb'
require_relative "../app/models/artist"
require_relative "../app/models/gallery"
require_relative "../app/models/painting"
require "pry"
def reload
  load 'config/environment.rb'
end

johnny = Artist.new("Johnny", 7)
david = Artist.new("David", 9)
lisa = Artist.new("Lisa", 20)

fishes = Painting.new(johnny, "Fishes", "abstract")
dogs = Painting.new(lisa, "Dogs", "modern")
cats = Painting.new(david, "Cats", "real")
horses = Painting.new(johnny, "Horses", "real")
tigers = Painting.new(johnny, "Tigers", "real")
lions = Painting.new(johnny, "Lions", "real")
nyc = Gallery.new("NYC_Gallery", "NYC", [fishes, horses])
boston = Gallery.new("Boston_Gallery", "Boston", [lions, cats])
sf = Gallery.new("SF_Gallery", "SF", [tigers, dogs])



binding.pry
