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

  # Returns an `array` of all paintings in a gallery
  def paintings
    Painting.all.select {|painting| painting.gallery == self}
  end

  # Returns an `array` of all artists that have a painting in a gallery
  def artists
    paintings.map {|pt| pt.artist}
  end

  # Returns an `array` of the names of all artists that have a painting in a gallery
  def artist_names
    artists.map {|a| a.name}
  end

  # Returns an `instance` of the most expensive painting in a gallery
  def most_expensive_painting
    paintings.max {|pt| pt.price}
    # Returns the entire painting object of the most expensive painting

    # paintings.map {|pt| pt.price}.max
    # Returns the price of the most expensive painting
  end
end
