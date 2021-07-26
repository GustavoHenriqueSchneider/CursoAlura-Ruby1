def da_boas_vindas
    puts "Bem vindo ao jogo da adivinhação!!"
    puts "Qual é o seu nome?"
    nome = gets.strip
    puts "\n\n\nComeçaremos o jogo para você, #{nome}"
    nome
end

def pede_dificuldade
    puts "Qual nivel de dificuldade que deseja?"
    puts "(1) Muito fácil (2) Fácil (3) Normal (4) Dificil (5) Muito dificil"
    gets.strip.to_i
end

def sorteia_numero_secreto(dificuldade)
    case dificuldade
    when 1
        maximo = 30
    when 2
        maximo = 60
    when 3
        maximo = 60
    when 4
        maximo = 60
    else
        maximo = 200
    end
    puts "\n\nEscolhendo um número secreto entre 1 e #{maximo}..."
    sorteado = rand(maximo) + 1
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
    return false
end

def joga(nome, dificuldade)
    numero_secreto = sorteia_numero_secreto dificuldade

    pontos_ate_agora = 1000
    limite_de_tentativas = 5
    chutes = []
    acertou = true
    
    (1..limite_de_tentativas).each do |tentativa|
        chute = pede_um_numero tentativa, limite_de_tentativas, chutes
        chutes << chute
            
        if nome == 'Gustavo'
            puts "Acertou!"
            break
        end
    
        pontos_a_perder = (chute - numero_secreto).abs / 2.0
        pontos_ate_agora -= pontos_a_perder
        acertou = verifica_se_acertou numero_secreto, chute
        break if acertou
    end
    
    puts "\n\nO número secreto era: #{numero_secreto}" if acertou == false
    puts "Você ganhou #{pontos_ate_agora} pontos."
end

def nao_quer_jogar?
    puts "Deseja jogar novamente? (S/N)"
    quero_jogar = gets.strip
    if quero_jogar.upcase == "N"
        return true
    end
    false
end


nome = da_boas_vindas

loop do
    dificuldade = pede_dificuldade
    joga nome, dificuldade
    if nao_quer_jogar?
        break
    end
end