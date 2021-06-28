puts 175 == 175
puts 175 == 174
puts "175" == 175
puts "175" == "175"
puts "175".to_i == 175

##################
puts 175 != 174
puts 175 != 175
puts 175 > 174
puts 175 >= 175
puts 175 < 176
puts 175 <= 175

for dedos in 1..3
    puts "Contando " + dedos.to_s
    puts "Contando #{dedos}"
end

##################
chutes = []

tentativa = 1
chutes[tentativa-1]=176
puts chutes[0] 

tentativa = 2
chutes[tentativa-1]=200
puts chutes[1] 

tentativa = 3
chutes[tentativa-1]=23
puts chutes[2] 

chute = 534
chutes << chute
puts chutes[chutes.size-1]

chute = 1000
chutes << chute

(0..(chutes.size-1)).each do |tentativa|
    puts "Chutes: #{chutes[tentativa]}"
end

#nome = gets.strip
nome = " Gustavo ".strip
puts "#{nome} tem #{nome.size} caracteres"
