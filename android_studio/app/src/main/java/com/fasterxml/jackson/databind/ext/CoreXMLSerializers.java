package com.fasterxml.jackson.databind.ext;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.type.WritableTypeId;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.g;
import com.fasterxml.jackson.databind.jsonFormatVisitors.f;
import com.fasterxml.jackson.databind.ser.e;
import com.fasterxml.jackson.databind.ser.l;
import com.fasterxml.jackson.databind.ser.std.CalendarSerializer;
import com.fasterxml.jackson.databind.ser.std.StdSerializer;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;
import java.io.IOException;
import java.util.Calendar;
import javax.xml.datatype.Duration;
import javax.xml.datatype.XMLGregorianCalendar;
import javax.xml.namespace.QName;

/* loaded from: classes.dex */
public class CoreXMLSerializers extends l.a {

    /* loaded from: classes.dex */
    public static class XMLGregorianCalendarSerializer extends StdSerializer<XMLGregorianCalendar> implements e {

        /* renamed from: e  reason: collision with root package name */
        static final XMLGregorianCalendarSerializer f15099e = new XMLGregorianCalendarSerializer();

        /* renamed from: d  reason: collision with root package name */
        final g<Object> f15100d;

        public XMLGregorianCalendarSerializer() {
            this(CalendarSerializer.instance);
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g, com.fasterxml.jackson.databind.jsonFormatVisitors.d
        public void acceptJsonFormatVisitor(f fVar, JavaType javaType) throws JsonMappingException {
            this.f15100d.acceptJsonFormatVisitor(fVar, null);
        }

        @Override // com.fasterxml.jackson.databind.ser.e
        public g<?> createContextual(com.fasterxml.jackson.databind.l lVar, BeanProperty beanProperty) throws JsonMappingException {
            g<?> handlePrimaryContextualization = lVar.handlePrimaryContextualization(this.f15100d, beanProperty);
            return handlePrimaryContextualization != this.f15100d ? new XMLGregorianCalendarSerializer(handlePrimaryContextualization) : this;
        }

        @Override // com.fasterxml.jackson.databind.g
        public g<?> getDelegatee() {
            return this.f15100d;
        }

        protected Calendar v(XMLGregorianCalendar xMLGregorianCalendar) {
            if (xMLGregorianCalendar == null) {
                return null;
            }
            return xMLGregorianCalendar.toGregorianCalendar();
        }

        protected XMLGregorianCalendarSerializer(g<?> gVar) {
            super(XMLGregorianCalendar.class);
            this.f15100d = gVar;
        }

        @Override // com.fasterxml.jackson.databind.g
        public boolean isEmpty(com.fasterxml.jackson.databind.l lVar, XMLGregorianCalendar xMLGregorianCalendar) {
            return this.f15100d.isEmpty(lVar, v(xMLGregorianCalendar));
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
        public void serialize(XMLGregorianCalendar xMLGregorianCalendar, JsonGenerator jsonGenerator, com.fasterxml.jackson.databind.l lVar) throws IOException {
            this.f15100d.serialize(v(xMLGregorianCalendar), jsonGenerator, lVar);
        }

        @Override // com.fasterxml.jackson.databind.g
        public void serializeWithType(XMLGregorianCalendar xMLGregorianCalendar, JsonGenerator jsonGenerator, com.fasterxml.jackson.databind.l lVar, com.fasterxml.jackson.databind.jsontype.f fVar) throws IOException {
            WritableTypeId o9 = fVar.o(jsonGenerator, fVar.h(xMLGregorianCalendar, XMLGregorianCalendar.class, JsonToken.VALUE_STRING));
            serialize(xMLGregorianCalendar, jsonGenerator, lVar);
            fVar.v(jsonGenerator, o9);
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.l.a, com.fasterxml.jackson.databind.ser.l
    public g<?> findSerializer(SerializationConfig serializationConfig, JavaType javaType, com.fasterxml.jackson.databind.b bVar) {
        Class<?> rawClass = javaType.getRawClass();
        if (!Duration.class.isAssignableFrom(rawClass) && !QName.class.isAssignableFrom(rawClass)) {
            if (XMLGregorianCalendar.class.isAssignableFrom(rawClass)) {
                return XMLGregorianCalendarSerializer.f15099e;
            }
            return null;
        }
        return ToStringSerializer.instance;
    }
}
