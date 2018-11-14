package kr.or.ddit.attachment.util;

public class FileUtil {
	
	public static String fileExt(String uuid) {
		String[] uuitSplit = uuid.split("\\.");
		if(uuitSplit.length == 1 )
			return "";
		return "."+uuitSplit[uuitSplit.length-1];
		
	}
	
	/**
	* Method : fileExtListIndex
	* 작성자 : Mr.KKu
	* 변경이력 :
	* @param uuid
	* @return
	* Method 설명 : LastOfIndex 를 이요한 로직
	*/
	public static String fileExtListIndex(String uuid) {
		int lastDotIndex = uuid.lastIndexOf(".");
		if(0 > lastDotIndex ) //dot 이 없는 경우
			return "";
		else
			return uuid.substring(lastDotIndex);
		
	}
}
