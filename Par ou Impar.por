programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    inteiro num, numComp, soma, resto
    caracter parImpar

    escreva("Este � um jogo de Par ou Impar contra o computador. \n")
    escreva("Se voc� deseja �mpar, digite (I). se deseja par, digite (P). \n")
    leia(parImpar)

    se(parImpar == 'I')
      {
        escreva("Voc� escolheu �mpar. Boa sorte! \n")
      }
    senao se(parImpar == 'P')
      {
        escreva("Voc� escolheu par. Boa sorte! \n")
      }
    escreva("Agora escolha um n�mero de 1 a 5. \n")
    leia(num)

    se(num <= 5)
      {
        numComp = u.sorteia(1,5)
        escreva("O computador jogou: ", numComp, ".\n")
        soma = num + numComp
        resto = soma % 2
        se((resto == 0)e(parImpar == 'P'))
          {
            escreva("Voc� escolheu par, com o valor: ", num, ", e o computador jogou �mpar, com o valor: ", numComp, ". Voc� venceu! \nA soma foi ", soma,".\n")
          }
        senao se((resto == 1)e(parImpar == 'I'))
          {
            escreva("Voc� escolheu �mpar, com o valor: ", num, ", e o computador jogou par, com o valor: ", numComp, ". Voc� venceu! \nA soma foi ", soma,".\n")
          }
        senao
          {
            escreva("Voc� perdeu!")
          }
          
      }
    
  }
}
