require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

artist1 = Artist.new("artistA", 5)
artist2 = Artist.new("artistB", 25)
artist3 = Artist.new("artistC", 30)
artist4 = Artist.new("artistD", 50)

gall1 = Gallery.new("gallery1", "San Francisco")
gall2 = Gallery.new("gallery2", "New York")
gall3 = Gallery.new("gallery3", "London")

paintingX= Painting.new(artist4, "some title", "abstract", gall3)
paintingY= Painting.new(artist1, "xyz", "abstract", gall2)
paintingZ= Painting.new(artist2, "flowers", "renaissance", gall1)
paintingA= Painting.new(artist2, "puppies", "realism", gall3)

binding.pry
