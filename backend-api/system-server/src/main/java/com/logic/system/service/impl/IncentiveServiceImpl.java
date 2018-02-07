package com.logic.system.service.impl;

import org.springframework.boot.bind.RelaxedPropertyResolver;
import org.springframework.context.EnvironmentAware;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.logic.system.service.IIncentiveService;


@Service
public class IncentiveServiceImpl implements IIncentiveService, EnvironmentAware {

	private RelaxedPropertyResolver propertyResolver;
	private static String baseUrl;
	private static String sendEmail = "/sendEmail";
		


	@Override
	public void setEnvironment(Environment environment) {
		propertyResolver = new RelaxedPropertyResolver(environment, "incentiveapi.");
		baseUrl = propertyResolver.getProperty("baseURL", String.class, null);
		
	}



	@Override
	public void sendEmail(String toAddress, String subject, String content) {
		StringBuffer sb = new StringBuffer();

		sb.append(baseUrl).append(sendEmail)
		.append("?toAddress=").append(toAddress)
		.append("&subject=").append(subject)
		.append("&content=").append(content);

		RestTemplate restTemplate = new RestTemplate();

		restTemplate.getForObject(sb.toString(), String.class);
		
	}

}
