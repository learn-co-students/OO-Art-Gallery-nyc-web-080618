class Painting
  attr_accessor :gallery
  attr_reader :title, :style, :artist

  @@all = []

  def initialize(artist, title, style, gallery)
    @artist = artist
    @title = title
    @style = style
    @gallery = gallery
    @@all << self
  end

  def self.all
    @@all
  end

  def self.styles
    self.all.map do |painting|
      painting.style
    end.uniq  
  end

end
