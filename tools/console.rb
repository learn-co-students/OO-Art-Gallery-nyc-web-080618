require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Instances of Artist
picasso = Artist.new("Pablo Picasso", 50)
da_vinci = Artist.new("Leonardo da Vinci", 40)
warhol = Artist.new("Andy Warhol", 45)
kahlo = Artist.new("Frida Kahlo", 25)
pollock = Artist.new("Jackson Pollock", 30)

# Instances of Gallery
met = Gallery.new("The Met", "NYC")
frick = Gallery.new("Frick", "NYC")
louvre = Gallery.new("The Louvre", "Paris")
moma = Gallery.new("MoMA", "NYC")
british = Gallery.new("British Museum", "London")

# Instances of Painting
title1 = Painting.new("Title 1", "Finger Painting", picasso, met)
title2 = Painting.new("Title 2", "Impressionist", warhol, met)
title3 = Painting.new("Title 3", "Finger Painting", picasso, louvre)
title4 = Painting.new("Title 4", "Oil & Pastel", kahlo, moma)
title5 = Painting.new("Title 5", "Renaissance", da_vinci, british)




binding.pry
0
