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

  def self.all_cities
    Gallery.all.map {|gallery|
      gallery.city
    }.uniq
  end

  def get_artists
    Painting.all.select {|painting|
      painting.gallery == self
    }
  end

  def get_artists_name
    get_artists.map {|artist|
      artist.artist.name
    }
  end

  def get_total_years
    get_artists.inject(0) {|sum, artist|
      sum + artist.artist.years_active
    }
  end

end #end class
