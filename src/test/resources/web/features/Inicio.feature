@Inicio
Feature: El cliente quiere interactuar con el inicio de Compra Gamer

  Background:
    Given El cliente se encuentra en la main page

  @ProductoDestacados
  Scenario: El cliente quiere ver uno de los productos destacados
    When Se dirige a uno de los productos destacados
    Then Se encuentra en el producto destacado

  @ProductosNovedosos
  Scenario: El cliente seleciona un productos de las novedades
    When Ve las ultimas novedades en productos
    And Clickea sobre uno de ellos
    Then Se encuentra en la novedad

  @Trabajar @404
  Scenario: El cliente quiere trabajar con compra gamer
    When Ve el boton de trabajar con nosotros
    And Clickea sobre el boton de trabajar con nosotros
    Then Se encuentra en la pagina de contracion

  @Buscador
  Scenario Outline: El cliente busca un producto en el buscador
    When Se dirige al buscador
    And Ingresa el '<producto>' que quiere buscar
    And Selecciona el producto
    Then Se muestra el producto buscado

    Examples:
      | producto      |
      | placa madre   |
      | placa grafica |
      | fuente        |