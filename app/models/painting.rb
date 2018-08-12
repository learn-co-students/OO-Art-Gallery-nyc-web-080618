class Painting
  @@all = []

  attr_reader :title, :style, :artist, :gallery

  def initialize(title, style, artist, gallery)
    @title = title
    @style = style
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  def self.all
    @@all
  end

  def self.painting_styles
    styles = all.map do |painting|
      painting.style
    end
    styles.uniq
  end

end
