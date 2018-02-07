package com.logic.common.security;

/**
 * The is class should be used for control the DataSecurity in the application. 
 * The data security can be separate to different levels:
 * <li>Orgnization Level
 * <li>User Level
 * <li>etc. 
 * <br>&nbsp;
 * <br>&nbsp;
 * The sample invoke:
 * <li>DataSecurityUtils.hasOrgPermission("", "") = false
 *  * <li>DataSecurityUtils.hasOrgPermission("1,2", "") = false
 * <li>DataSecurityUtils.hasOrgPermission("1,2,3,4", "1,2,3") = false
 * <li>DataSecurityUtils.hasOrgPermission("", "") = false
 * <li>DataSecurityUtils.hasOrgPermission("1,2", "1,2,3") = true
 * 
 * <br>&nbsp;
 * @category security
 * @author rking
 *
 */
public class DataSecurityUtils {
	
	
	/**
	 * Compare the two passed in string array and validate whether the queryOrgIds is below userOrgIds.
	 * @param userOrgIds: sample data: 1,2,3
	 * @param queryOrgIds: sample data: 2,3,4
	 * @return
	 */
	public static boolean hasOrgPermission(String userOrgIds, String queryOrgIds){
		boolean ret = false;
		
		String[] userOrgArray = convertString2Array(userOrgIds);
		String[] queryOrgArray = convertString2Array(queryOrgIds);
		
		if (userOrgArray != null && queryOrgArray != null) {
			
			ret = true;
			
			//The following codes will to check all of query org must in user org, if not, the method need return false.
			for (String queryOrg : queryOrgArray) {
				
				boolean isExist = false;
				
				for (String userOrg : userOrgArray) {
					if (queryOrg.equals(userOrg)) {
						isExist = true;
						break;
					}
				}
				
				if (!isExist) {
					ret = false;
					break;
				}
			}
		}
		
		return ret;
	}
	
	
	private static String[] convertString2Array(String commaArray) {
		String[] array = null;
		
		if (commaArray != null) {
			array = commaArray.split(",");
		} 
		
		return array;
	}

}
