@wip
Feature: User Controller Tests

  Background:
    * def userUrl = 'http://127.0.0.1:8900/user'
    * def headers = { Accept : 'application/json', Content-Type : 'application/json' }
    #    this is an other option for create single user 'Jose'
    #    * def newUser = ' { "email" : "jose@west.com",  "name" : " Jose" } '

  Scenario: check database that how many users we have at the beginning
    Given url userUrl
    And path "/all"
    When method get
    And print response
    Then status 200

  Scenario: Call new user info from another feature file and verify results
    #    this is a option for using CSV file for new user(s)
    #   * def myres = call read('SimpleUser.feature')

    * def myres = call read('NewUser.feature')
    * def response = myres.response
    * def lastId = myres.response.id

    Given url userUrl
    And param id = lastId
    When method get
    Then status 200
    And print response.email
    And print response.name
    And print lastId





