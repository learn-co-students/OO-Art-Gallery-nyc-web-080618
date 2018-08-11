require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

artist1 = Artist.new("Artist1", 5)
artist2 = Artist.new("Artist2", 10)
artist3 = Artist.new("Artist3", 15)

gallery1 = Gallery.new("Gallery1", "City1")
gallery2 = Gallery.new("Gallery2", "City2")
gallery3 = Gallery.new("Gallery3", "City3")

painting1 = Painting.new("Painting1", "Style1", artist1, gallery1)
painting2 = Painting.new("Painting2", "Style2", artist2, gallery2)
painting3 = Painting.new("Painting3", "Style3", artist3, gallery3)
painting4 = Painting.new("Painting2", "Style1", artist2, gallery3)
binding.pry
