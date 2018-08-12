require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

artist1 = Artist.new("artist1", 3)
artist2 = Artist.new("artist2", 5)
artist3 = Artist.new("artist3", 2)
artist4 = Artist.new("artist4", 7)

gallery1 = Gallery.new("gallery1", "philly")
gallery2 = Gallery.new("gallery2", "new york")
gallery3 = Gallery.new("gallery3", "boston")
gallery4 = Gallery.new("gallery4", "dc")
gallery4 = Gallery.new("gallery5", "dc")

painting1 = Painting.new(artist1, gallery2, "title1", "impressionist")
painting2 = Painting.new(artist2, gallery4, "title2", "finger")
painting3 = Painting.new(artist3, gallery3, "title3", "abstract")
painting4 = Painting.new(artist1, gallery4, "title4", "abstract")
painting5 = Painting.new(artist1, gallery3, "title5", "abstract")

binding.pry
