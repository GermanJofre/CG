@Login
Feature: El cliente quiere logearse en Compra Gamer

  Background:
    Given El cliente se encuentra en la main page
    When Se dirige a logearse

  Scenario Outline: El cliente se logea exitosamente
    And Ingresa su '<email>' y su '<password>'
    And ve el siguiente '<mensaje>'
    Then Se validan sus datos para el ingreso

    @LoginExitoso
    Examples:
      | email                        | password | mensaje      |
      | germancorreoprueba@gmail.com | qwertY12 | German Jofre |

    @ContraseñaIncorrecta
    Examples:
      | email                        | password | mensaje                               |
      | germancorreoprueba@gmail.com | 1        | La contraseña ingresada es incorrecta |

    @CorreFallido
    Examples:
      | email                  | password | mensaje                                      |
      | correoprueba@gmail.com |          | El email ingresado es incorrecto o no existe |


  @RestablecerContraseña
  Scenario Outline: El cliente quiere resatablecer su contraseña
    And Ingresa su '<email>'
    And Clickea en el boto obtener mi contraña
    Then Observa el siguiente mensaje '<mensaje>'

    Examples:
      | email                  | mensaje                                                                                            |
      | correoprueba@gmail.com | Envíamos un código temporal y los pasos a seguir para cambiar la contraseña a tu correo registrado |


