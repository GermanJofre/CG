package lippia.web.steps;

import com.crowdar.core.PageSteps;
import io.cucumber.java.en.*;
import lippia.web.services.InicioService;

public class InicioSteps extends PageSteps {
    @When("Se dirige a uno de los productos destacados")
    public void ClickProducDesta() { InicioService.clickProducDesta();}

    @Then("Se encuentra en el producto destacado")
    public void ProductoDestacado() {
        InicioService.ProductoDestacado();
    }
}
