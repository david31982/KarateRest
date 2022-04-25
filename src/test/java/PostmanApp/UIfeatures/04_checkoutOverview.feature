Feature: Diligenciar el checkout para finalizar la compra

Background: Definicion
* def t = 100
* def sleep = function(millis){ java.lang.Thread.sleep(millis) }
* call read('classpath:PostmanApp/UIfeatures/03_checkOut.feature')
* waitForUrl(uiURL + 'checkout-step-one.html')

Scenario: El usuario realiza el checkout de su compra
  When click('#continue')
  Then waitForUrl(uiURL + 'checkout-step-two.html')
  When scroll('{div/button}Finish').click()
  Then waitForUrl(uiURL + 'checkout-complete.html')
  And waitForText('body', 'Checkout: Complete!')
  And match text('//h2') contains any 'THANK'