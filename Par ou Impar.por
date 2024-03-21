programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    inteiro num, numComp, soma, resto
    caracter parImpar

    escreva("Este é um jogo de Par ou Impar contra o computador. \n")
    escreva("Se você deseja ímpar, digite (I). se deseja par, digite (P). \n")
    leia(parImpar)

    se(parImpar == 'I')
      {
        escreva("Você escolheu ímpar. Boa sorte! \n")
      }
    senao se(parImpar == 'P')
      {
        escreva("Você escolheu par. Boa sorte! \n")
      }
    escreva("Agora escolha um número de 1 a 5. \n")
    leia(num)

    se(num <= 5)
      {
        numComp = u.sorteia(1,5)
        escreva("O computador jogou: ", numComp, ".\n")
        soma = num + numComp
        resto = soma % 2
        se((resto == 0)e(parImpar == 'P'))
          {
            escreva("Você escolheu par, com o valor: ", num, ", e o computador jogou ímpar, com o valor: ", numComp, ". Você venceu! \nA soma foi ", soma,".\n")
          }
        senao se((resto == 1)e(parImpar == 'I'))
          {
            escreva("Você escolheu ímpar, com o valor: ", num, ", e o computador jogou par, com o valor: ", numComp, ". Você venceu! \nA soma foi ", soma,".\n")
          }
        senao
          {
            escreva("Você perdeu!")
          }
          
      }
    
  }
}
