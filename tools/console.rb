require_relative '../config/environment.rb'

picasso = Artist.new("Picasso", 60)
vangogh = Artist.new("Van Gogh", 40)
kahlo = Artist.new("Kahlo", 40)

moma = Gallery.new("MOMA", "New York City")
louvre = Gallery.new("Louvre", "Paris")
lacma = Gallery.new("LACMA", "Los Angeles")

lavie = Painting.new("La Vie", 800000, moma, picasso)
sportrait = Painting.new("Self Portrait", 900000, moma, picasso)
starry = Painting.new("Starry Night", 600000, louvre, vangogh)
irises = Painting.new("Irises", 500000, louvre, vangogh)
portrait = Painting.new("Self Portrait", 800000, louvre, vangogh)
twofriedas = Painting.new("Two Friedas", 400000, lacma, kahlo)

binding.pry

puts "Bob Ross rules."
