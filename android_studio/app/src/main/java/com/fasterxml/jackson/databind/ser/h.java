package com.fasterxml.jackson.databind.ser;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.node.ObjectNode;

/* compiled from: PropertyFilter.java */
/* loaded from: classes.dex */
public interface h {
    void depositSchemaProperty(PropertyWriter propertyWriter, com.fasterxml.jackson.databind.jsonFormatVisitors.k kVar, com.fasterxml.jackson.databind.l lVar) throws JsonMappingException;

    @Deprecated
    void depositSchemaProperty(PropertyWriter propertyWriter, ObjectNode objectNode, com.fasterxml.jackson.databind.l lVar) throws JsonMappingException;

    void serializeAsElement(Object obj, JsonGenerator jsonGenerator, com.fasterxml.jackson.databind.l lVar, PropertyWriter propertyWriter) throws Exception;

    void serializeAsField(Object obj, JsonGenerator jsonGenerator, com.fasterxml.jackson.databind.l lVar, PropertyWriter propertyWriter) throws Exception;
}
