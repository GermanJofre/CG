@Registro
Feature: El cliente quiere registrarse en Compra Gamer

  Background:
    Given El cliente se encuentra en la main page
    When Se dirige a logearse
    And Clickea para registrase

  Scenario Outline: El cliente no se puede registrar
    When Ingresa su <nombre> <apellido> <email> <codigoarea> <n°telefono> <contraseña> <repetircontraseña> <mensaje>
    Then Observa el siguiente mensaje <mensaje>

    @ValoresCorrecto
    Examples:
      | nombre | apellido | email      | codigoarea | n°telefono | contraseña | repetircontraseña | mensaje                                                                  |  |  |
      | Eva    | Pru      | @gmail.com | 11         | 123456789  | qwertY12   | qwertY12          | Tu cuenta se ha creado con éxito. Por favor iniciá sesión con tus datos. |  |  |

    @ValoresIncorrectos @NombreyApellido @Fallo @Numeros
    Examples:
      | nombre | apellido |
      | 4727   | 4727     |

    @ValoresIncorrectos @NombreyApellido @Fallo @ExedenteCaracteres
    Examples:
      | nombre                                                                       | apellido                                                                     |
      | 4727472747274727472747274727472747274727472747274727472747274727472747274727 | 4727472747274727472747274727472747274727472747274727472747274727472747274727 |

    @ValoresIncorrectos @NombreyApellido @Fallo @CaracteresEspeciales
    Examples:
      | nombre | apellido | email      | codigoarea | n°telefono | contraseña | repetircontraseña | mensaje |
      | -      | -        | @gmail.com | 11         | 123456789  | qwertY12   | qwertY12          |         |

    @ValoresIncorrectos @Email @ExedenteCaracteres @DominiosInexistentes
    Examples:
      | email                                                                                          |
      | asfasdfdasdioajdiosjadiosjaio@doakfiopakfopkasdopfkasopkfdopsakdopsakdopksaodpkasopdkosapd.com |

    @ValoresIncorrectos @Email
    Examples:
      | nombre | apellido | email | mensaje               |
      | Eva    | Pru      |       | Usá un formato válido |

    @ValoresIncorrectos @telefono @Letras
    Examples:
      | nombre | apellido | email      | codigoarea | n°telefono | contraseña | repetircontraseña | mensaje      |
      | Eva    | Pru      | @gmail.com | lolo       | lala       | qwertY12   | qwertY12          | Sólo números |

    @ValoresIncorrectos @telefono @Excede @CodigoArea @Fallo
    Examples:
      | nombre | apellido | email      | codigoarea | mensaje          |
      | Eva    | Pru      | @gmail.com | 12345      | Máximo 5 números |

    @ValoresIncorrectos @telefono @Excede @n°telefono
    Examples:
      | nombre | apellido | email      | codigoarea | n°telefono  | mensaje           |
      | Eva    | Pru      | @gmail.com | 1234       | 12345678912 | Máximo 10 números |

    @ValoresIncorrectos @Contraseña @Incumplimiento
    Examples:
      | nombre | apellido | email      | codigoarea | n°telefono | contraseña | repetircontraseña | mensaje                                                                                |
      | Eva    | Pru      | @gmail.com | 1234       | 1234567891 | 1          | 1                 | La contraseña debe tener minimo 8 caracteres, una mayúscula, una minúscula y un número |

    @ValoresIncorrectos @Contraseña @NoCoinciden
    Examples:
      | nombre | apellido | email      | codigoarea | n°telefono | contraseña | repetircontraseña | mensaje                      |
      | Eva    | Pru      | @gmail.com | 1234       | 1234567891 | qwertY12   | 1                 | Las contraseñas no coinciden |

    @ValoresIncorrectos @NoCoinciden
    Examples:
      | nombre | apellido | email      | codigoarea | n°telefono | contraseña | repetircontraseña | mensaje                      |
      | Eva    | Pru      | @gmail.com | 1234       | 1234567891 | qwertY12   | 1                 | Las contraseñas no coinciden |

    @ValoresIncorrectos @CampoRequerido
    Examples:
      | nombre | apellido | email | codigoarea | n°telefono | contraseña | repetircontraseña | mensaje         |
      |        |          |       |            |            |            |                   | Campo requerido |



