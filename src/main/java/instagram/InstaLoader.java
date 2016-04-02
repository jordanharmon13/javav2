package instagram;

import com.google.gson.JsonObject;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/**
 *
 * @author David
 */
public final class InstaLoader extends JsonCoder {
    private List<Map<String,String>> myMapList = new ArrayList<>();
    private Map<String,String> out;
    private String url = null;
    Iterator<String> keyss = null;
    private static final String URL_ID = "https://api.instagram.com/v1/users/%s/media/recent/";
    private static final String KEY = "?client_id=8e92bafbcdcc4c849fdca959b0daba81&access_token=458131440.8e92baf.a77b5a588ff44d6faeff4dec24cbd6a2&count=-1";
    
    // Constructor for userid
    public InstaLoader(int userid) throws IOException {
        this.out = null;
        url = String.format(URL_ID, userid) + KEY;
        createMap();
    }
    // Calls parse to create a map
    public void createMap () throws IOException {
        JSONObject json = super.getUrl(url);
        
        JSONArray myArray = null;
        if (json.has("data"))
            myArray = (JSONArray) json.getJSONArray("data");
            
        if (json.has("items"))
            myArray = (JSONArray) json.getJSONArray("items");
        
        if ( myArray.length() != 0 ) {

            for (int i = 0; i < myArray.length(); i++) {
                out = new HashMap<>();
                myMapList.add( parse( (JSONObject)myArray.get(i),out) );   
            }
       }
    }
    // Get each item from the map
    public String getItem(String item){
        return out.get(item);
    }
    
    public List<Map<String,String>> getList() {
        return myMapList;
    }
    
    public Iterator<String> getSize(){
        return keyss;
    }
    
    // Creates a map of the Instagram Json object
    public Map<String,String> parse(JSONObject json , Map<String,String> out) throws JSONException{
    Iterator<String> keys = json.keys();

    while(keys.hasNext()){
        String key = keys.next();
        String val = null;        
        try{
            JSONObject value = json.getJSONObject(key);
            parse(value, out);
        }catch(Exception e){
            Object obj = json.get(key);
            val = obj.toString();
        }

        if(val != null){
            out.put(key,val);
        }
    }
    return out;
  }
}