require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'


player1 = Player.new('José')
player2 = Player.new('Josiane')

player1.default_show_state
player2.default_show_state

puts "Are you reeeeeady ??? Fiiiiiiight !!!"
puts '***********************************************'
puts "#{player1.name} qui attaque #{player2.name} !"
player1.attacks(player2)
puts "#{player2.name} contre-attaque !"
player2.attacks(player1)

while player1.life_points >= 0 || player2.life_points >= 0
  break if player1.life_points <= 0 || player2.life_points <= 0

  puts '***********************************************'
  puts "Et c'est au tour de #{player1.name} d'attaquer #{player2.name}"
  player1.attacks(player2)
  break if player1.life_points <= 0 || player2.life_points <= 0

  puts "C'est maintenant à #{player2.name} de riposter"
  player2.attacks(player1)

end