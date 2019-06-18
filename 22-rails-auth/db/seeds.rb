# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



30.times do |num|
  chunks = ["FF", "00"]
  chunks << sprintf("%02X", rand(0...255))
  Color.create(hex: chunks.shuffle.join(""))
end

students = ["Avitosh Totaram", "Carla Stickler", "Chloe Liu", "Daniela Sandoval", "Danielle O'Neill", "Duong Nguyen",
"Fanqiang Meng", "Hannah Ajayi", "Joe Jamsky", "Joseph G Syverson", "Joshua Suskin",
"Kenton Archer", "Kevin Wang", "Lorena Ramirez-Lopez", "Otha Hernandez", "Rachel Rath",
"Stefanos Ugbit", "Tanuka Das", "Tess Neau", "Tom MacLean", "Toni Lamont", "Yonas Fesehatsion", "Gregory Dwyer", "Eric Kim", "Mazen Al Swar"]


students.shuffle.each do |student|
  User.create(name: student, username: student.split(" ")[0], password: "123")
end
