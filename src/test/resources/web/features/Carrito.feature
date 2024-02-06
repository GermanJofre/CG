@Carrito
Feature: El cliente quiere comprar en Compra Gamer

  @Compra
  Scenario: El cliente seleciona uno de los productos destacados
    Given El cliente se encuentra en la main page
    When Ve los productos destacados
    And Clickea en ver producto
    And Se encuentra en el producto destacado
    And Suma al carrito
    And Se dirige al carrito
    And Se observa el articulo
    And Ingresa su codigo postal '5519'
    And Ingresa un descuento 'descuento'
    And Selecciona el mercado pago
    Then Se observa el boton de comprar