@TestUI
Feature: Agregar productos al carrito de compra

Background:
* def t = 100
* def sleep = function(millis){ java.lang.Thread.sleep(millis) }
* call read('classpath:PostmanApp/UIfeatures/01_login.feature')


Scenario: El usuario agrega productos al carrito de compra
  Given waitForUrl(uiURL + 'inventory.html')
  When near('.pricebar').find('button').click()
  Then match text('{a/span}1') == '1'

  When click('{}Sauce Labs Bike Light')
  And click('{}Add to cart')
  And click('{a/span}2')
  Then match text('{div/span}Your Cart') == 'Your Cart'
  And match text('{}Sauce Labs Backpack') =='Sauce Labs Backpack'
  And match text('{}Sauce Labs Bike Light') == 'Sauce Labs Bike Light'