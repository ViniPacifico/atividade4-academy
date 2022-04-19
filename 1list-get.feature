Feature: Listar usuários
    Como uma pessoa qualquer
    Desejo consultar todos os usuários
    Para ter as informações 

Scenario: Todos as informações de usuários cadastrados
    Given url baseUrl
    And path "users"
    When method get
    Then status 200 
    And match response contains {id: "#string", name: "#string", email: "#string", createdAt: "#string", updatedAt: "#string"}


