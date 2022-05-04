
Feature: Crear usuario

  Background: Definir Data
    * url apiUrl
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

    * def name = __gatling.name
    * def gender = __gatling.gender
    * def status = __gatling.status

  Scenario: Inscribir un usuario
    * def email = "testkarate_" + randomNumber +"@test.com"
    * print 'email enviado2 ---> ' + email


    Given path 'users'
    And request {"name":#(name),"gender": #(gender),"email":#(email),"status":#(status)}
    When method Post
    Then status 201
    And match response.status == 'active'





