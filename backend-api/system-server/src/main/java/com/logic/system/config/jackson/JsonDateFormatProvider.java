/*************************************************************************
 * ZURUKU CONFIDENTIAL
 * __________________
 * <p/>
 * [2015] Zuruku Incorporated
 * All Rights Reserved.
 * <p/>
 * NOTICE:  All information contained herein is, and remains
 * the property of Zuruku Incorporated and its suppliers,
 * if any.  The intellectual and technical concepts contained
 * herein are proprietary to Zuruku Incorporated
 * and its suppliers and may be covered by U.S. and Foreign Patents,
 * patents in process, and are protected by trade secret or copyright law.
 * Dissemination of this information or reproduction of this material
 * is strictly forbidden unless prior written permission is obtained
 * from Zuruku Incorporated.
 * <p/>
 * Project : logic-microservices-parent
 * Author  : omer
 * Date    : 29 Dec 2015
 */
package com.logic.system.config.jackson;

import com.fasterxml.jackson.annotation.JsonAutoDetect;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.PropertyAccessor;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.jaxrs.json.JacksonJaxbJsonProvider;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.SerializerProvider;
import org.joda.time.format.DateTimeFormat;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.ext.Provider;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

/**
 * Author: omer 
 * Date  : 29-12-2015
 */
@Provider
@Produces(MediaType.APPLICATION_JSON)
public class JsonDateFormatProvider extends JacksonJaxbJsonProvider {

    private static class MapperSingleton{
        private static ObjectMapper mapper = new ObjectMapper();
        private static MapperSingleton INSTANCE = null;
        private final Logger log = LoggerFactory.getLogger(JsonDateFormatProvider.class);

        private MapperSingleton(){
            log.info("configure the mapper with date format");
            mapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
            mapper.setSerializationInclusion(JsonInclude.Include.ALWAYS);
            mapper.setVisibility(PropertyAccessor.ALL, JsonAutoDetect.Visibility.ANY);
            mapper.enable(SerializationFeature.INDENT_OUTPUT);

            mapper.setTimeZone(TimeZone.getTimeZone("GMT+08:00"));// China timezone

//            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//            dateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
//            mapper.setDateFormat(dateFormat);
            mapper.configure(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS, false);

//            SerializationConfig serConfig = mapper.getSerializationConfig();
//            serConfig = serConfig.with(dateFormat);
//            mapper.setConfig(serConfig);
//            DeserializationConfig deserializationConfig = mapper.getDeserializationConfig();
//            deserializationConfig = deserializationConfig.with(dateFormat);
//            mapper.setConfig(deserializationConfig);
        }

        public static MapperSingleton getInstance(){
            if(INSTANCE == null){
                INSTANCE = new MapperSingleton();
            }
            return INSTANCE;
        }

        public ObjectMapper getMapper(){
            return mapper;
        }
    }

    public JsonDateFormatProvider() {
        super();
        setMapper(MapperSingleton.getInstance().getMapper());
    }
//
//    private class JsonDateSerializer extends JsonSerializer<Date> {
//
//        @Override
//        public void serialize(final Date date, final JsonGenerator gen, final SerializerProvider provider) throws IOException, JsonProcessingException {
//
//            DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//            final String formattedDate = dateFormat.format(date.getTime());
//
//            gen.writeString(formattedDate);
//        }
//
//    }
//
//    private class JsonDateDeSerializer extends JsonDeserializer<Date> {
//        @Override
//        public Date deserialize(final JsonParser jp, final DeserializationContext ctxt) throws IOException, JsonProcessingException {
//            if (jp.getCurrentToken().equals(JsonToken.VALUE_STRING)) {
//                DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//                try {
//                    return dateFormat.parse(jp.getText());// dateFormat.parseDateTime().toDate();
//                } catch (ParseException e) {
//                    e.printStackTrace();
//                    return null;
//                }
//            }
//            return null;
//        }
//
//    }
}