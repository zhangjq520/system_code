package com.logic.system.remote;

import com.logic.system.wsdl.Notify;
import com.logic.system.wsdl.NotifyResponse;
import com.logic.system.wsdl.ObjectFactory;
import org.slf4j.Logger;
import org.springframework.boot.bind.RelaxedPropertyResolver;
import org.springframework.context.EnvironmentAware;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Component;
import org.springframework.ws.client.core.support.WebServiceGatewaySupport;
import org.springframework.ws.soap.client.core.SoapActionCallback;

import javax.xml.bind.JAXBElement;

/**
 * Author: omer 
 * Date  : 03-03-2016
 */
@Component
public class WriteBackStatusClient extends WebServiceGatewaySupport implements EnvironmentAware {
    private static final String ENV_WSDL = "logic.wsdl.";
    private static RelaxedPropertyResolver wsdlPropertyResolver;

    private static final String PROP_WSDL_SERVICE_URL = "service-url";
    private static final String PROP_WSDL_NOTIFY_URL = "notify-url";

    public NotifyResponse notify(String xmlData) throws Exception{
        Notify request = new Notify();
        ObjectFactory factory = new ObjectFactory();
        JAXBElement<String> xmlDataElement = factory.createNotifyXmlData(xmlData);
        JAXBElement<String> xmlPwdElement = factory.createNotifyXmlData("a@H:./2=d]");
        request.setXmlData(xmlDataElement);
        request.setPwd(xmlPwdElement);

        String serviceUrl = wsdlPropertyResolver.getProperty(PROP_WSDL_SERVICE_URL, String.class, "");
        String notifyUrl = wsdlPropertyResolver.getProperty(PROP_WSDL_NOTIFY_URL, String.class, "");
        NotifyResponse response = (NotifyResponse) getWebServiceTemplate()
                .marshalSendAndReceive(
                        serviceUrl,
                        request,
                        new SoapActionCallback(notifyUrl));

        return response;
    }

    @Override
    public void setEnvironment(Environment environment) {
        wsdlPropertyResolver = new RelaxedPropertyResolver(environment, ENV_WSDL);
    }
}
