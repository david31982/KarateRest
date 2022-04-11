Feature: Actualizar usuario

  Background: Definir Data
    * url apiUrl
    * def getIdUser = call read('classpath:PostmanApp/features/createUser.feature')
    * def idUser = getIdUser.idUser
  Scenario Outline: Buscar la cantidad de usuarios
    * def name = "<name>"
    * def email = "<email>"
    * def status = "<status>"
    Given path 'users/' + idUser
    When method Patch
    Then status 200

    Examples:
      | name           | email                  | status     |
      | david pruebas2 | david.munozm3@test.com | inactive   |

