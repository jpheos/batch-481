require_relative 'calcul'

# on demande un nombre à l'utilisateur
#   - puts + gets.chomp (nb1)
# on demande un deuxieme nombre
#   - puts + gets.chomp (nb2)
# on lui demande un operator
#   - on lui affiche une liste d'operateurs possible
#     - puts
#   - on enregistre son choix
#     - gets.chomp
# on calcul un résultat
#   - method do_calcul(nb1:Integer, nb2:Integer, oeprator:String)
# on affiche un résultat

def do_calcul()
  puts "> Enter a first number:"
  print "> "
  nb1 = gets.chomp.to_i
  puts "> Enter a second number:"
  print "> "
  nb2 = gets.chomp.to_i
  puts "> Choose operation [+][-][*][/]"
  print "> "
  operator = gets.chomp
  result = calcul(nb1, nb2, operator)
  puts "> Result: #{result}"
end

def continue?
  puts "Do you want to calculate again? [Y/N]"
  gets.chomp.upcase == 'Y'
end

def run
  continue = true
  while continue
    do_calcul
    continue = continue?
  end
end

run
