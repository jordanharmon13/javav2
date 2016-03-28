package listener;


import instagram.Constants;
import org.jinstagram.auth.InstagramAuthService;
import org.jinstagram.auth.oauth.InstagramService;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class Listener implements ServletContextListener {

    public void contextInitialized(ServletContextEvent sce) {

        String clientId = "8e92bafbcdcc4c849fdca959b0daba81";
        String clientSecret = "024355aaf3d34ba995cdd7dcde5a6bef";
        String callbackUrl = "http://java-jordanharmon.rhcloud.com/handleinstaOperations/";


        InstagramService service = new InstagramAuthService()
                .apiKey(clientId)
                .apiSecret(clientSecret)
                .callback(callbackUrl)
                .scope("public_content")
                .build();

        sce.getServletContext().setAttribute(Constants.INSTAGRAM_SERVICE, service);

    }

    public void contextDestroyed(ServletContextEvent sce) {

        sce.getServletContext().removeAttribute(Constants.INSTAGRAM_SERVICE);

    }


}