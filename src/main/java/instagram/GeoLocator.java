package instagram;

import java.io.IOException;
import static java.lang.System.out;
import org.json.JSONObject;

public final class GeoLocator extends JsonCoder {
    
    private static final String KEY = "&key=AIzaSyDHq6WWAdp5owMOw4PF3sojyKdK87PI5ME";
    private static final String URL = "https://maps.googleapis.com/maps/api/geocode/json?address=";
    private double lat = 0;
    private double lng = 0;
    private String addressTest = "";
    
    
    public GeoLocator(String address) throws IOException {
        mapData(getUrl( buildUrl(address) ) );
    }
    
    @Override
    public JSONObject getUrl(String url) throws IOException {
        return super.getUrl(url);
    }
    
    public void mapData(JSONObject json) {
        lat = json.getJSONArray("results").getJSONObject(0).getJSONObject("geometry").getJSONObject("location").getDouble("lat");
        lng = json.getJSONArray("results").getJSONObject(0).getJSONObject("geometry").getJSONObject("location").getDouble("lng");
    }
    
    public double getLat() {
        return lat;
    }
    
    public double getLng() {
        return lng;
    }
    
    public String getAddress(){
        return addressTest;
    }
    
    public String buildUrl(String address) {
        address = address.replace(" ", "+");
        if ("+".equals(address.substring(address.length() - 1))) 
          address = address.substring(0, address.length() - 1);
        addressTest = address;
        return URL + address + KEY;
    }
    
}