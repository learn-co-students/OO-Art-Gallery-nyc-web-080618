class Artist

  attr_reader :name, :years_active

  @@all = [ ]

  def self.all
    @@all
  end


  def initialize(name, years_active)
    @name = name
    @years_active = years_active
    @@all << self
  end

  #all the paintings by a specific artist
  def all_paintings
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  #all the galleries that a specific artist has paintings in
  def all_galleries
    self.all_paintings.map do |painting|
      painting.gallery
    end.uniq
  end

  #all the cities that contain galleries that a specific artist has paintings in
  def all_cities
    self.all_galleries.map do |gallery|
      gallery.city
    end.uniq
  end

  #average years of experience of all artists
  def self.average_years
    total_years = 0

    Artist.all.each do |artist|
      total_years += artist.years_active
    end

    average = total_years.to_f/(Artist.all.size)

  end




end #artist class end
