class Animal
  attr_accessor :name, :emotion

  def initialize(name)
    @name = name
    @emotion = "nervious"
  end

  def eat(food)
    p "YUM! I'm eating #{food}!"
  end

  def sleep
    "😴"
  end

  def poop
    p "💩"
  end
end
