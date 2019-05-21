class Gorilla < Mammal
  def initialize(name, weight)
    super(name)
    @weight = weight
    @emotion = "curious"
  end

  def run
    "I'm RUNNIN!!!"
  end

  def climb(something)
    "I'm now going to climb #{something}!!"
  end
end
