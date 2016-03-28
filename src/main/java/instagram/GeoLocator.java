/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package instagram;

import static java.lang.System.out;
import org.json.JSONObject;

/**
 *
 * @author jorda
 */
public class GeoLocator {
   
    public GeoLocator() {
        String mapsData = "https://maps.googleapis.com/maps/api/geocode/xml?address=1600+Amphitheatre+Parkway,+Mountain+View,+CA&key=AIzaSyDHq6WWAdp5owMOw4PF3sojyKdK87PI5ME";
        out.println(mapsData);
    }
}
