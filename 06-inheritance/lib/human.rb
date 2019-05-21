class Human < Mammal
  include SetOnFireAble
  def code
    "💻"
  end

  def create_fire
    "I HAVE MADE 🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥!!!!"
  end

  def sleep
    "I'm dead... i'm going to cras in my bed...#{super}"
  end
end
