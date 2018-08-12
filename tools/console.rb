require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


picasso = Artist.new('picasso',100)
vangogh = Artist.new('van gogh',200)
davidz = Gallery.new('davidz','nyc')
moma = Gallery.new('moma','nyc')
painting1 = Painting.new('painting1', 'old', vangogh, moma)
painting2 = Painting.new('painting2', 'abstract', picasso, davidz)
binding.pry
