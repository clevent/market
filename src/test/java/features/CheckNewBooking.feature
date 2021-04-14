Feature: check booking data of new user

  Background:
    * def bookUrl = 'http://127.0.0.1:8900/booking'
    * def headers = { Accept : 'application/json', Content-Type : 'application/json' }
    * def ext = read('classpath:customdata.csv')
    * def lastId = ext[0].id

  Scenario: id check
    Given url bookUrl
    And param id = lastId
    And param date = ''
    When method GET
    Then status 200
    And print response
    * match response[0].idUser == lastId
    * print '********* PASS **********'



