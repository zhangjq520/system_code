package com.logic.common.util;

public class LoggerHelper {

  private static final Integer LOG_STACKTRACE_LENGTH = 150;

  public static String whoInvokedMe(Class<?> c) {
    String ret = "UNKNOWN";
    StackTraceElement[] element = Thread.currentThread().getStackTrace();
    if (c != null && element != null) {
      for (int i = 0; i < element.length; i++) {
        String className = element[i].getClassName();
        if (className.equals(c.getName())) {
          ret = "[" + element[i].getClassName() + "." + element[i].getMethodName() + "()#" + element[i].getLineNumber()
              + "]";
          break;
        }
      }
    }
    if (ret != null && ret.length() > LOG_STACKTRACE_LENGTH) {
      ret = ret.substring(0, LOG_STACKTRACE_LENGTH);
    }
    return ret;
  }

}
