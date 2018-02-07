package com.logic.common.util;

public class CacheFactory {

  public static ICache getCacheImpl() {

    return SysCache.getInstance();

  }

}
