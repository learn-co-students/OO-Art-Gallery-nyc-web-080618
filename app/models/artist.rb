class Artist

  attr_reader :name, :years_active

  @@all = []

  def initialize(name, years_active)
    @name = name
    @years_active = years_active
    @@all << self
  end

  def self.all
    @@all
  end

  def get_paiting
    Painting.all.select {|painting|
      painting.artist == self
    }
  end

  def get_gallerie
    get_paiting.map { |painting|
      painting.gallery
    }
  end

  def get_cities
    get_gallerie.map {|gallery|
      gallery.city
    }
  end

  def self.get_avg_yrs
    total_yrs = self.all.inject(0) { |sum, artist| sum + artist.years_active }
    avg = total_yrs.to_f / self.all.length
  end

end #end class
