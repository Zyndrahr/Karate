Feature: PUT API


  Scenario: PUT API
  
    Given url 'https://reqres.in/api/register'
    And request {"email":"eve.holt@reqres.in","password":"pistol"}
    When method put
    Then status 200
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies
    
    
    # With Background and Path
  Scenario: PUT_WITH_BACKGROUND
    
    Given url 'https://reqres.in'
    And path '/api/register'
    And request {"email":"eve.holt@reqres.in","password":"pistol"}
     When method put
    Then status 200
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies
    
    
    
   # Post with response assertion
  Scenario: RESPONSE ASSERTION
  
    Given url 'https://reqres.in'
    And path '/api/register'
    And request {"email":"eve.holt@reqres.in","password":"pistol"}
    When method PUT
    Then status 200
    And match response == {"email":"eve.holt@reqres.in","password":"pistol"}
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies
    
    
  # Post with response matching from file
  Scenario: RESPONSE FROM FILE
  
  * def expectedOutput = read('putresponse.json')
  
    Given url 'https://reqres.in'
    And path '/api/register'
    And request {"email":"eve.holt@reqres.in","password":"pistol"}
    When method PUT
    Then status 200
    And match response == expectedOutput
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies
    
  # Read body data from file
  Scenario: REQUEST FROM FILE
  
    Given url 'https://reqres.in'
    And path '/api/register'
    And def requestBody = read('putrequest.json')
    And request requestBody
    When method PUT
    Then status 200
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies
    
    
    # Read body data from file and change request values
  Scenario: PUT SPECIFIC DATA
  
    Given url 'https://reqres.in'
    And path '/api/register'
    And def requestBody = read('putrequest.json')
    And request requestBody
    And set requestBody.password = 'engineer'
    When method PUT
    Then status 200
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies
    
    
    
    
    
    