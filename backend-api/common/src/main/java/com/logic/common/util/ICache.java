package com.logic.common.util;

import com.logic.common.domain.Code;

import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

public interface ICache {

  public void setSession(String key, Object value);

  public Object getSession(String token);

  public void removeSession(String token);

  public ConcurrentHashMap<String, Object> getAllSessions();

  public void setChildCodes(String code, List<Code> codes);

  public List<Code> getChildCodes(String code);

  public void removeChildCodes(String code);

  public ConcurrentHashMap<String, List<Code>> getAllCachedChildCodess();

  public void setCacheItem(String cacheKey, Object value);

  public Object getCacheItem(String cachekey);

  public void removeCacheItem(String cacheKey);

  public ConcurrentHashMap<String, Object> getAllCachedItems();

  public String getSysConfig(String key);
}