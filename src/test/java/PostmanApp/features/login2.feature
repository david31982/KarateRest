
Feature: Login 


Scenario: Crear una cuenta desde el sign up del cliente
    Given url 'https://giphy.com/api/v1/users/login/'
    And form field email = 'david31982@hotmail.com'
    And form field password = 'Novaventa0222'
    When method Post 
    Then status 200

