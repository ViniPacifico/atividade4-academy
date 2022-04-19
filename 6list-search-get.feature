Feature: Pesquisar usuario
    Como uma pessoa qualquer
    Desejo pesquisar usuario por nome ou email 
    Para ser capaz de encontrar usuario cadastrado facilmente

Scenario: Pesquisar usuario
    Given url baseUrl 
    And path "search"
    And param value = "Perigoman"
    When method get 
    Then status 200
    And match response == "#array"
    And match response contains {id: "#string", name: "#string", email: "#string", createdAt: "#string", updatedAt: "#string"}