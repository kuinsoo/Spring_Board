package kr.or.ddit.common.util;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/**
 * kr.or.ddit.common
 * null.java
 * Desc : 제이슨 유틸
 *
 * @Author : Mr.KKu
 * @Date : 2018-11-14 / 오전 10:11
 * @Version :
 */
public class JsonUtils {
	private JsonUtils(){}
	public static Map stringToJsonMap(String json){
		return stringToObject(json, HashMap.class);
	}
	public static Object stringToJsonClass(String json, Class clazz){ return stringToObject(json, clazz); }
	public static <T> T stringToObject(String jsonString, Class<T> valueType){
		try { return new ObjectMapper().readValue(jsonString, valueType); }
		catch (JsonParseException e) { e.printStackTrace(); }
		catch (JsonMappingException e) { e.printStackTrace(); }
		catch (IOException e) { e.printStackTrace(); }
		return null;
	}
	public static String jsonToString(Object jsonObject){
		return objectToString(jsonObject);
	}
	public static String gainJsonToString(Object jsonObject){
		return gainJsonToString(jsonObject, true);
	}
	public static String gainJsonToString(Object jsonObject, boolean resultAddFlag){
		if(resultAddFlag){
			Map m = new HashMap(); m.put("result", jsonObject); return objectToString(m);
		}else{ return objectToString(jsonObject); }
	}
	public static String objectToString(Object json) {
		ObjectMapper om = new ObjectMapper();
		try { return om.writeValueAsString(json); } catch (JsonGenerationException e) { e.printStackTrace(); }
		catch (JsonMappingException e) { e.printStackTrace(); } catch (IOException e) { e.printStackTrace(); }
		return ""; }
	public static String callbackObjectToString(String callback , Object json){ String reval = objectToString(json); if(!"".equals(callback)){ reval = callback+"("+reval+")"; } return reval; }

}
