package com.fasterxml.jackson.databind.ser;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.node.ObjectNode;

/* compiled from: BeanPropertyFilter.java */
@Deprecated
/* loaded from: classes.dex */
public interface b {
    void depositSchemaProperty(BeanPropertyWriter beanPropertyWriter, com.fasterxml.jackson.databind.jsonFormatVisitors.k kVar, com.fasterxml.jackson.databind.l lVar) throws JsonMappingException;

    @Deprecated
    void depositSchemaProperty(BeanPropertyWriter beanPropertyWriter, ObjectNode objectNode, com.fasterxml.jackson.databind.l lVar) throws JsonMappingException;

    void serializeAsField(Object obj, JsonGenerator jsonGenerator, com.fasterxml.jackson.databind.l lVar, BeanPropertyWriter beanPropertyWriter) throws Exception;
}
