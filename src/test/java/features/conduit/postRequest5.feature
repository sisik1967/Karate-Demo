@postRequestFeature
Feature: Post Request

  Background: Test Base
    Given url baseUrl

  @login
  Scenario:  login scenario
    And path 'users/login'
    And header Content-Type = 'application/json'
    When request {"user":{"email":#(email),"password":#(password)}}
    * print request.user.email
    Then method POST
    And status 200
    * print prevRequest
    #* print 'parametreden gelen email:', karate.prevRequest.user.email
    #* print 'parametreden gelen password:', karate.prevRequest.user.password
    * def token = response.user.token
    * print 'TOKEN: ', token

  @smoke
  Scenario: Post request
    And path 'articles'
    And request {"article":{"title":"test title357","description":"test","body":"karate api test","tagList":""}}
    When method POST
    And status 200
    * print  response