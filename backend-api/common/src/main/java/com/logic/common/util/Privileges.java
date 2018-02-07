package com.logic.common.util;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * We use a string to present the privileges for a special module.
 * 
 * @author ronnieking
 * 
 */
public class Privileges {

  private static final Logger logger = LoggerFactory.getLogger(Privileges.class);

  // 1111 1111 1111 1111
  // New
  // Update
  // Delete
  // Query
  // Other1
  // Other2
  // Other3
  // Other4
  // Other5
  // Other6
  // Other7
  // Other8
  // Other9
  // Other10
  // Other11
  // Other12

  private static int PRIVILEGES_LENGTH = 16;

  public static int PRIVILEGE_NEW = 0;
  public static int PRIVILEGE_UPDATE = 1;
  public static int PRIVILEGE_DELETE = 2;
  public static int PRIVILEGE_QUERY = 3;

  public static int PRIVILEGE_OTHER_1 = 4;
  public static int PRIVILEGE_OTHER_2 = 5;
  public static int PRIVILEGE_OTHER_3 = 6;
  public static int PRIVILEGE_OTHER_4 = 7;

  public static int PRIVILEGE_OTHER_5 = 8;
  public static int PRIVILEGE_OTHER_6 = 9;
  public static int PRIVILEGE_OTHER_7 = 10;
  public static int PRIVILEGE_OTHER_8 = 11;

  public static int PRIVILEGE_OTHER_9 = 12;
  public static int PRIVILEGE_OTHER_10 = 13;
  public static int PRIVILEGE_OTHER_11 = 14;
  public static int PRIVILEGE_OTHER_12 = 15;

  /**
   * Check which privilege granted based on the passed number.
   * 
   * @param pri
   * @param privilege
   * @return
   */
  public static boolean ableTo(int pri, int privilege) {
    boolean ret = false;

    String str = Privileges.getPrivilegesString(pri);

    char cha = str.charAt(privilege);

    if (cha == '0') {
      ret = false;
    } else {
      ret = true;

    }

    return ret;
  }

  /**
   * If there are some request need merge mult-privileges, just user 123^2345^123.
   * 
   * @param pri
   * @return
   */
  public static String getPrivilegesString(int pri) {
    String ret = "";

    ret = Integer.toBinaryString(Integer.valueOf(pri));

    return Privileges.fullString(ret, Privileges.PRIVILEGES_LENGTH);
  }

  private static String fullString(String str, int length) {
    String ret = str;

    int strLength = str.length();
    if (strLength < length) {
      for (int i = 0; i < (length - strLength); i++) {
        ret = "0" + ret;
      }
    } else {
      logger.debug("the length is exceed.");
    }

    return ret;
  }

  private int getOctalString(String binaryString) {
    int oct = 0;

    oct = Integer.valueOf(binaryString, 2);

    return oct;
  }

//  public static void main(String[] args) {
//    Privileges pri = new Privileges();
//
//    System.out.println(pri.getOctalString("1000000000000000"));
//    System.out.println(pri.getOctalString("1100000010000000"));
//    System.out.println(pri.getOctalString("1111000000000000"));
//
//    System.out.println(pri.getOctalString("1111111111111111"));
//
//    System.out.println(Privileges.getPrivilegesString(32768));
//    System.out.println(Privileges.getPrivilegesString(128));
//    System.out.println(Privileges.getPrivilegesString(1));
//
//    System.out.println(Privileges.getPrivilegesString(32768 ^ 128 ^ 1));
//
//    System.out.println(Privileges.ableTo(32768 ^ 128 ^ 1, Privileges.PRIVILEGE_OTHER_6));
//
//    String str = "1110000000000000";
//    System.out.println(Integer.valueOf(str, 2));
//
//  }
}
