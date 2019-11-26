class Artist
  attr_accessor :name, :years_exp

  @@all = []

  def initialize(name, years_exp)
    @name = name
    @years_exp = years_exp
    @@all << self
  end

  def self.all
    @@all
  end

  # Returns an `array` all the paintings by an artist
  def paintings
    Painting.all.select {|painting| painting.artist == self}
  end

  # Returns an `array` of all the galleries that an artist has paintings in
  def galleries
    paintings.map {|pt| pt.gallery}
  end

  # Return an `array` of all cities that an artist has paintings in
  def cities
    galleries.map {|g| g.city}
  end

  # Return the total years of exp of all artists
  def self.total_experience
    @@all.map {|y| y.years_exp}.sum
  end

  # Returns an `instance` of the artist with the highest amount of paintings per year of experience.
  def self.most_prolific
    @@all.min_by {|pt| pt.years_exp / pt.paintings.count} 
    # returns Van Gogh, 13 yrs per painting
    # min_by returns an array in ascending order, artist with fewest years between each painting

    # @@all.map {|pt| pt.years_exp / pt.paintings.count}
    # returns [30, 13, 40] (number of years per painting -- picasso, van gogh, kahlo)
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, gallery, self)
  end
end
