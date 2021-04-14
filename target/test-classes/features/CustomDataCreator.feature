
  Feature: create new custom data file using Java class

    Scenario: call Java method

      * def myRes = call read('NewUser.feature')
      * def name = myRes.response.name
      * def email = myRes.response.email
      * def id = myRes.response.id

      * def javaDemo = Java.type('utilities.CustomDataFileCreator')
      * def result = new javaDemo().fileGen(name,email,id)

      * print 'new customdata.csv file created/updated under project'
