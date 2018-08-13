class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end # initialize

  def self.all
    @@all
  end # self.all

  def self.cities
    @@all.map do |gallery|
      gallery.city
    end.uniq # all.map
  end # self.cities

  def self.paintings_by_gallery(gallery_instance)
    Painting.all.select do |painting|
      painting.gallery == gallery_instance
    end # Painting.all.select
  end # self.paintings

  def self.artists_by_gallery(gallery_instance)
    paintings_by_gallery(gallery_instance).map do |painting|
      painting.artist
    end.uniq # paintings_by_gallery.map
  end # self.artists_by_city

  def self.years_experience_by_gallery(gallery_instance)
    total_years_experience = 0
    paintings_by_gallery(gallery_instance).each do |painting|
      total_years_experience += painting.artist.years_active
    end # paintings_by_gallery.each
    total_years_experience
  end # self.years_experience_by_gallery

end # class Gallery
