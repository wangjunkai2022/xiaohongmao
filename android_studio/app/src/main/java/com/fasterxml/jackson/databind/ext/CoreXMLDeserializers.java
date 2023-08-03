package com.fasterxml.jackson.databind.ext;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.deser.i;
import com.fasterxml.jackson.databind.deser.std.FromStringDeserializer;
import java.io.IOException;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;
import javax.xml.datatype.DatatypeConfigurationException;
import javax.xml.datatype.DatatypeFactory;
import javax.xml.datatype.Duration;
import javax.xml.datatype.XMLGregorianCalendar;
import javax.xml.namespace.QName;

/* loaded from: classes.dex */
public class CoreXMLDeserializers extends i.a {

    /* renamed from: a  reason: collision with root package name */
    static final DatatypeFactory f15093a;

    /* renamed from: b  reason: collision with root package name */
    protected static final int f15094b = 1;

    /* renamed from: c  reason: collision with root package name */
    protected static final int f15095c = 2;

    /* renamed from: d  reason: collision with root package name */
    protected static final int f15096d = 3;

    /* loaded from: classes.dex */
    public static class Std extends FromStringDeserializer<Object> {

        /* renamed from: h  reason: collision with root package name */
        private static final long f15097h = 1;

        /* renamed from: g  reason: collision with root package name */
        protected final int f15098g;

        public Std(Class<?> cls, int i4) {
            super(cls);
            this.f15098g = i4;
        }

        protected XMLGregorianCalendar I0(DeserializationContext deserializationContext, Date date) {
            if (date == null) {
                return null;
            }
            GregorianCalendar gregorianCalendar = new GregorianCalendar();
            gregorianCalendar.setTime(date);
            TimeZone timeZone = deserializationContext.getTimeZone();
            if (timeZone != null) {
                gregorianCalendar.setTimeZone(timeZone);
            }
            return CoreXMLDeserializers.f15093a.newXMLGregorianCalendar(gregorianCalendar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.FromStringDeserializer
        public Object _deserialize(String str, DeserializationContext deserializationContext) throws IOException {
            int i4 = this.f15098g;
            if (i4 != 1) {
                if (i4 == 2) {
                    try {
                        return I0(deserializationContext, S(str, deserializationContext));
                    } catch (JsonMappingException unused) {
                        return CoreXMLDeserializers.f15093a.newXMLGregorianCalendar(str);
                    }
                } else if (i4 == 3) {
                    return QName.valueOf(str);
                } else {
                    throw new IllegalStateException();
                }
            }
            return CoreXMLDeserializers.f15093a.newDuration(str);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.FromStringDeserializer, com.fasterxml.jackson.databind.d
        public Object deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            if (this.f15098g == 2 && jsonParser.k1(JsonToken.VALUE_NUMBER_INT)) {
                return I0(deserializationContext, R(jsonParser, deserializationContext));
            }
            return super.deserialize(jsonParser, deserializationContext);
        }
    }

    static {
        try {
            f15093a = DatatypeFactory.newInstance();
        } catch (DatatypeConfigurationException e4) {
            throw new RuntimeException(e4);
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.i.a, com.fasterxml.jackson.databind.deser.i
    public com.fasterxml.jackson.databind.d<?> findBeanDeserializer(JavaType javaType, DeserializationConfig deserializationConfig, com.fasterxml.jackson.databind.b bVar) {
        Class<?> rawClass = javaType.getRawClass();
        if (rawClass == QName.class) {
            return new Std(rawClass, 3);
        }
        if (rawClass == XMLGregorianCalendar.class) {
            return new Std(rawClass, 2);
        }
        if (rawClass == Duration.class) {
            return new Std(rawClass, 1);
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.deser.i.a, com.fasterxml.jackson.databind.deser.i
    public boolean hasDeserializerFor(DeserializationConfig deserializationConfig, Class<?> cls) {
        return cls == QName.class || cls == XMLGregorianCalendar.class || cls == Duration.class;
    }
}
