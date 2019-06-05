students = ["Avitosh Totaram", "Carla Stickler", "Chloe Liu", "Daniela Sandoval", "Danielle O'Neill", "Duong Nguyen",
"Fanqiang Meng", "Hannah Ajayi", "Joe Jamsky", "Joseph G Syverson", "Joshua Suskin",
"Kenton Archer", "Kevin Wang", "Lorena Ramirez-Lopez", "Otha Hernandez", "Rachel Rath",
"Stefanos Ugbit", "Tanuka Das", "Tess Neau", "Tom MacLean", "Toni Lamont", "Yonas Fesehatsion", "Gregory Dwyer", "Eric Kim"]

students.each do |student_name|
  Student.create(name: student_name, age: rand(18), slogan: Faker::Quote.famous_last_words)
end
