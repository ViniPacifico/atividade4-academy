Feature: Criar usuario
    Como usuario uma pessoa qualquer
    Desejo registrar informações de usuario
    Para poder manipular esta informações livramente 

Background: Base Url
    Given url baseUrl
    And path "users" 

Scenario: Criar um novo usuario
    Given request {name:"Perigoman", email:"perigoman@gmail.com"}
    When method post 
    Then status 201
    * def ceuBlack = response.id
    * def gatoCinza = call read("hook.feature@delete")
#criar usuario com nome e email (criterio 1)

Scenario: Criar usuario com email invalido  
    Given request {name:"Perigoman", email:"perigomangmail.com"}
    When method post
    Then status 400
#criar usuario com email invalido (criterio 2)

Scenario: Criar um usuario com email já existente 
    * def payload = call read("hook.feature@registrar")
    Given request {name:"Perigoman", email:"perigoman@gmail.com"}
    When method post
    Then status 422
    And match response contains {error: "User already exists."}
    * def ceuBlack = id.response.id
    * def ceuBlack2 = call read("hook.feature@delete")
#criar um usuario com email já existente e com a respota da mensagem (Criterio 3 e 4)

Scenario: Nome com mais de 100 caracteres
    Given request {name:"PerigomanPerigomanPerigomanPerigomanPerigomanPerigomanPerigomanPerigomanPerigomanPerigomanPerigomanPerigomanPerigomanPerigomanPerigomanPerigomanPerigoman", email:"perigoman@gmail.com"}
    When method post
    Then status 400
#erro em criar usuario com name mais de 100 caracteres (criterio 5)

Scenario: Email com mais de 60 caracteres 
    Given request {name:"Perigoman", email:"perigoman@gmail.comperigoman@gmail.comperigoman@gmail.comperigoman@gmail.comperigoman@gmail.com"}
    When method post
    Then status 400
#erro em criar usuario com email mais de 60 caracteres (criterio 6)

    


