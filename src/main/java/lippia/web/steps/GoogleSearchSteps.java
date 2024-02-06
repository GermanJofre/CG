package lippia.web.steps;

import com.crowdar.core.PageSteps;
import io.cucumber.java.en.*;
import lippia.web.services.GoogleHomeService;
import lippia.web.services.GoogleSearchResultService;

public class GoogleSearchSteps extends PageSteps {
    @When("Ve los productos destacados")
    public void productosDestacados() {
        GoogleHomeService.navegarWeb();
    }

    @And("Ve los productos destacados")
    public void clickProductoDestacado() {
        GoogleHomeService.navegarWeb();
    }

    @Then("Se encuentra en el producto destacado")
    public void ProductoDestacado() {
        GoogleHomeService.navegarWeb();
    }

    @When("Ve las ultimas novedades en productos")
    public void productosNovedosos() {
        GoogleHomeService.navegarWeb();
    }

    @And("Clickea sobre uno de ellos")
    public void clickproductoNovedoso() {
        GoogleHomeService.navegarWeb();
    }

    @Then("Se encuentra en la novedad")
    public void productoNovedoso() {
        GoogleHomeService.navegarWeb();
    }

    @When("Ve la imagen de la data fiscal")
    public void imagenDataFiscal() {
        GoogleHomeService.navegarWeb();
    }

    @And("Clickea sobre data fiscal")
    public void clickDataFiscal() {
        GoogleHomeService.navegarWeb();
    }

    @Then("Se encuentra en la data fiscal")
    public void DataFiscal() {
        GoogleHomeService.navegarWeb();
    }

    @When("Ve el boton ayuda")
    public void botonAyuda() {
        GoogleHomeService.navegarWeb();
    }

    @And("Clickea sobre el boton ayuda")
    public void clickBotonAyuda() {
        GoogleHomeService.navegarWeb();
    }

    @Then("Se encuentra en la seccion ayuda")
    public void Ayuda() {
        GoogleHomeService.navegarWeb();
    }

    @When("Ve el boton de arrepentimiento")
    public void botonArrepentimiento() {
        GoogleHomeService.navegarWeb();
    }

    @And("Clickea sobre el boton de arrepentimiento")
    public void clickBotonArrpentimiento() {
        GoogleHomeService.navegarWeb();
    }

    @Then("Se encuentra en la seccion de arrepentimiento de la compra")
    public void Arrepentimiento() {
        GoogleHomeService.navegarWeb();
    }

    @When("Ve el boton de terminos y condiciones")
    public void botonTerminosyCondiciones() {
        GoogleHomeService.navegarWeb();
    }

    @And("Clickea sobre el boton de terminos y condiciones")
    public void clickTerminosyCondiciones() {
        GoogleHomeService.navegarWeb();
    }

    @Then("Se encuentra en la seccion de terminos y condiciones")
    public void TerminosyCondiciones() {
        GoogleHomeService.navegarWeb();
    }

    @When("Ve todas las redes social")
    public void botonesRedesSociales() {
        GoogleHomeService.navegarWeb();
    }

    @And("Clickea sobre una de las redes sociales")
    public void clickRedSocial() {
        GoogleHomeService.navegarWeb();
    }

    @Then("Se encuentra en la red social")
    public void RedSocial() {
        GoogleHomeService.navegarWeb();
    }

    @When("Ve el boton de trabajar con nosotros")
    public void botonTrabajarconNosotros() {
        GoogleHomeService.navegarWeb();
    }

    @And("Clickea sobre el boton de trabajar con nosotros")
    public void clickTrabajarconNosotros() {
        GoogleHomeService.navegarWeb();
    }

    @Then("Se encuentra en la pagina de contracion")
    public void TrabajarconNosotros() {
        GoogleHomeService.navegarWeb();
    }

    @When("Se dirige al buscador")
    public void buscador() {
        GoogleHomeService.navegarWeb();
    }

    @And("^Ingresa el (.*) que quiere buscar$")
    public void Buscar() {
        GoogleHomeService.navegarWeb();
    }

    @And("Selecciona el producto")
    public void seleProductoBuscador() {
        GoogleHomeService.navegarWeb();
    }

    @Then("Se muestra el producto buscado")
    public void ProductoBuscador() {
        GoogleHomeService.navegarWeb();
    }

}
