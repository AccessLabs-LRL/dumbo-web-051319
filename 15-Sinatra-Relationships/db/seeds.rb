Student.destroy_all
Blessing.destroy_all

students = ["Avitosh Totaram", "Carla Stickler", "Chloe Liu", "Daniela Sandoval", "Danielle O'Neill", "Duong Nguyen",
"Fanqiang Meng", "Hannah Ajayi", "Joe Jamsky", "Joseph G Syverson", "Joshua Suskin",
"Kenton Archer", "Kevin Wang", "Lorena Ramirez-Lopez", "Otha Hernandez", "Rachel Rath",
"Stefanos Ugbit", "Tanuka Das", "Tess Neau", "Tom MacLean", "Toni Lamont", "Yonas Fesehatsion", "Gregory Dwyer", "Eric Kim"]

students.shuffle.each do |student_name|
  Student.create(name: student_name, age: rand(18), slogan: Faker::Quote.famous_last_words)
end

yoon = Student.find_by(name: "Duong Nguyen")
daniela = Student.find_by(name: "Daniela Sandoval")
joe = Student.find_by(name: "Joe Jamsky")
kevin = Student.find_by(name: "Kevin Wang")

Blessing.create(name: "Instructor", rating: 5, student_id: yoon.id)
Blessing.create(name: "I woke up this morning", rating: 5, student: daniela)
joe.blessings.create(name: "Health", rating: 5)
kevin.blessings << Blessing.new(name: "Coffee", rating: 4)













# 
