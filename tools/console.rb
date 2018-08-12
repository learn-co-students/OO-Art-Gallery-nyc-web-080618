require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

##Artists
a = Artist.new("a", 7)
b = Artist.new("b", 1)
c = Artist.new("c", 2)
d = Artist.new("d", 8)
e = Artist.new("e", 6)


#Galleries
moma = Gallery.new("moma", "new york")
met = Gallery.new("met", "new york")
boston = Gallery.new("boston", "boston")
la = Gallery.new("la", "la")





#paintings
#(title, style, artist, gallery)
p1 = Painting.new("p1", "abstract", a, moma)
p2 = Painting.new("p2", "abstract", a, moma)
p3 = Painting.new("p3", "abstract", b, moma)
p4 = Painting.new("p4", "imp", a, boston)
p5 = Painting.new("p5", "fing", c, moma)
p6 = Painting.new("p6", "abstract", b, la)
p7 = Painting.new("p7", "abstract", e, la)






binding.pry

0
