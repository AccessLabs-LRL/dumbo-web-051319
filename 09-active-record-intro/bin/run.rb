require_relative "../config/environment"

puts "hello, welcome to my POKEMON APP!!!"
puts "Lets make you a pokemon...."
puts "what is your pokemon's name?"
pokemon_name = gets.chomp

puts "cool, thanks. what is your pokemon's poke type?"
pokemon_type = gets.chomp

puts "ok, one more thing, what is their attack?"
attack = gets.chomp

new_pokemon = Pokemon.create(name: pokemon_name, poke_type: pokemon_type, attack: attack, fainted: false)


puts "GREAT!! Congrats on your new pokemon, #{new_pokemon.name}!!"
puts ""
puts ""
sleep 3
puts `clear`
puts "also........... here are all of the pokemon that you already have:"

Pokemon.all.each do |pokemon|
  puts "#{pokemon.name} - type: #{pokemon.poke_type} - attack: #{pokemon.attack}"
end

sleep 4
puts `clear`
puts "on no...... our pokemon broke free and started to whoop on us!"
Pokemon.all.each do |pokemon|
  puts pokemon.fight
end
