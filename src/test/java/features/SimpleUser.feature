
  Feature: Simple user from CSV file

    Scenario Outline: Create a new user from CSV file
    * def userUrl = 'http://127.0.0.1:8900/user'

    Given  url userUrl
    And header Accept = 'application/json'
    And header Content-Type = 'application/json'
    And request
    """
    {
    "email" : '<email>',
    "name" : '<name>'
    }
    """
    When method POST
    Then status 201
    And print response.email
    And match response.email == '<email>'
    And print response.name
    And match response.name == '<name>'


    Examples:
    |read('data/newUser.csv')|