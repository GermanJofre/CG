package lippia.web.services;

import com.crowdar.core.PageSteps;

public class AyudaServices extends PageSteps {
    public static void tiempo(int espera) {
        try {
            Thread.sleep(espera);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}
