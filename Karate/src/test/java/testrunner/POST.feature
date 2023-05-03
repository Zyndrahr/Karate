Feature: POST API


  Scenario: POST API
  
    Given url 'https://reqres.in/api/users'
    And request { "name": "Raghav", "job": "leader"}
    When method POST
    Then status 201
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies
    
    
    # With Background and Path
  Scenario: POST_WITH_BACKGROUND
    
    Given url 'https://reqres.in'
    And path '/api/users'
    And request { "name": "Raghav", "job": "leader"}
    When method POST
    Then status 201
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies
    
    
    
   # Post with response assertion
  Scenario: RESPONSE ASSERTION
  
    Given url 'https://reqres.in'
    And path '/api/users'
    And request { "name": "Raghav", "job": "leader"}
    When method POST
    Then status 201
    And match response == {"name": "Raghav", "job": "leader","id": "#string","createdAt": "#ignore"}
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies
    
    
  # Post with response matching from file
  Scenario: RESPONSE FROM FILE
  
  * def expectedOutput = read('response.json')
  
    Given url 'https://reqres.in'
    And path '/api/users'
    And request { "name": "Raghav", "job": "leader"}
    When method POST
    Then status 201
    And match response == expectedOutput
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies
    
  # Read body data from file
  Scenario: REQUEST FROM FILE
  
    Given url 'https://reqres.in'
    And path '/api/users'
    And def requestBody = read('request.json')
    And request requestBody
    When method POST
    Then status 201
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies
    
    
    # Read body data from file and change request values
  Scenario: POST SPECIFIC DATA
  
    Given url 'https://reqres.in'
    And path '/api/users'
    And def requestBody = read('request.json')
    And request requestBody
    And set requestBody.job = 'engineer'
    When method POST
    Then status 201
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies
    
    
    
    
    
    