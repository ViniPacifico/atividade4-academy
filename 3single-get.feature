Feature: Encontrar usuario por Id
Como uma pessoa qualquer
Desejo consultar os dados de um usuário
Para visualizar as informações deste usuário

Background: Base Url
    Given url baseUrl
    And path "users" 

    Scenario: Encontrar um usuario por Id
        * def gatoPreto = call-read("hook.feature@registrar")
        And path registrar.response.id
        When method get 
        Then status 200
        And match response contains {id: "#registrar.response.id", name: "Perigoman", email: "perigoman@gmail.com", createdAt: "#string", updatedAt: "#string"}
        * def userId = response.id
        * def gatoCinza = call read("hook.feature@registrar")
    @igonere 
    Scenario: Retornar usuario por id não existente
        And path "users"  
        When method get 
        Then status 404




