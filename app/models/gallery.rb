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

  def paintings
    Painting.all.select {|painting| painting.gallery == self}
  end

  def artists
    paintings.map {|pt| pt.artist}
  end

  def artist_names
    artists.map {|a| a.name}
  end

  def most_expensive_painting
    paintings.max {|pt| pt.price}
    # Returns the entire painting object

    # paintings.map {|pt| pt.price}.max
    # Returns only the price of the most expensive painting
  end
end
