Feature: El usuario ordena los productos

Background:
* def t = 100
* def sleep = function(millis){ java.lang.Thread.sleep(millis) }
* call read('classpath:PostmanApp/UIfeatures/01_login.feature')


Scenario: Ordenar Productos Z To A
  Given match text('{}Products') == 'Products'
  #When select("//select[@class='product_sort_container']", 'za' )
  When  mouse().move('{}Name (A to Z)').click()
  * sleep(t*90)
  And mouse().move("//option[@value='lohi']").click()
  * def texto = text('{}Name (A to Z)')
  * print texto
* sleep(t*10)
