/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package instagram;

import org.json.JSONArray;
import org.json.JSONObject;

/**
 *
 * @author jorda
 */
public class JsonLoader {
    private final JSONArray load;
    
    public JsonLoader(JSONObject json) {
        load = (JSONArray) json.get("data");
    }
}
