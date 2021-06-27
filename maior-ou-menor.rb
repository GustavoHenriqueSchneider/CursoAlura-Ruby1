def da_boas_vindas
    puts "Bem vindo ao jogo da adivinhação!!"
    puts "Qual é o seu nome?"
    nome = gets
    puts "\n\n\nComeçaremos o jogo para você, " + nome
end

def sorteia_numero_secreto
    puts "\n\nEscolhendo um número secreto entre 0 e 200..."
    sorteado = 175
    puts "\nEscolhido... que tal adivinhar o número secreto?"
    sorteado
end

def pede_um_numero(tentativa, limite_de_tentativas)
    puts "\n\n\nTentativa "+tentativa.to_s+"/"+limite_de_tentativas.to_s
    puts "\nEntre com o número:"
    chute = gets
    puts "\nSerá que acertou? Você informou: " +chute
    chute.to_i
end

def verifica_se_acertou(numero_secreto, chute)
    acertou = numero_secreto == chute

    if acertou
        puts "Acertou!"
        return true
    end

    maior = numero_secreto > chute
    if maior
        puts "O número secreto é maior!"
    else
         puts "O número secreto é menor!"
    end
    false
end

da_boas_vindas
numero_secreto = sorteia_numero_secreto

limite_de_tentativas = 5

(1..limite_de_tentativas).each do |tentativa|
    chute = pede_um_numero tentativa, limite_de_tentativas

    break if verifica_se_acertou numero_secreto, chute
end