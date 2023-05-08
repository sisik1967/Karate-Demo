@postRequestFeature
Feature: Post Request

  Background:
    * def tokenResponse = callonce read('classpath:callers/conduit/token.feature@login') {"email":#(userEmail),"password":#(userPassword)}
    * def authToken = tokenResponse.token
    Given header Authorization = 'Token ' + authToken
    Given url baseUrl
    And path 'articles'
    * def requestJson = read('classpath:datas/conduit/createArticleRequest.json')
    * def responseJson =  read('classpath:datas/conduit/createArticleResponse.json')




  @smoke
  Scenario: Post request
    * set requestJson.article.title = 'test title568'
    * set requestJson.article.description = 'Test Automation'
    * set requestJson.article.body = 'test body'
    * set requestJson.article.tagList = null
    And request requestJson
    When method POST
    And status 200
    * print  response
    And match response.article.title == responseJson.article.title

