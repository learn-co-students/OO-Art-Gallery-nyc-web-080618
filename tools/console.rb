require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

artist1 = Artist.new("A",1)
artist2 = Artist.new("B",2)
artist3 = Artist.new("C",3)

gallery1 = Gallery.new("Gal1","City1")
gallery2 = Gallery.new("Gal2","City1")
gallery3 = Gallery.new("Gal3","City2")

painting1 = Painting.new("Painting1","Modern",artist1,gallery1)
painting2 = Painting.new("Painting2","Ren",artist3,gallery1)
paingting3 = Painting.new("Painting3","Classical",artist1,gallery3)



binding.pry
