/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package instagram;

import java.io.IOException;
import static java.lang.System.out;
import org.json.JSONArray;
import org.json.JSONObject;

/**
 *
 * @author jorda
 */
public class GeoLocator {
    
    private final String data;
    
    public String Location() {
        return data;
    }
   
    public GeoLocator() throws IOException {
        JsonCoder reader = new JsonCoder();
        JSONObject json = reader.getUrl("https://maps.googleapis.com/maps/api/geocode/json?address=678+w+1280+s+,+Provo,+UT&key=AIzaSyDHq6WWAdp5owMOw4PF3sojyKdK87PI5ME");
        JSONArray array1 = json.getJSONArray("results");
        double lat = array1.getJSONObject(0).getJSONObject("geometry").getJSONObject("location").getDouble("lat");
        double lng = array1.getJSONObject(0).getJSONObject("geometry").getJSONObject("location").getDouble("lng");
        data = "<br> " + lat + "<br>" + lng;
    }
}
