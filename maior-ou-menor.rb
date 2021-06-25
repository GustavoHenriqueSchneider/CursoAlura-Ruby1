puts "Bem vindo ao jogo da adivinhação!!"
puts "Qual é o seu nome?"
nome = gets
puts "\n\n\n Começaremos o jogo para você, " + nome
puts "\n\nEscolhendo um número secreto entre 0 e 200..."
numero_secreto = 175
puts "\nEscolhido... que tal adivinhar o número secreto?"
puts "\n\n\nTentativa 1\nEntre com o número:"
chute = gets
puts "\nSerá que acertou? Você informou: " +chute
puts chute.to_i == numero_secreto
