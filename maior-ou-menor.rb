puts "Bem vindo ao jogo da adivinhação!!"
puts "Qual é o seu nome?"
nome = gets
puts "\n\n\nComeçaremos o jogo para você, " + nome
puts "\n\nEscolhendo um número secreto entre 0 e 200..."
numero_secreto = 175
puts "\nEscolhido... que tal adivinhar o número secreto?"
numero_tentativas = 5

for tentativa in 1..5
    puts "\n\n\nTentativa "+tentativa.to_s+"/"+numero_tentativas.to_s
    puts "\nEntre com o número:"
    chute = gets
    puts "\nSerá que acertou? Você informou: " +chute

    acertou = numero_secreto == chute.to_i

    if acertou
        puts "Acertou!"
        break
    else
        maior = numero_secreto > chute.to_i
        if maior
            puts "O número secreto é maior!"
        else
            puts "O número secreto é menor!"
        end
    end
end