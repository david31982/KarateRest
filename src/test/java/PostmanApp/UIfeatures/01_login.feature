@TestUI
Feature: El usuario realiza la busqueda de

Background:
  * def t = 100
  * def sleep = function(millis){ java.lang.Thread.sleep(millis) }
  * def dataCredentials = call read('classpath:PostmanApp/UIfeatures/99_consultaData.feature')
  # Setup Navegador
  * url uiURL
  * configure driver = {type:'chrome', addOptions:['--incognito'], webDriverSession: { desiredCapabilities: { "goog:chromeOptions": { useAutomationExtension: false } } } }
  * driver uiURL
  * maximize()
  * clearCookies()
  * waitForUrl(uiURL)
  Scenario: El usuario realia login exitosamente
    When input('#user-name', dataCredentials.usuarioValido)
    And input('#password', dataCredentials.usuarioClave)
    And click('#login-button')
    Then waitForUrl(uiURL + 'inventory.html')
    And match text('{}Products') == 'Products'
