@postRequestFeature
Feature: Post Request

  @smoke
  Scenario: Post request
    Given url baseUrl
    * def tokenResponse = call read('classpath:callers/conduit/token.feature@login') {"email":#(userEmail),"password":#(userPassword)}
    * def authToken = tokenResponse.token
    Given header Authorization = 'Token ' + authToken
    And path 'articles'
    And request {"article":{"title":"test title402","description":"test","body":"karate api test","tagList":""}}
    When method POST
    And status 200
    * print  response