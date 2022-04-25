Feature: Consulta de Datos mediate API Mockeada

Scenario: El usuario consulta la informacion para login
Given url mockUrlData
And path 'users'
When method GET
Then status 200
* def usuarioValido = response.usuarios.usuarioNormal
* def usuarioBloqueado = response.usuarios.usuarioBloqueado
* def usuarioClave = response.clave