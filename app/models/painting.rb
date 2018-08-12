class Painting
  @@all =[]
  attr_reader :title, :style

  def initialize(title, style,artist,gallery)
    @title = title
    @style = style
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  def self.all
    @@all
  end
end
