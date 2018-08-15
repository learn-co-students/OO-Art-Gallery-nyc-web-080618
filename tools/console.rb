require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

david = Artist.new("David", 6)
jesse = Artist.new("Jesse", 7)
mike = Artist.new("Mike", 10)
wangtron = Artist.new("Wangtron", 20)
luke = Artist.new("Luke", 13)

g1 = Gallery.new("Vince", "Mohegan")
g2 = Gallery.new("Granat", "Moscow")
g3 = Gallery.new("Sheesh", "Gilbratar")
g4 = Gallery.new("Gucci", "Turin")
g5 = Gallery.new("Versace", "Venice")
g6 = Gallery.new("YUHHH", "Venice")

p1 = Painting.new("Sheesh wow", "Paint", david, g1)
p2 = Painting.new("Gucci!!", "Sculpture", jesse, g2)
p3 = Painting.new("Baka not nice", "Paint", mike, g3)
p4 = Painting.new("GAINZ", "Sculpture", wangtron, g1)
p5 = Painting.new("Woah", "Paint", david, g5)
binding.pry
