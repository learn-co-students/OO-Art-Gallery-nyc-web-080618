class Artist
 @@all =[]
  attr_reader :name

  def initialize(name, years_active)
    @name = name
    @years_active = years_active
    @@all << self
  end

  def self.all
    @@all
  end

  def


end
