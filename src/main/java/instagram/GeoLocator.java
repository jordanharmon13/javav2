package instagram;

import java.io.IOException;
import org.json.JSONObject;

/**
 *
 * @author David
 */
public final class GeoLocator extends JsonCoder {
    
    private static final String KEY = "&key=AIzaSyDHq6WWAdp5owMOw4PF3sojyKdK87PI5ME";
    private static final String URL = "https://maps.googleapis.com/maps/api/geocode/json?address=";
    private double lowlat = 0;
    private double lowlng = 0;
    private double highlat = 0;
    private double highlng = 0;
    private String addressTest = "";
    
    
    public GeoLocator(String address) throws IOException {
        mapData(getUrl( buildUrl(address) ) );
    }
    
    @Override
    public JSONObject getUrl(String url) throws IOException {
        return super.getUrl(url);
    }
    
    public void mapData(JSONObject json) {
        JSONObject low = json.getJSONArray("results").getJSONObject(0).getJSONObject("geometry").getJSONObject("viewport").getJSONObject("southwest");
        JSONObject high = json.getJSONArray("results").getJSONObject(0).getJSONObject("geometry").getJSONObject("viewport").getJSONObject("northeast");
        lowlat = low.getDouble("lat");
        lowlng = low.getDouble("lng");
        
        highlat = high.getDouble("lat");
        highlng = high.getDouble("lng");
    }
    
    public Boolean checklat(double lat) {
        return ( highlat > lat && lat > lowlat );
    }
    
    public Boolean checkLng(double lng) {
        return ( highlng > lng && lng > lowlng );
    }
    
    public String getAddress(){
        return addressTest;
    }
    public String buildUrl(String address) {
        address = address.replace(" ", "+");
        if ("+".equals(address.substring(address.length()-1))) 
          address = address.substring(0,address.length() - 1);
        addressTest = address;
        return URL + address + KEY;
    }
}