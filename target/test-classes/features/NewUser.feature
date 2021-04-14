
Feature: Fake user from New User Generator class

  Scenario: Create a new user with Random Data (JAVA)

    * def userUrl = 'http://127.0.0.1:8900/user'
    * def NUG = Java.type('utilities.NewUserGenerator')
    * def nugUser = NUG.createNewUser()

    Given  url userUrl
    And header Accept = 'application/json'
    And header Content-Type = 'application/json'
    And request nugUser
    When method POST
    Then status 201
    And match response.email == nugUser.email
    And match response.name == nugUser.name





