package com.logic.system.config.jackson;

import javax.ws.rs.core.Feature;
import javax.ws.rs.core.FeatureContext;
import javax.ws.rs.ext.MessageBodyReader;
import javax.ws.rs.ext.MessageBodyWriter;

/**
 * Author: omer 
 * Date  : 29-12-2015
 */
public class DateMapperFeature implements Feature{

    @Override
    public boolean configure(FeatureContext featureContext) {
        featureContext.register(JsonDateFormatProvider.class, MessageBodyReader.class, MessageBodyWriter.class);
        return true;
    }
}
