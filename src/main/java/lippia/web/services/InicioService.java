package lippia.web.services;

import com.crowdar.core.actions.ActionManager;
import lippia.web.constants.InicioConstants;
import org.testng.Assert;
import org.testng.asserts.SoftAssert;

public class InicioService extends ActionManager {

    public static void clickProducDesta(){
        SoftAssert assertSoft = new SoftAssert();
        assertSoft.assertTrue(isPresent(InicioConstants.SLIDER1));
        assertSoft.assertTrue(isPresent(InicioConstants.SLIDER2));
        assertSoft.assertTrue(isPresent(InicioConstants.SLIDER3));
        assertSoft.assertTrue(isPresent(InicioConstants.SLIDER4));
        assertSoft.assertTrue(isPresent(InicioConstants.SLIDER5));
        assertSoft.assertTrue(isPresent(InicioConstants.SLIDER6));
        assertSoft.assertTrue(isPresent(InicioConstants.SLIDER7));
        assertSoft.assertAll();
        click(InicioConstants.SLIDER7);
    }

    public static void ProductoDestacado(){
        Assert.assertTrue(isVisible(InicioConstants.PRODUCTO_DESTACADO));
    }

}
