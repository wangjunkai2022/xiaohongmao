package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.g;
import com.fasterxml.jackson.databind.jsonFormatVisitors.k;
import com.fasterxml.jackson.databind.l;
import com.fasterxml.jackson.databind.ser.BeanPropertyWriter;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.io.Serializable;

/* compiled from: FilteredBeanPropertyWriter.java */
/* loaded from: classes.dex */
public abstract class a {

    /* compiled from: FilteredBeanPropertyWriter.java */
    /* renamed from: com.fasterxml.jackson.databind.ser.impl.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private static final class C0122a extends BeanPropertyWriter implements Serializable {

        /* renamed from: y  reason: collision with root package name */
        private static final long f15687y = 1;

        /* renamed from: w  reason: collision with root package name */
        protected final BeanPropertyWriter f15688w;

        /* renamed from: x  reason: collision with root package name */
        protected final Class<?>[] f15689x;

        protected C0122a(BeanPropertyWriter beanPropertyWriter, Class<?>[] clsArr) {
            super(beanPropertyWriter);
            this.f15688w = beanPropertyWriter;
            this.f15689x = clsArr;
        }

        private final boolean h(Class<?> cls) {
            if (cls == null) {
                return true;
            }
            int length = this.f15689x.length;
            for (int i4 = 0; i4 < length; i4++) {
                if (this.f15689x[i4].isAssignableFrom(cls)) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.fasterxml.jackson.databind.ser.BeanPropertyWriter
        public void assignNullSerializer(g<Object> gVar) {
            this.f15688w.assignNullSerializer(gVar);
        }

        @Override // com.fasterxml.jackson.databind.ser.BeanPropertyWriter
        public void assignSerializer(g<Object> gVar) {
            this.f15688w.assignSerializer(gVar);
        }

        @Override // com.fasterxml.jackson.databind.ser.BeanPropertyWriter, com.fasterxml.jackson.databind.ser.PropertyWriter, com.fasterxml.jackson.databind.BeanProperty
        public void depositSchemaProperty(k kVar, l lVar) throws JsonMappingException {
            if (h(lVar.getActiveView())) {
                super.depositSchemaProperty(kVar, lVar);
            }
        }

        @Override // com.fasterxml.jackson.databind.ser.BeanPropertyWriter
        /* renamed from: i */
        public C0122a rename(NameTransformer nameTransformer) {
            return new C0122a(this.f15688w.rename(nameTransformer), this.f15689x);
        }

        @Override // com.fasterxml.jackson.databind.ser.BeanPropertyWriter, com.fasterxml.jackson.databind.ser.PropertyWriter
        public void serializeAsElement(Object obj, JsonGenerator jsonGenerator, l lVar) throws Exception {
            if (h(lVar.getActiveView())) {
                this.f15688w.serializeAsElement(obj, jsonGenerator, lVar);
            } else {
                this.f15688w.serializeAsPlaceholder(obj, jsonGenerator, lVar);
            }
        }

        @Override // com.fasterxml.jackson.databind.ser.BeanPropertyWriter, com.fasterxml.jackson.databind.ser.PropertyWriter
        public void serializeAsField(Object obj, JsonGenerator jsonGenerator, l lVar) throws Exception {
            if (h(lVar.getActiveView())) {
                this.f15688w.serializeAsField(obj, jsonGenerator, lVar);
            } else {
                this.f15688w.serializeAsOmittedField(obj, jsonGenerator, lVar);
            }
        }
    }

    /* compiled from: FilteredBeanPropertyWriter.java */
    /* loaded from: classes.dex */
    private static final class b extends BeanPropertyWriter implements Serializable {

        /* renamed from: y  reason: collision with root package name */
        private static final long f15690y = 1;

        /* renamed from: w  reason: collision with root package name */
        protected final BeanPropertyWriter f15691w;

        /* renamed from: x  reason: collision with root package name */
        protected final Class<?> f15692x;

        protected b(BeanPropertyWriter beanPropertyWriter, Class<?> cls) {
            super(beanPropertyWriter);
            this.f15691w = beanPropertyWriter;
            this.f15692x = cls;
        }

        @Override // com.fasterxml.jackson.databind.ser.BeanPropertyWriter
        public void assignNullSerializer(g<Object> gVar) {
            this.f15691w.assignNullSerializer(gVar);
        }

        @Override // com.fasterxml.jackson.databind.ser.BeanPropertyWriter
        public void assignSerializer(g<Object> gVar) {
            this.f15691w.assignSerializer(gVar);
        }

        @Override // com.fasterxml.jackson.databind.ser.BeanPropertyWriter, com.fasterxml.jackson.databind.ser.PropertyWriter, com.fasterxml.jackson.databind.BeanProperty
        public void depositSchemaProperty(k kVar, l lVar) throws JsonMappingException {
            Class<?> activeView = lVar.getActiveView();
            if (activeView == null || this.f15692x.isAssignableFrom(activeView)) {
                super.depositSchemaProperty(kVar, lVar);
            }
        }

        @Override // com.fasterxml.jackson.databind.ser.BeanPropertyWriter
        /* renamed from: h */
        public b rename(NameTransformer nameTransformer) {
            return new b(this.f15691w.rename(nameTransformer), this.f15692x);
        }

        @Override // com.fasterxml.jackson.databind.ser.BeanPropertyWriter, com.fasterxml.jackson.databind.ser.PropertyWriter
        public void serializeAsElement(Object obj, JsonGenerator jsonGenerator, l lVar) throws Exception {
            Class<?> activeView = lVar.getActiveView();
            if (activeView != null && !this.f15692x.isAssignableFrom(activeView)) {
                this.f15691w.serializeAsPlaceholder(obj, jsonGenerator, lVar);
            } else {
                this.f15691w.serializeAsElement(obj, jsonGenerator, lVar);
            }
        }

        @Override // com.fasterxml.jackson.databind.ser.BeanPropertyWriter, com.fasterxml.jackson.databind.ser.PropertyWriter
        public void serializeAsField(Object obj, JsonGenerator jsonGenerator, l lVar) throws Exception {
            Class<?> activeView = lVar.getActiveView();
            if (activeView != null && !this.f15692x.isAssignableFrom(activeView)) {
                this.f15691w.serializeAsOmittedField(obj, jsonGenerator, lVar);
            } else {
                this.f15691w.serializeAsField(obj, jsonGenerator, lVar);
            }
        }
    }

    public static BeanPropertyWriter a(BeanPropertyWriter beanPropertyWriter, Class<?>[] clsArr) {
        if (clsArr.length == 1) {
            return new b(beanPropertyWriter, clsArr[0]);
        }
        return new C0122a(beanPropertyWriter, clsArr);
    }
}
