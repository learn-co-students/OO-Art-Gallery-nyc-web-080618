class Painting
  attr_reader :artist, :title, :style
  @@all = []
  def initialize(artist, title, style)
    @artist = artist
    @title = title
    @style = style
    @@all << self
  end

  def self.all
    @@all
  end

def self.list_of_styles
  arr = []
  Painting.all.each do |painting|
    arr << painting.style
  end
  arr.uniq
end


end
