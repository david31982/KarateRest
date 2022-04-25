Feature: Diligenciar el checkout para finalizar la compra

Background: Definicion
* def t = 100
* def sleep = function(millis){ java.lang.Thread.sleep(millis) }
* call read('classpath:PostmanApp/UIfeatures/02_agregarProductos.feature')
* waitForUrl(uiURL + 'cart.html')

Scenario: El usuario realiza el checkout de su compra
  When click('{}Checkout')
  Then waitForUrl(uiURL + 'checkout-step-one.html')
  Then match text('{}Checkout: Your Information') == 'Checkout: Your Information'

  When input("//input[@data-test='firstName']", 'Demo Test Name')
  Then  match attribute('#first-name', 'type') == 'text'
  And  match attribute('#first-name', 'placeholder') == 'First Name'

  When input("//input[@data-test='lastName']", 'Demo Test LastName')
  Then  match attribute('#last-name', 'type') == 'text'
  And  match attribute('#last-name', 'placeholder') == 'Last Name'

  When input("//input[@data-test='postalCode']", '050012')
  Then  match attribute('#postal-code', 'type') == 'text'
  And  match attribute('#postal-code', 'placeholder') == 'Zip/Postal Code'

  And focus('#continue')

  Then match value("//input[@data-test='firstName']") == 'Demo Test Name'
  Then match value("//input[@data-test='lastName']") == 'Demo Test LastName'
  Then match value("//input[@data-test='postalCode']") == '050012'