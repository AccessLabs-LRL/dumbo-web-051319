class Pegasus < Animal
  include FlyAble
  include SetOnFireAble
  def initialize(name)
    super(name)
    @emotion = "glorious"
  end

  def battle
    "I'm going to fight you with 🤗s!!"
  end

  def gallup
    "🦄 is running!"
  end
end
