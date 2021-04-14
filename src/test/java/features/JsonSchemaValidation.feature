Feature: JSON Schema validation

  Scenario: get single user and make validation

    * def userUrl = 'http://127.0.0.1:8900/user'
    * def headers = { Accept : 'application/json', Content-Type : 'application/json' }
    * def exp = read('data/singleSchema.json')

    Given url userUrl
    And path "/all"
    When method get
    Then status 200

    * match response == exp
    """
     {
        "email": "#string",
        "name": "#string",
        "id": "#string",
         "bookings": [
            {
                "idBooking": "#string",
                "idUser": "#string",
                "origin": "#string",
                "destination": "#string",
                "date": "#string"
            }
        ]
    }
    """
