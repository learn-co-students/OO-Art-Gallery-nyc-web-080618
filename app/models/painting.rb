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

  def self.painting_styles
    style_arr = Painting.all.select do |painting_ob|
      #binding.pry
      painting_ob.style
    end
    style_arr.map do |painting_ob|
      painting_ob.style
    end.uniq
  end








end # end of Painting Class
