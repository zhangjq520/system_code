package com.logic.common.util;

import com.logic.common.domain.Code;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class SysCache implements ICache {

  private Logger logger = LoggerFactory.getLogger(SysCache.class);

  private static final ConcurrentHashMap<String, Object> sessionCache = new ConcurrentHashMap<String, Object>(256);

  private static final ConcurrentHashMap<String, List<Code>> codesCache = new ConcurrentHashMap<String, List<Code>>(256);

  private static final ConcurrentHashMap<String, Object> generalCache = new ConcurrentHashMap<String, Object>(256);

  private static SysCache instance = new SysCache();

  private Map<String, Object> sysconfig;

  private SysCache() {

    logger.debug("====== new cache instance created ======");

  }

  public static SysCache getInstance() {
    return instance;
  }

  /**
   * ===================Session related===================
   */
  public void setSession(String key, Object value) {
    sessionCache.put(key, value);
  }

  public Object getSession(String token) {
    return sessionCache.get(token);
  }

  public void removeSession(String token) {
    sessionCache.remove(token);
  }

  public ConcurrentHashMap<String, Object> getAllSessions() {
    return sessionCache;
  }

  /**
   * ===================Codes related===================
   */
  @Override
  public void setChildCodes(String code, List<Code> codes) {
    codesCache.put(code, codes);
  }

  @Override
  public List<Code> getChildCodes(String code) {
    return codesCache.get(code);
  }

  @Override
  public void removeChildCodes(String code) {
    codesCache.remove(code);

  }

  @Override
  public ConcurrentHashMap<String, List<Code>> getAllCachedChildCodess() {
    return codesCache;
  }

  /**
   * ===================General related===================
   */
  @Override
  public void setCacheItem(String cacheKey, Object value) {
    generalCache.put(cacheKey, value);
  }

  @Override
  public Object getCacheItem(String cachekey) {
    return generalCache.get(cachekey);
  }

  @Override
  public void removeCacheItem(String cacheKey) {
    generalCache.remove(cacheKey);
  }

  @Override
  public ConcurrentHashMap<String, Object> getAllCachedItems() {
    return generalCache;
  }

  @Override
  public String getSysConfig(String key) {
    String result = null;
    if (key == null) {
      return null;
    }
    if (sysconfig == null) {
      sysconfig = new HashMap<String, Object>();
    }
    if (sysconfig.containsKey(key.toLowerCase())) {
      result = sysconfig.get(key.toLowerCase()).toString();
    } else if (SysConfig.getItem(key) != null) {
      result = SysConfig.getItem(key);
      sysconfig.put(key.toLowerCase(), result);
    } else {
      logger.error("can't find system config：" + key.toLowerCase());
    }
    return result;
  }

}