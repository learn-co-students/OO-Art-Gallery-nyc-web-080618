require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

davinci = Artist.new("DaVinci", 500)
jesse = Artist.new("Jesse", 10)
louvre = Gallery.new("Louvre", "Paris")
moma = Gallery.new("MOMA", "NYC")
mona_lisa = Painting.new("Mona Lisa", "portrait", davinci, louvre)
salvator_mundi = Painting.new("Salvator Mundi", "portrait", davinci, moma)
last_supper = Painting.new("The Last Supper", "mural", jesse, louvre)

binding.pry
