
Feature: positive and negative scenarios for User and Book methods

  Background:
    * def userUrl = 'http://127.0.0.1:8900/user'
    * def bookUrl = 'http://127.0.0.1:8900/booking'

    Scenario Outline: GET user info

      Given url userUrl
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'
      And param id = '<userId>'
      When method get
      Then status 404
      And print response
      Examples:
        | userId          |
        |pepe@pepe.pe1-0.1|
        | aabbcc          |
        |  123            |
      # this empty data is optional for another negatif scenario
      # |                 |

  Scenario Outline: GET booking info

    Given url bookUrl
    And header Accept = 'application/json'
    And header Content-Type = 'application/json'
    And param id = '<id>'
    And param date = '<date>'
    When method get
    Then status 200
    And print response
    Examples:
      | id                 | date       |
      | pepe@pepe.pe1-0.1  |            |
      |                    | 2020-12-12 |
      |  aaa               | 2020-10-10 |
      |  123               | 2020-05-05 |
     # this empty data is optional for another negatif scenario
     #|                    |            |
