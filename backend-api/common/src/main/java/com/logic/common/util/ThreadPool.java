package com.logic.common.util;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class ThreadPool {

	private static ThreadPool instance = null;
	private static ExecutorService pool;
	private static int DEFAULT_POOL_SIZE = 50;

	public static synchronized ThreadPool getInstance() {
		if (instance == null) {
			instance = new ThreadPool();
		}
		return instance;
	}

	public synchronized void addToPool(Runnable run) {
		if (pool == null || pool.isShutdown()) {
		    //Integer poolSize = Integer.valueOf(CacheFactory.getCacheImpl().getSysConfig("thread.pool.size"));
			pool = Executors.newFixedThreadPool( DEFAULT_POOL_SIZE);
		}
		pool.execute(run);
	}
	
	public synchronized void showdown(){
		if(pool != null && !pool.isShutdown()){
			pool.shutdown();
		}
	}
}
