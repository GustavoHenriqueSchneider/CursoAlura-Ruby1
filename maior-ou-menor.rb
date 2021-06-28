def da_boas_vindas
    puts "Bem vindo ao jogo da adivinhação!!"
    puts "Qual é o seu nome?"
    nome = gets.strip
    puts "\n\n\nComeçaremos o jogo para você, #{nome}"
end

def sorteia_numero_secreto
    puts "\n\nEscolhendo um número secreto entre 0 e 200..."
    sorteado = 175
    puts "\nEscolhido... que tal adivinhar o número secreto?"
    sorteado
end

def pede_um_numero(tentativa, limite_de_tentativas, chutes)
    puts "\n\n\nTentativa #{tentativa}/#{limite_de_tentativas}"
    puts "Você já chutou: #{chutes}" if tentativa>1
    puts "\nEntre com o número:"
    chute = gets.strip
    puts "\nSerá que acertou? Você informou: #{chute}"
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
chutes = []

(1..limite_de_tentativas).each do |tentativa|
    chute = pede_um_numero tentativa, limite_de_tentativas, chutes
    #chutes[tentativa-1] = chute
    chutes << chute
    break if verifica_se_acertou numero_secreto, chute
end