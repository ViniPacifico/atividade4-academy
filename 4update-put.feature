Feature:Atualizar um usuário
    Como uma pessoa qualquer
    Desejo atualizar as informações de determinado usuário
    Para ter o registro de suas informações atualizadas

    Background: Url
        Given url baseUrl
        And path "users"

    Scenario: Cadatrar usuário
        And path idPut
        And request reqPut
        When method put
        Then status 200