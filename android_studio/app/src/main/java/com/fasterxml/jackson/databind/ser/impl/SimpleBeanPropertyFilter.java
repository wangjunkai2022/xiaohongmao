package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.jsonFormatVisitors.k;
import com.fasterxml.jackson.databind.l;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.fasterxml.jackson.databind.ser.BeanPropertyWriter;
import com.fasterxml.jackson.databind.ser.PropertyWriter;
import com.fasterxml.jackson.databind.ser.h;
import java.io.Serializable;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public class SimpleBeanPropertyFilter implements com.fasterxml.jackson.databind.ser.b, h {

    /* loaded from: classes.dex */
    public static class FilterExceptFilter extends SimpleBeanPropertyFilter implements Serializable {

        /* renamed from: b  reason: collision with root package name */
        private static final long f15666b = 1;

        /* renamed from: a  reason: collision with root package name */
        protected final Set<String> f15667a;

        public FilterExceptFilter(Set<String> set) {
            this.f15667a = set;
        }

        @Override // com.fasterxml.jackson.databind.ser.impl.SimpleBeanPropertyFilter
        protected boolean a(BeanPropertyWriter beanPropertyWriter) {
            return this.f15667a.contains(beanPropertyWriter.getName());
        }

        @Override // com.fasterxml.jackson.databind.ser.impl.SimpleBeanPropertyFilter
        protected boolean b(PropertyWriter propertyWriter) {
            return this.f15667a.contains(propertyWriter.getName());
        }
    }

    /* loaded from: classes.dex */
    static class a implements h {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.fasterxml.jackson.databind.ser.b f15671a;

        a(com.fasterxml.jackson.databind.ser.b bVar) {
            this.f15671a = bVar;
        }

        @Override // com.fasterxml.jackson.databind.ser.h
        public void depositSchemaProperty(PropertyWriter propertyWriter, ObjectNode objectNode, l lVar) throws JsonMappingException {
            this.f15671a.depositSchemaProperty((BeanPropertyWriter) propertyWriter, objectNode, lVar);
        }

        @Override // com.fasterxml.jackson.databind.ser.h
        public void serializeAsElement(Object obj, JsonGenerator jsonGenerator, l lVar, PropertyWriter propertyWriter) throws Exception {
            throw new UnsupportedOperationException();
        }

        @Override // com.fasterxml.jackson.databind.ser.h
        public void serializeAsField(Object obj, JsonGenerator jsonGenerator, l lVar, PropertyWriter propertyWriter) throws Exception {
            this.f15671a.serializeAsField(obj, jsonGenerator, lVar, (BeanPropertyWriter) propertyWriter);
        }

        @Override // com.fasterxml.jackson.databind.ser.h
        public void depositSchemaProperty(PropertyWriter propertyWriter, k kVar, l lVar) throws JsonMappingException {
            this.f15671a.depositSchemaProperty((BeanPropertyWriter) propertyWriter, kVar, lVar);
        }
    }

    protected SimpleBeanPropertyFilter() {
    }

    public static SimpleBeanPropertyFilter filterOutAllExcept(Set<String> set) {
        return new FilterExceptFilter(set);
    }

    public static h from(com.fasterxml.jackson.databind.ser.b bVar) {
        return new a(bVar);
    }

    public static SimpleBeanPropertyFilter serializeAll() {
        return SerializeExceptFilter.f15669c;
    }

    public static SimpleBeanPropertyFilter serializeAllExcept(Set<String> set) {
        return new SerializeExceptFilter(set);
    }

    protected boolean a(BeanPropertyWriter beanPropertyWriter) {
        return true;
    }

    protected boolean b(PropertyWriter propertyWriter) {
        return true;
    }

    protected boolean c(Object obj) {
        return true;
    }

    @Override // com.fasterxml.jackson.databind.ser.b
    @Deprecated
    public void depositSchemaProperty(BeanPropertyWriter beanPropertyWriter, ObjectNode objectNode, l lVar) throws JsonMappingException {
        if (a(beanPropertyWriter)) {
            beanPropertyWriter.depositSchemaProperty(objectNode, lVar);
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.h
    public void serializeAsElement(Object obj, JsonGenerator jsonGenerator, l lVar, PropertyWriter propertyWriter) throws Exception {
        if (c(obj)) {
            propertyWriter.serializeAsElement(obj, jsonGenerator, lVar);
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.b
    @Deprecated
    public void serializeAsField(Object obj, JsonGenerator jsonGenerator, l lVar, BeanPropertyWriter beanPropertyWriter) throws Exception {
        if (a(beanPropertyWriter)) {
            beanPropertyWriter.serializeAsField(obj, jsonGenerator, lVar);
        } else if (jsonGenerator.q()) {
        } else {
            beanPropertyWriter.serializeAsOmittedField(obj, jsonGenerator, lVar);
        }
    }

    /* loaded from: classes.dex */
    public static class SerializeExceptFilter extends SimpleBeanPropertyFilter implements Serializable {

        /* renamed from: b  reason: collision with root package name */
        private static final long f15668b = 1;

        /* renamed from: c  reason: collision with root package name */
        static final SerializeExceptFilter f15669c = new SerializeExceptFilter();

        /* renamed from: a  reason: collision with root package name */
        protected final Set<String> f15670a;

        SerializeExceptFilter() {
            this.f15670a = Collections.emptySet();
        }

        @Override // com.fasterxml.jackson.databind.ser.impl.SimpleBeanPropertyFilter
        protected boolean a(BeanPropertyWriter beanPropertyWriter) {
            return !this.f15670a.contains(beanPropertyWriter.getName());
        }

        @Override // com.fasterxml.jackson.databind.ser.impl.SimpleBeanPropertyFilter
        protected boolean b(PropertyWriter propertyWriter) {
            return !this.f15670a.contains(propertyWriter.getName());
        }

        public SerializeExceptFilter(Set<String> set) {
            this.f15670a = set;
        }
    }

    public static SimpleBeanPropertyFilter filterOutAllExcept(String... strArr) {
        HashSet hashSet = new HashSet(strArr.length);
        Collections.addAll(hashSet, strArr);
        return new FilterExceptFilter(hashSet);
    }

    @Deprecated
    public static SimpleBeanPropertyFilter serializeAll(Set<String> set) {
        return new FilterExceptFilter(set);
    }

    public static SimpleBeanPropertyFilter serializeAllExcept(String... strArr) {
        HashSet hashSet = new HashSet(strArr.length);
        Collections.addAll(hashSet, strArr);
        return new SerializeExceptFilter(hashSet);
    }

    @Override // com.fasterxml.jackson.databind.ser.b
    @Deprecated
    public void depositSchemaProperty(BeanPropertyWriter beanPropertyWriter, k kVar, l lVar) throws JsonMappingException {
        if (a(beanPropertyWriter)) {
            beanPropertyWriter.depositSchemaProperty(kVar, lVar);
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.h
    @Deprecated
    public void depositSchemaProperty(PropertyWriter propertyWriter, ObjectNode objectNode, l lVar) throws JsonMappingException {
        if (b(propertyWriter)) {
            propertyWriter.depositSchemaProperty(objectNode, lVar);
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.h
    public void serializeAsField(Object obj, JsonGenerator jsonGenerator, l lVar, PropertyWriter propertyWriter) throws Exception {
        if (b(propertyWriter)) {
            propertyWriter.serializeAsField(obj, jsonGenerator, lVar);
        } else if (jsonGenerator.q()) {
        } else {
            propertyWriter.serializeAsOmittedField(obj, jsonGenerator, lVar);
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.h
    public void depositSchemaProperty(PropertyWriter propertyWriter, k kVar, l lVar) throws JsonMappingException {
        if (b(propertyWriter)) {
            propertyWriter.depositSchemaProperty(kVar, lVar);
        }
    }
}
