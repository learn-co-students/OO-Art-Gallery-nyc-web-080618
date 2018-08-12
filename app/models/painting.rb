class Painting

  attr_reader :title, :style, :artist, :gallery

  @@all = []

  def initialize(artist, gallery, title, style)
    @artist = artist
    @gallery = gallery
    @title = title
    @style = style
    @@all << self
  end

  def self.all
    @@all
  end

end #end class
