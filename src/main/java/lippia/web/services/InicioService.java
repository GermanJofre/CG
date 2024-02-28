package lippia.web.services;

import com.crowdar.core.actions.ActionManager;
import com.crowdar.driver.DriverManager;
import lippia.web.constants.InicioConstants;
import lippia.web.services.AyudaServices;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.testng.Assert;
import org.testng.asserts.SoftAssert;


public class InicioService extends ActionManager {

    public static void clickProducDesta(){
        AyudaServices.tiempo(3000);
        SoftAssert assertSoft = new SoftAssert();
        assertSoft.assertTrue(isPresent(InicioConstants.SLIDER1));
        assertSoft.assertTrue(isPresent(InicioConstants.SLIDER2));
        assertSoft.assertTrue(isPresent(InicioConstants.SLIDER3));
        assertSoft.assertTrue(isPresent(InicioConstants.SLIDER4));
        assertSoft.assertTrue(isPresent(InicioConstants.SLIDER5));
        assertSoft.assertTrue(isPresent(InicioConstants.SLIDER6));
        assertSoft.assertTrue(isPresent(InicioConstants.SLIDER7));
        assertSoft.assertAll();
        AyudaServices.tiempo(3000);
        WebElement elemento = getElement(InicioConstants.SLIDER1);
        new Actions(DriverManager.getDriverInstance()).moveToElement(elemento).click().build().perform();
    }

    public static void ProductoDestacado(){
        Assert.assertTrue(isVisible(InicioConstants.PRODUCTO_DESTACADO));
    }

}
