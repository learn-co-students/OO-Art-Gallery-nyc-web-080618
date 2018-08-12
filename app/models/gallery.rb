class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def self.cities #iterates through self, returns array of cities (.uniq)
    self.all.map do |gallery|
      gallery.city
    end.uniq
  end

  def paintings
    Painting.all.select do |painting|
      painting.gallery == self
    end
  end


  def artists  #iterates through Paintings, returns artists at gallery
    self.paintings.map do |painting|
      painting.artist
    end
  end

  def artist_names #iterates through #artists, maps names
    self.artists.map do |artist|
      artist.name
    end
  end

  def combined_years_of_experience #iterates through #artists, set amt of artists, totals @years_active, finds average
    years = self.artists.map do |artist|
      artist.years_active
    end
    total = 0
    years.each do |year|
      total += year
    end
    total  
  end


end #END CLASS
