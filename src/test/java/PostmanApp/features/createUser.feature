
Feature: Crear usuario 

Background: Definir Data
    * url apiUrl
    * def usuarioRequestBody = read('classpath:PostmanApp/jsonData/CreateUser.json')


Scenario: Inscribir un cliente
    Given path 'users' 
    And request usuarioRequestBody    
    When method Post 
    Then status 201
    And match response.status == 'active'