@wip
  Feature: booking new flight

    Scenario Outline: create new booking for last created user

      * def bookUrl = 'http://127.0.0.1:8900/booking'
      * def headers = { Accept : 'application/json', Content-Type : 'application/json' }
      * call read('CustomDataCreator.feature')
      * def ext = read('classpath:customdata.csv')
      * def lastId = ext[0].id

      Given url bookUrl
      And request
          """
          {
          "date" : '<date>',
          "destination" : '<destination>',
          "id" : '#(lastId)' ,
          "origin" : '<origin>'
          }
          """
      When method post
      Then status 201
      And print response
      And match response.idUser == lastId
      And match response.date == '<date>'
      And match response.origin == '<origin>'
      And match response.destination == '<destination>'
      And match response contains any {"origin":"MAD","destination":"JFK" }
      Examples:
    |read('data/roundTripData.csv')  |





