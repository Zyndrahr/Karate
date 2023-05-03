Feature: DELETE API

  Scenario: DELETE API
  
    Given url 'https://reqres.in/api/users/2'
    When method DELETE
    Then status 204
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies
    
    
     
# With Background and Path
  Scenario: DELETE_WITH_BACKGROUND
    
    Given url 'https://reqres.in'
    And path '/api/users/2'
    When method DELETE
    Then status 204
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies
    
 
 # With Background and Path and Params   
    Scenario: DELETE_WITH_PATH_PARAMS
  
    Given url 'https://reqres.in'
    And path '/users'
    And param id = 2
    When method DELETE
    Then status 204
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies
    
    
    