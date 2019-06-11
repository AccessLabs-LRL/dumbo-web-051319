students = ["Avitosh Totaram", "Carla Stickler", "Chloe Liu", "Daniela Sandoval", "Danielle O'Neill", "Duong Nguyen",
"Fanqiang Meng", "Hannah Ajayi", "Joe Jamsky", "Joseph G Syverson", "Joshua Suskin",
"Kenton Archer", "Kevin Wang", "Lorena Ramirez-Lopez", "Otha Hernandez", "Rachel Rath",
"Stefanos Ugbit", "Tanuka Das", "Tess Neau", "Tom MacLean", "Toni Lamont", "Yonas Fesehatsion", "Gregory Dwyer", "Eric Kim", "Mazen Al Swar"]

students.shuffle.each do |student_name|
  Student.create(name: student_name, age: rand(18), favorite_food: Faker::Food.dish)
end

form_for = Lab.create(name: "Rails Form_for")
hashketball = Lab.create(name: "Hashketball")
associations = Lab.create(name: "AR Associations")
cheese = Lab.create(name: "How to make Cruddy Cheese")
wtf = Lab.create(name: "CRUD RESTful MVC IRB HAX0rZ LOL")

kenton = Student.find_by(name: "Kenton Archer")
danielle = Student.find_by(name: "Danielle O'Neill")

StudentLab.create(student_id: kenton.id, lab_id: wtf.id, done: true)
StudentLab.create(student_id: danielle.id, lab_id: cheese.id, done: true)
