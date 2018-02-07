package com.logic.system.wsdl;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the com.logic.system.wsdl package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {

    private final static QName _NotifyXmlData_QNAME = new QName("http://eWorkflow.kayang", "xmlData");
    private final static QName _NotifyPwd_QNAME = new QName("http://eWorkflow.kayang", "pwd");
    private final static QName _NotifyResponseReturn_QNAME = new QName("http://eWorkflow.kayang", "return");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: com.logic.system.wsdl
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link Notify }
     * 
     */
    public Notify createNotify() {
        return new Notify();
    }

    /**
     * Create an instance of {@link NotifyResponse }
     * 
     */
    public NotifyResponse createNotifyResponse() {
        return new NotifyResponse();
    }

    /**
     * Create an instance of {@link AgentMachineCount }
     * 
     */
    public AgentMachineCount createAgentMachineCount() {
        return new AgentMachineCount();
    }

    /**
     * Create an instance of {@link AgentMachineCountResponse }
     * 
     */
    public AgentMachineCountResponse createAgentMachineCountResponse() {
        return new AgentMachineCountResponse();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://eWorkflow.kayang", name = "xmlData", scope = Notify.class)
    public JAXBElement<String> createNotifyXmlData(String value) {
        return new JAXBElement<String>(_NotifyXmlData_QNAME, String.class, Notify.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://eWorkflow.kayang", name = "pwd", scope = Notify.class)
    public JAXBElement<String> createNotifyPwd(String value) {
        return new JAXBElement<String>(_NotifyPwd_QNAME, String.class, Notify.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://eWorkflow.kayang", name = "return", scope = NotifyResponse.class)
    public JAXBElement<String> createNotifyResponseReturn(String value) {
        return new JAXBElement<String>(_NotifyResponseReturn_QNAME, String.class, NotifyResponse.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://eWorkflow.kayang", name = "xmlData", scope = AgentMachineCount.class)
    public JAXBElement<String> createAgentMachineCountXmlData(String value) {
        return new JAXBElement<String>(_NotifyXmlData_QNAME, String.class, AgentMachineCount.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://eWorkflow.kayang", name = "return", scope = AgentMachineCountResponse.class)
    public JAXBElement<String> createAgentMachineCountResponseReturn(String value) {
        return new JAXBElement<String>(_NotifyResponseReturn_QNAME, String.class, AgentMachineCountResponse.class, value);
    }

}
