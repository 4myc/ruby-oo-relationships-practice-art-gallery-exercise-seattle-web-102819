require_relative '../config/environment.rb'

picasso = Artist.new("Picasso", 70)
vangogh = Artist.new("Van Gogh", 20)
kahlo = Artist.new("Kahlo", 25)

moma = Gallery.new("MOMA", "New York City")
louvre = Gallery.new("Louvre", "Paris")
lacma = Gallery.new("LACMA", "Los Angeles")

lavie = Painting.new("La Vie", 600000, moma, picasso)
sportrait = Painting.new("Self Portrait", 800000, moma, picasso)
starry = Painting.new("Starry Night", 1000000, louvre, vangogh)
irises = Painting.new("Irises", 500000, louvre, vangogh)
portrait = Painting.new("Self Portrait", 700000, louvre, vangogh)
twofridas = Painting.new("Two Fridas", 400000, lacma, kahlo)

binding.pry

puts "Bob Ross rules."
