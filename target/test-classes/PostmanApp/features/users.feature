
Feature: Consultar todo los usuarios

Background: Definir Data
    * url apiUrl



Scenario: Buscar la cantidad de usuarios
    Given path 'users'
    Given params {page:2}
    When method Get
    Then status 200
    And match response.[*].status contains 'active'
    And match response.[0].id == 3020
    And match response.[0].id == '#number'
    And match response.[0].status == '#string'
    And match each response.[*] ==
    """
    {
    "id": '#number',
    "name":  "#string",
    "email": "#string",
    "gender": "#string",
    "status": "#string"
     }
    """





