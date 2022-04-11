
Feature: Crear usuario 

Background: Definir Data
    * url apiUrl
    * def usuarioRequestBody = read('classpath:PostmanApp/jsonData/CreateUser.json')


Scenario Outline: Inscribir un cliente
    * def name = "<name>"
    * def email = "<email>"
    * def status = "<status>"
    Given path 'users'
    And request usuarioRequestBody    
    When method Post 
    Then status 201
    And match response.status == 'active'
    * def idUser = response.id
    And match response ==
   """
    {
    "id": '#number',
    "name":  "#string",
    "email": "#string",
    "gender": "#string",
    "status": "#string"
     }
    """




    Examples:
    | name               | email                   | status   |
    | david munoz Mazo   | david.munozm13@test.com | active   |

