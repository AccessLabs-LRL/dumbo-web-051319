class Mammal < Animal
  def initialize(name)
    super(name)
    @warm_blooded = true

  end
  def sleep
    "I'm not an emoji..."
  end
  def give_live_birth(baby_name)
    "I have given birth to a beautiful #{baby_name}"
  end
end
