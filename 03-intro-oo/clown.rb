require 'pry'

# clown_joke = "Why don't sharks eat clowns? They taste funny."
# clown_names = [ "Bluster", "Flaky", "Raspy", "Floppy", "Krusty", "Baby" ]
#
# clown1 = { name: "Bluster", age: 40, skill: "juggling", fear: "red noses" }
# clown2 = { name: "Flaky", age: 32, skills: "pie throwing", fears: "children" }
# clown3 = { name: "Raspy", age: 24, skill: "haunting your dreams", fear: "other clowns" }
# clown4 = { name: "Floppy", clown_age: 76, skill: "falling down", fear: "stairs" }
# clown5 = { name: "Krusty", age: 39, skill: "giving a creepy smile", fear: "parties" }
# clown6 = { name: "Baby", age: 19, skills: "eating a lot of food", fear: "birds" }
#
# clowns = [ clown1, clown2, clown3, clown4, clown5, clown6 ]
#
#
# def introduce_yourself(name, skill)
#   "Hi, my name is #{name} and I love #{skill}!"
# end




class Clown
  attr_accessor :name, :age, :skill, :fear

  def initialize(name, age, skill, fear)
    @name = name
    @age = age
    @skill = skill
    @fear = fear
  end

  def say_hi
    "Hi, my name is #{@name} and I love #{@skill}!"
  end

  def perform_skill
    "I AM NOW #{@skill}!!!"
  end
end




clown1 = Clown.new("Bluster", 40, "juggling", "red noses")
clown2 = Clown.new("Flaky", 32, "pie throwing", "children")
clown3 = Clown.new("Raspy", 24, "haunting your dreams","other clowns")
clown4 = Clown.new("Floppy", 76, "falling down","stairs")
clown5 = Clown.new("Krusty", 39, "giving a creepy smile","parties")
clown6 = Clown.new("Baby", 19, "eating a lot of food","birds")

clowns = [ clown1, clown2, clown3, clown4, clown5, clown6 ]


# I want a new array of clowns that are over 30 years old
older_clowns = clowns.select do |clown|
  clown.age > 30
end















binding.pry

0
