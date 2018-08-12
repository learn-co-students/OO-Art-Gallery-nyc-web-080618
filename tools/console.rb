require 'pry'
require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

artist1=Artist.new("a",2)
artist2=Artist.new("b",6)
artist3=Artist.new("c",20)
artist4=Artist.new("d",29)
artist5=Artist.new("e",12)
artist6=Artist.new("f",8)

gallery1=Gallery.new("g1","c1")
gallery2=Gallery.new("g2","c2")
gallery3=Gallery.new("g3","c3")
gallery4=Gallery.new("g4","c4")
gallery5=Gallery.new("g5","c5")
gallery6=Gallery.new("g6","c6")

painting1=Painting.new("t1","s1",artist1,gallery1)
painting2=Painting.new("t2","s2",artist2,gallery1)
painting3=Painting.new("t3","s3",artist1,gallery2)
painting4=Painting.new("t4","s4",artist3,gallery2)
painting5=Painting.new("t5","s5",artist3,gallery3)
painting6=Painting.new("t6","s6",artist4,gallery4)
painting7=Painting.new("t7","s7",artist5,gallery4)
painting8=Painting.new("t8","s8",artist5,gallery5)
painting9=Painting.new("t9","s9",artist6,gallery5)


artist1.get_painting_from_artist
artist2.get_galleries_from_artist
artist3.get_cities_from_artist
Artist.average_experience

Painting.styles

Gallery.all_cities
gallery2.get_artists_from_gallery
gallery2.get_artists_names_from_gallery
gallery2.get_experience_from_gallery

binding.pry
