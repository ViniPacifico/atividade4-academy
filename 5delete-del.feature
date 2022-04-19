Feature:Remover um usuário
    Como uma pessoa qualquer
    Desejo remover um usuário
    Para que suas informações não estejam mais registradas

    Background: Url
        Given url baseUrl
        And path "users"

    Scenario:Remover um usuário
        * id gatoCinza = call read("hook.feature@registrar")
        And path registrar.response.id
        When method delete
        Then status 204

    Scenario: Não encontrar o usuario por Id
        And path java.util.UUID.randomUUID()
        When method delete
        Then status 204
    