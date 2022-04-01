
Feature: Crear usuario 


Scenario: Crear una cuenta desde el sign up del cliente
    Given url 'https://postman-echo.com/post'
    And request
    """
    {
	"nombre": "Fran",
	"apellido": "García",
	"edad": 42
    }
     """
    When method Post 
    Then status 200