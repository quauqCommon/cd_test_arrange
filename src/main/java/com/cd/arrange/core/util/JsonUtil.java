package com.cd.arrange.core.util;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.TypeReference;
import org.json.JSONObject;
import sun.misc.Cache;

import java.lang.reflect.Field;
import java.util.List;
import java.util.Map;

/**
 * Created by cd on 2017/4/6.
 */
public class JsonUtil {
    private static JsonUtil jsonUtil;
    public static JsonUtil getInstance(){
        if(jsonUtil==null){
            jsonUtil=new JsonUtil();
        }
        return jsonUtil;
    }
    public String getJsonValue(String key){
        String json="{\n" +
                "            \"password\": \"123456\",\n" +
                "            \"userGroupName\": \"测试组\",\n" +
                "            \"name\": \"admin\",\n" +
                "            \"roleName\": \"二级权限\",\n" +
                "            \"id\": 104\n" +
                "        }";

        String name=JSON.parseObject(json, new TypeReference<Map<String, List<Map<String,String>>>>(){}).get("aaData").get(0).get("userGroupName");
        return name;
    }
    public static void main(String[] args){
        System.out.println(JsonUtil.getInstance().getJsonValue(""));
    }
    public JSONObject reflect(Object object){
        JSONObject jo = new JSONObject();
        try{
            Field[] fields = object.getClass().getDeclaredFields();
            for(int i=0;i<fields.length;i++){
                fields[i].setAccessible(true);
                jo.put(fields[i].getName(),fields[i].get(object));
            }
        } catch(Exception e){

        }
        return jo;
    }
}
