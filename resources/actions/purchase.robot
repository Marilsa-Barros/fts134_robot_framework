*** Settings ***
Documentation    Mapeamento das acoes da pagina de pagamento

*** Keywords ***
Preencher nome "${nome}"
    input text  id = inputName  ${nome}

Preencher endereco "${endereco}"
    input text  id = address  ${endereco}

Preencher cidade "${cidade}"
    input text  id = city   ${cidade}

Preencher uf "${uf}"
    input text  id = state   ${uf}

Preencher CEP "${cep}"
    input text  id = zipCode  ${cep}

Selecionar bandeira "${bandeira}"
    select from list by label   id = cardType   ${bandeira}

Preencher mes de validade do cartao "${num_cartao}"
    input text  id = creditCardNumber   ${num_cartao}

Preencher mes de validade do cartao "${mes}"
    input text  id = creditCardMonth ${mes}

Preencher ano de validade do cartao "${ano}"
    input text  id = creditCardYear ${ano}

Preencher nome do cartao "${titular}"
    input text  id = nameOnCard ${titular}

Clicar em lembrar de mim
    checkbox should be selected     id = rememberMe