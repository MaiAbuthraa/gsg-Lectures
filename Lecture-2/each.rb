#In this example, the each method iterates over every color in the colors array and prints it to the console.

colors = ["red", "blue", "green", "yellow"]

colors.each { |color| puts color }
#Output
#red
#blue
#green
#yellow

#When iterating over hashes, two placeholder variables are needed to represent each key/value pair.

polygons = {
  "pentagon" => 5,
  "hexagon" => 6,
  "nonagon" => 9
}

polygons.each do |shape, sides|
  puts "A #{shape} has #{sides} sides."
end
#Output
#A pentagon has 5 sides.
#A hexagon has 6 sides.
#A nonagon has 9 sides.
