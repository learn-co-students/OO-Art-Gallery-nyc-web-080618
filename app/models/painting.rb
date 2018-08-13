class Painting

  attr_reader :title, :style, :artist, :gallery

  @@all = []

  def initialize(title, style, artist, gallery)
    @title = title
    @style = style
    @artist = artist
    @gallery = gallery
    @@all << self
  end # initialize

  def self.all
    @@all
  end # self.all

  def self.painting_styles
    @@all.map do |painting|
      painting.style
    end.uniq! # @@all.map
  end # self.painting_styles

end # class Painting
