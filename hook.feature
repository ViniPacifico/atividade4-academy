feature: Hooks

    @registrar
    Scenario: Registrar novo usuario   
        * def payload = { name "Perigoman", email: "perigoman@gmail.com"}
        Given baseUrl
        And path "users"
        And request playload    
        When method post
        Then status 201 
    
    @delete
    Scenario: Remover um usuario
        Given url baseUrl
        And path "users" 
        And path userId
        When method delete

    

    