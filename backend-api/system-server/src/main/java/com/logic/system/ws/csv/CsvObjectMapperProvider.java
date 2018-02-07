package com.logic.system.ws.csv;

import javax.annotation.PostConstruct;
import javax.ws.rs.Produces;
import javax.ws.rs.WebApplicationException;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.MultivaluedMap;
import javax.ws.rs.ext.MessageBodyWriter;
import javax.ws.rs.ext.Provider;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;


/**
 * <p>
 * Enables serialization of the object into CSV or Excel flavor of CSV (that
 * that tries to preserve leading 0 for the numbers and do not convert a long
 * numbers into scientific notation).
 * </p><p>
 * The provider will be automatically registered as serializing producer for
 * {@code text/csv} and {@code application/vnd.ms-excel} mime types as long
 * as the package is specified in the scan packages by Jersey 
 * ({@code jersey.config.server.provider.packages} web.xml init-param).
 * </p>
 * The provider has build in instructions ({@link CsvMapperConfig}) on how to 
 * serialize to CSV specific classes.
 * <p>
 * 
 * @author sergey
 */
@Provider
@Produces({CsvObjectMapperProvider.TEXT_CSV, CsvObjectMapperProvider.APPLICATION_EXCEL })
public class CsvObjectMapperProvider
        implements MessageBodyWriter<Object>
{
    public static final String TEXT_CSV = "text/csv";
    public static final String APPLICATION_EXCEL = "application/vnd.ms-excel";
    private static final Object FILENAME = "result.csv";
    private PojoToCsvSerializer _csvWriter;
    private PojoToCsvSerializer _excelWriter;

    private CsvMapperConfig _config;

    public CsvObjectMapperProvider() {
    }
    
    @PostConstruct
    protected void initialize() {
        _config = new CsvMapperConfig();
        _config.setWriteHeaders(true);        
        _config.setPojoDefault(false);

        _csvWriter = new PojoToCsvSerializer(_config);
        _csvWriter.setImproveFormattingForExcel(false);

        _excelWriter = new PojoToCsvSerializer(_config);
        _excelWriter.setImproveFormattingForExcel(true);        
        
        //addClassesCongigs(_config);
        addEmployeeDtoCongigs(_config);
    }

    /*private PojoAttributeMapping getPersonAttributeMapping() {
        PojoAttributeMapping pojoAttributeMapping = new PojoAttributeMapping();
               
        PojoAttributeMapping addrAttributeMapping = new PojoAttributeMapping();
        addrAttributeMapping.add("Street", "street");
        addrAttributeMapping.add("City", "city");
        addrAttributeMapping.add("State", "state");
        pojoAttributeMapping.add(new PojoCsvAttribute("address", addrAttributeMapping)); // attribute is an object, split into two headers/values
        
        pojoAttributeMapping.add("LastName", "lastName");
        pojoAttributeMapping.add("FirstName", "firstName");
        pojoAttributeMapping.add("Age", "age");
        
//        PojoAttributeMapping addrAttributeMapping = new PojoAttributeMapping();
//        addrAttributeMapping.add("Address", "street", ", ", "city", ", ", "state", ", ", "zip");
//        pojoAttributeMapping.add(new PojoCsvAttribute("address", addrAttributeMapping)); // attribute is an object, split into two headers/values
        
        return pojoAttributeMapping;
    }*/

    public CsvMapperConfig getConfig() {
        return _config;
    }

    public void setConfig(CsvMapperConfig config) {
        _config = config;
    }

    @Override
    public boolean isWriteable(Class<?> type, Type genericType, Annotation[] annotations, MediaType mediaType) {
        return true;
    }

    @Override
    public long getSize(Object o, Class<?> type, Type genericType, Annotation[] annotations, MediaType mediaType) {
        return -1;
    }

    @Override
    public void writeTo(Object o, Class<?> type, Type genericType, Annotation[] annotations, MediaType mediaType, MultivaluedMap<String, Object> httpHeaders, OutputStream entityStream) throws IOException, WebApplicationException {
        httpHeaders.putSingle("Content-Disposition", "attachment; filename=\"" + FILENAME + "\"");
        if( CsvObjectMapperProvider.APPLICATION_EXCEL.equals(mediaType.toString()) ) {
            _excelWriter.serialize(o, entityStream);
        } else {
            _csvWriter.serialize(o, entityStream);
        }
    }

    /*protected void addClassesCongigs(CsvMapperConfig _config) {
        _config.setAttributeMapping(Person.class, getPersonAttributeMapping());
        _config.setPojoClasses(Person.class, UsAddress.class);
    }*/
    
    protected void addEmployeeDtoCongigs(CsvMapperConfig _config) {
        // TODO : Employee was under qcs not system
//      _config.setAttributeMapping(EmployeeDTO.class, getEmployeeDtoAttributeMapping());
//      _config.setPojoClasses(EmployeeDTO.class);
  }
    
    private PojoAttributeMapping getEmployeeDtoAttributeMapping() {
      PojoAttributeMapping pojoAttributeMapping = new PojoAttributeMapping();
        // TODO Employee was under qcs not system
//      Field[] fields = EmployeeDTO.class.getDeclaredFields();
//      for(Field field : fields) {
//        pojoAttributeMapping.add(field.getName(), field.getName());
//        //System.out.println(field.getName());
//      }
      /*pojoAttributeMapping.add("id", "id");
      pojoAttributeMapping.add("code", "code");
      pojoAttributeMapping.add("contractor", "contractor");
      pojoAttributeMapping.add("first_name", "first_name");
      pojoAttributeMapping.add("last_name", "last_name");
      pojoAttributeMapping.add("gender", "gender");
      pojoAttributeMapping.add("org_ids", "org_ids");
      pojoAttributeMapping.add("physical_id", "physical_id");
      pojoAttributeMapping.add("facility_id", "facility_id");
      pojoAttributeMapping.add("primary_job", "primary_job");
      pojoAttributeMapping.add("secondary_job", "secondary_job");
      pojoAttributeMapping.add("job_grade", "job_grade");
      pojoAttributeMapping.add("shift_code", "shift_code");
      pojoAttributeMapping.add("supervisor_id", "supervisor_id");
      pojoAttributeMapping.add("hired_date", "hired_date");
      pojoAttributeMapping.add("birth_date", "birth_date");
      pojoAttributeMapping.add("report_start_date", "report_start_date");
      pojoAttributeMapping.add("report_end_date", "report_end_date");
      pojoAttributeMapping.add("status", "status");
      pojoAttributeMapping.add("clock_number", "clock_number");
      pojoAttributeMapping.add("work_phone_number", "work_phone_number");
      pojoAttributeMapping.add("email_primary", "email_primary");
      pojoAttributeMapping.add("service_date", "service_date");
      pojoAttributeMapping.add("comment", "comment");
      pojoAttributeMapping.add("org_name", "org_name");
      pojoAttributeMapping.add("physical_name", "physical_name");
      pojoAttributeMapping.add("supervisor_name", "supervisor_name");
      pojoAttributeMapping.add("version_count", "version_count");*/
      
//      PojoAttributeMapping addrAttributeMapping = new PojoAttributeMapping();
//      addrAttributeMapping.add("Address", "street", ", ", "city", ", ", "state", ", ", "zip");
//      pojoAttributeMapping.add(new PojoCsvAttribute("address", addrAttributeMapping)); // attribute is an object, split into two headers/values
      
      return pojoAttributeMapping;
  }
}
