
Feature: Crear usuario

  Background: Definir Data
    * url apiUrl
      #* def dataGenerator = Java.type( 'goRest.helpers.DataGenerator' )

    * def random_number =
    """
        function(s){
          var text ="";
          var pattern = "1234567890";

          for(var i=0; i<s; i++)
            text += pattern.charAt(Math.floor(Math.random() * pattern.length()));
            return text;
         }
    """
    * def randomNumber = random_number(5)
    * def sleep = function(ms){java.lang.Thread.sleep(ms) }
    * def pause = karate.get('__gatling.pause', sleep)

  Scenario Outline: Inscribir un usuario
  #* def randomEmail = dataGenerator.getRandomEmail();

    * def email = "testkarate_" + randomNumber +"@test.com"
    * print 'email enviado2 ---> ' + email

    Given path 'users'
    And request {"name":<name>,"gender": "<gender>","email":#(email),"status":<status>}
    When method Post
    Then status 201
    And match response.status == 'active'


    * def idUser = response.id
    * print 'id response ---> ' + idUser

   * pause(5000)

    Given path 'users/' + idUser
    When method Get
    Then status 200

    Examples:
      | read('data/users.csv')  |


