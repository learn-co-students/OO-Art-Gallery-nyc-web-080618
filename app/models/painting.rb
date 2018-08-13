class Painting

  attr_reader :title, :style, :artist, :gallery

  @@all = []

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

  def self.style
    paint_style = Painting.all.map do |paint|
      paint.style
    end
    paint_style.uniq
end


end ##end of class
