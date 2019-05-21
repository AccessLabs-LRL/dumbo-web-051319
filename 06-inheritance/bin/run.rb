require 'pry'

require_relative '../lib/set_on_fire'
require_relative '../lib/fly'
require_relative '../lib/animal'
require_relative '../lib/mammal'
require_relative '../lib/raptor'
require_relative '../lib/gorilla'
require_relative '../lib/pegasus'
require_relative '../lib/human'

# List out some animals

# # Cheeta
# - run
# - kill
# - sleep
# - eat
# - poop
# - climb
# - roar

# # Raptor
# - roar
# - run
# - kill
# - sleep
# - poop
# - fly
# - play_basketball

# # Gorilla
# - sleep
# - poop
# - climb
# - eat
# - peel_banana

# # Penguin
# - march
# - eat
# - poop
# - sleep
# - swim
# - love
# - waddle

# # Pegasus
# - fly
# - eat
# - sleep
# - battle
# - gallup
# - be_glorious

# # Human
# - code
# - poop
# - eat
# - sleep
# - create_fire

gina = Raptor.new("Gina")
kong = Gorilla.new("Kong", 1000)
frank = Pegasus.new("Frankie")
kevin = Human.new("Kev")

binding.pry

puts "done!"
