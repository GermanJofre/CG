package lippia.web.steps;

import com.crowdar.core.PageSteps;
import io.cucumber.java.en.When;
import lippia.web.services.ComunService;

public class ComunSteps extends PageSteps {
    @When("El cliente se encuentra en la main page")
    public void mainPage() {
        ComunService.navegarWeb();
    }
}
