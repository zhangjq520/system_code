package com.logic.common.util;

import java.io.IOException;
import java.io.OutputStream;
import java.math.BigDecimal;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.ZoneOffset;
import java.time.ZonedDateTime;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.core.Context;

import org.apache.commons.lang.StringUtils;
import org.json.CDL;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.logic.common.ErrorMessageEnum;
import com.logic.common.domain.Code;
import com.logic.common.exception.BusinessException;

import net.sf.json.JSONArray;

public class SysUtil {

	private static Logger logger = LoggerFactory.getLogger(SysUtil.class);
	
	public static int calcMonthsDiff(Date startDate, Date endDate)
			throws ParseException {

		int result = 0;

		Calendar c1 = Calendar.getInstance();
		Calendar c2 = Calendar.getInstance();

		c1.setTime(startDate);
		c2.setTime(endDate);

		result = c2.get(Calendar.MONTH) - c1.get(Calendar.MONTH);

		return result == 0 ? 1 : Math.abs(result);
	}	
	
	public static Integer convertStrToInt(String src){
		Integer result = null;
		
		if(src!=null && src.length() > 0){
			try{
				result = Integer.parseInt(src);
			} catch(NumberFormatException e){
				logger.error("Convert String to Integer failed. Detailed error message is : " + e.getMessage());
			}
		}
		
		return result;
	}
	/**
	 * 
	 * @param src
	 * @return
	 */
	public static BigDecimal convertStrToBigDecimal(String src){
		BigDecimal result = null;
		
		if(StringUtils.isNotBlank(src)){
			try{
				result = new BigDecimal(src);
			} catch(NumberFormatException e){
				logger.error("Convert String to BigDecimal failed. Detailed error message is : " + e.getMessage());
			}
		}
		
		return result;
	}
	/**
	 * Return server IP info as a string
	 * 
	 * @return
	 */
	public static String getServerInfo() {
		logger.debug("Start generate the server IP information");
		StringBuffer sb = new StringBuffer();

		Enumeration<NetworkInterface> netInterfaces = null;
		try {
			netInterfaces = NetworkInterface.getNetworkInterfaces();
			while (netInterfaces.hasMoreElements()) {
				NetworkInterface ni = netInterfaces.nextElement();
				sb.append("DisplayName:" + ni.getDisplayName() + "\r\n");
				sb.append("Name:" + ni.getName() + "\r\n");
				Enumeration<InetAddress> ips = ni.getInetAddresses();
				while (ips.hasMoreElements()) {
					sb.append("IP:" + ips.nextElement().getHostAddress() + "\r\n");
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return sb.toString();
	}

	/**
	 * Return the encrypted MD string based on the passed in string.
	 * 
	 * @param text
	 * @return
	 */

	public static String MD5Digest(String text) {
		logger.debug("Start encrypt the string '" + text + "' as a MD5 string");
		MessageDigest md;
		try {
			md = MessageDigest.getInstance("MD5");
			md.update(text.getBytes());
			byte b[] = md.digest();
			int i;
			StringBuffer buf = new StringBuffer("");
			for (int offset = 0; offset < b.length; offset++) {
				i = b[offset];
				if (i < 0)
					i += 256;
				if (i < 16)
					buf.append("0");
				buf.append(Integer.toHexString(i));
			}
			return buf.toString();
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return null;
	}

	public static long convertStringToNumber(String str) {
		long number = 0l;
		if (StringUtils.isNotBlank(str)) {
			for (int i = 0; i < str.length(); i++) {
				number += str.charAt(i);
			}
		}
		return number;
	}

	public static String getClientIpAddr(HttpServletRequest request) {
		String ip = request.getHeader("X-Real-IP");
		if (StringUtils.isBlank(ip)) {
			ip = request.getRemoteAddr();
		}
		return ip;
	}

	public static CommonResultMap additionalResonseHeader(CommonResultMap map, HttpServletResponse response) {
		Iterator it = map.entrySet().iterator();
		while (it.hasNext()) {
			Map.Entry<String, String> pair = (Map.Entry<String, String>) it.next();
			if (!pair.getKey().equalsIgnoreCase("DATA")) {
				response.addHeader(pair.getKey(), String.valueOf(pair.getValue()));
				it.remove();
			}
		}
		return map;
	}

	public static int countChinese(String str) {
		int count = 0;
		String regEx = "[\\u4e00-\\u9fa5]";
		Pattern p = Pattern.compile(regEx);
		Matcher m = p.matcher(str);
		while (m.find()) {
			for (int i = 0; i <= m.groupCount(); i++) {
				count = count + 1;
			}
		}
		return count;
	}

	/**
	 * 
	 * @param dateString such as "20160101111111"
	 * @return the return will "2016-01-01 11:11:11"
	 */
	public static String formatDateString(String dateString) {
		if (dateString == null) {
			return null;
		}

		SimpleDateFormat simple = new SimpleDateFormat("yyyyMMddHHmmss");
		try {
			Date temp = simple.parse(dateString);
			return SysUtil.convertDateToString(temp, "yyyy-MM-dd HH:mm:ss");
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * 
	 * @param dateString such as "2016-01-01 11:11:11"
	 * @return the return will "20160101"
	 */
	public static String formatDateToICSString(String dateString) {
		if (dateString == null) {
			return null;
		}

		SimpleDateFormat simple = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		try {
			Date temp = simple.parse(dateString);
			return SysUtil.convertDateToString(temp, "yyyyMMdd");
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * 
	 * @param dateString such as "2016-01-01 11:11:11"
	 * @return the return will "20160101111111"
	 */
	public static String formatDateStringToICSString(String dateString) {
		if (dateString == null) {
			return null;
		}

		SimpleDateFormat simple = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		try {
			Date temp = simple.parse(dateString);
			return SysUtil.convertDateToString(temp, "yyyyMMddHHmmss");
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return null;
	}
	public static String convertDateToString(Date date, String format) {
		String dateStr = "";
		if (date != null) {
			dateStr = new SimpleDateFormat(format).format(date);
		}
		return dateStr;
	}

	public static Date convertStringToDate(String dateString, String format) {
		Date date = null;
		if (dateString != null) {
			DateFormat dt = new SimpleDateFormat(format);
			try {
				date = dt.parse(dateString);
			} catch (ParseException e) {
				e.printStackTrace();
			}
		}
		return date;
	}

	public static List<String> removeDuplicate(List<String> list) {
		HashSet<String> h = new HashSet<String>(list);
		list.clear();
		list.addAll(h);
		return list;
	}

	@Deprecated
	public static Date getValidDtoDate(String param, String msg) throws BusinessException {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
		Date date = null;
		if (null != param) {
			if (param.trim().isEmpty()) {
				throw new BusinessException(ErrorMessageEnum.SystemUtil_Date_Empty, msg);
			} else {
				try {
					// date = SimpleDateFormat.getDateInstance().parse(param);
					date = sdf.parse(param);
				} catch (Exception e) {
					throw new BusinessException(ErrorMessageEnum.SystemUtil_Date_Not_Valid, msg);
				}
			}
		}
		return date;
	}

	public static Date getValidUTCDtoDate(String param, String msg) throws BusinessException {
		Date date = null;
		ZonedDateTime zdt = null;
		if (null != param) {
			if (param.trim().isEmpty()) {
				throw new BusinessException(ErrorMessageEnum.SystemUtil_Date_Empty, msg);
			} else {
				try {
					zdt = ZonedDateTime.parse(param);
					date = Date.from(zdt.toInstant());
				} catch (Exception e) {
					throw new BusinessException(ErrorMessageEnum.SystemUtil_Date_Not_Valid, msg);
				}
			}
		}
		return date;
	}

	public static Integer getValidDtoInteger(String param, String msg) throws BusinessException {
		Integer integer = null;
		if (null != param) {
			if (param.trim().isEmpty()) {
				throw new BusinessException(ErrorMessageEnum.SystemUtil_Integer_Empty, msg);
			} else {
				try {
					integer = Integer.valueOf(param);
				} catch (Exception e) {
					throw new BusinessException(ErrorMessageEnum.SystemUtil_Integer_Not_Valid, msg);
				}
			}
		}
		return integer;
	}

	public static Double getValidDtoDouble(String param, String msg) throws BusinessException {
		Double doble = null;
		if (null != param) {
			if (param.trim().isEmpty()) {
				throw new BusinessException(ErrorMessageEnum.SystemUtil_Integer_Empty, msg);
			} else {
				try {
					doble = Double.valueOf(param);
				} catch (Exception e) {
					throw new BusinessException(ErrorMessageEnum.SystemUtil_Integer_Not_Valid, msg);
				}
			}
		}
		return doble;
	}

	public static Boolean getValidDtoBoolean(String param, String msg) throws BusinessException {
		Boolean bool = null;
		if (null != param) {
			if (param.trim().isEmpty()) {
				throw new BusinessException(ErrorMessageEnum.SystemUtil_Boolean_Empty, msg);
			} else {
				try {
					bool = Boolean.parseBoolean(param);
				} catch (Exception e) {
					throw new BusinessException(ErrorMessageEnum.SystemUtil_Boolean_Not_Valid, msg);
				}
			}
		}
		return bool;
	}

	@Deprecated
	public static String convertDateToISO8601String(Date date) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
		String strDate = null;
		if (date != null) {
			strDate = sdf.format(date).toString();
		}
		return strDate;
	}

	public static String convertDateToUTCString(Date date, String timeZone) {
		String strDate = null;
		if (date != null) {
			ZoneOffset zf = ZoneOffset.of(timeZone);
			ZonedDateTime zdt = ZonedDateTime.ofInstant(date.toInstant(), zf);
			strDate = zdt.toString();
		}
		return strDate;
	}

	@Deprecated
	public static String convertStringToISO8601String(String param) {
		SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
		Date date = null;
		String strDate = null;
		if (null != param) {
			try {
				date = sdf1.parse(param);
			} catch (ParseException e) {
				e.printStackTrace();
			}
		}
		if (date != null) {
			strDate = sdf2.format(date).toString();
		}
		return strDate;
	}

	public static String convertStringToUTCString(String param, String timeZone) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String strDate = null;
		Date date = null;
		ZonedDateTime zdt = null;
		if (null != param) {
			try {
				date = sdf.parse(param);
				ZoneOffset zf = ZoneOffset.of(timeZone);
				zdt = ZonedDateTime.ofInstant(date.toInstant(), zf);
			} catch (ParseException e) {
				e.printStackTrace();
			}
		}
		if (zdt != null) {
			strDate = zdt.toString();
		}
		return strDate;
	}

	public static Date cutTimeOfDay(Date date) {

		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);

		calendar.set(Calendar.MILLISECOND, 0);
		calendar.set(Calendar.SECOND, 0);
		calendar.set(Calendar.MINUTE, 0);
		calendar.set(Calendar.HOUR_OF_DAY, 0);

		return calendar.getTime();
	}

	public static Boolean judgeValueIsInTheCodeList(String value, List<Code> codeList) throws BusinessException {
		boolean ret = false;
		for (int j = 0; j < codeList.size(); j++) {
			if (codeList.get(j).getCode().equals(value)) {
				ret = true;
			}
		}
		return ret;
	}

	public static boolean isDevMode() {
		boolean result = false;
		String env = CacheFactory.getCacheImpl().getSysConfig("env");
		if (env != null) {
			if (env.equalsIgnoreCase("tomcat") || env.equalsIgnoreCase("dev")) {
				result = true;
			}
		} else {
			LoggerFactory.getLogger(SysUtil.class).error("error get env config");
		}
		return result;
	}

	public static boolean isLiveMode() {
		boolean result = false;
		String env = CacheFactory.getCacheImpl().getSysConfig("env");
		if (env != null) {
			if (env.equalsIgnoreCase("live")) {
				result = true;
			}
		} else {
			LoggerFactory.getLogger(SysUtil.class).error("error get env config");
		}
		return result;
	}

	public static String listToSortedString(List<String> list) {
		if (list == null) {
			return null;
		}
		Collections.sort(list);
		StringBuilder result = new StringBuilder();
		boolean flg = false;
		for (String str : list) {
			if (flg) {
				result.append(",");
			} else {
				flg = true;
			}
			result.append(str);
		}
		return result.toString();
	}

	public static String toUniqueStrings(String params) {
		List<String> list = new ArrayList<String>();
		if (params != null) {
			String[] paramsArr = params.split(",");
			for (String str : paramsArr) {
				list.add(str);
			}
		}
		return listToSortedString(removeDuplicate(list));
	}

	public static String convertString(String str) {
		return str == null ? "" : str;
	}

	public static String convertCSVString(List<Object> list) {
		String csvString = null;
		JSONArray jsonArray = JSONArray.fromObject(list);
		csvString = CDL.toString(new org.json.JSONArray(jsonArray.toString()));
		return csvString;
	}

	public static void writeCSVByte(@Context HttpServletResponse response, String csvData) {
		OutputStream o = null;
		response.setContentType("application/download;charset=UTF-8");
		response.setHeader("Content-disposition", "attachment;filename=" + "result.csv");
		try {
			o = response.getOutputStream();
			byte b[] = csvData.getBytes();
			o.write(b);
			o.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public static void main(String[] args) {
		Long i = Long.valueOf("1461229798089");
		Long j = Long.valueOf("1461229799092");
		System.out.println(j - i);

	}
	
	public static int calcDtmDiff(Date beginDate,Date endDate) throws ParseException    
    {    
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");  
        beginDate=sdf.parse(sdf.format(beginDate));  
        endDate=sdf.parse(sdf.format(endDate));  
        Calendar cal = Calendar.getInstance();    
        cal.setTime(beginDate);
        long time1 = cal.getTimeInMillis();                 
        cal.setTime(endDate);    
        long time2 = cal.getTimeInMillis();         
        long betweenDays=(time2-time1)/(1000*3600*24);  
            
       return Integer.parseInt(String.valueOf(betweenDays));           
    } 
	
	/**
	 * Return a string for all of stack trace elements of an exception.
	 * @param e
	 * @return
	 */
	public static String getStackTraceElement(Exception e) {
		StringBuffer sb = new StringBuffer();
		StackTraceElement[] error = e.getStackTrace();
		sb.append("\r\n").append(e.toString()).append("\r\n");
		for (StackTraceElement stackTraceElement : error) {
			sb.append("\t at ").append(stackTraceElement.toString()).append("\r\n");
		}
		
		return sb.toString();
	}
	
}
