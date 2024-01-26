@Inicio
Feature: El cliente quiere interactuar con el inicio de Compra Gamer

  Background:
    Given El cliente se encuentra en la main page

  @ProductoDestacados
  Scenario: El cliente seleciona uno de los productos destacados
    When Ve los productos destacados
    And Clickea en ver producto
    Then Se encuentra en el producto destacado

  @ProductosNovedosos
  Scenario: El cliente seleciona un productos de las novedades
    When Ve las ultimas novedades en productos
    And Clickea sobre uno de ellos
    Then Se encuentra en la novedad

  @DataFiscal
  Scenario: El cliente quiere ver la data fiscal
    When Ve la imagen de la data fiscal
    And Clickea sobre data fiscal
    Then Se encuentra en la data fiscal

  @Ayuda
  Scenario: El cliente necesita ayuda
    When Ve el boton ayuda
    And Clickea sobre el boton ayuda
    Then Se encuentra en la seccion ayuda

  @Arrepentimiento
  Scenario: El cliente se arrepiente de su compra
    When Ve el boton de arrepentimiento
    And Clickea sobre el boton de arrepentimiento
    Then Se encuentra en la seccion de arrepentimiento de la compra

  @TerminosyCondiciones
  Scenario: El cliente quiere ver los terminos y condiciones
    When Ve el boton de terminos y condiciones
    And Clickea sobre el boton de terminos y condiciones
    Then Se encuentra en la seccion de terminos y condiciones

  @RedesSociales
  Scenario: El cliente quiere interactuar con las redes sociales
    When Ve todas las redes social
    And Clickea sobre una de las redes sociales
    Then Se encuentra en la red social

  @Trabajar @404
  Scenario: El cliente quiere trabajar con compra gamer
    When Ve el boton de trabajar con nosotros
    And Clickea sobre el boton de trabajar con nosotros
    Then Se encuentra en la pagina de contracion

  @Buscador
  Scenario Outline: El cliente busca un producto en el buscador
    When Se dirige al buscador
    And Ingresa el '<producto>' que quiere buscar
    Then Se muestra el producto buscado

    Examples:
      | producto      |
      | placa madre   |
      | placa grafica |
      | fuente        |