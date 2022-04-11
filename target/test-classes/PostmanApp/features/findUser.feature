
Feature: Buscar usuario

  Background: Definir Data
    * url apiUrl
    * def getIdUser = call read('classpath:PostmanApp/features/createUser.feature')
    * def idUser = getIdUser.idUser
  Scenario: Buscar el usuario creado
    Given path 'users/' + idUser
    When method Get
    Then status 200





