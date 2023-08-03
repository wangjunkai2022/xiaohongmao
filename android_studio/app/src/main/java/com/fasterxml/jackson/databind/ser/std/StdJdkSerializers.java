package com.fasterxml.jackson.databind.ser.std;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.e;
import com.fasterxml.jackson.databind.jsonFormatVisitors.f;
import com.fasterxml.jackson.databind.l;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Type;
import java.net.URI;
import java.net.URL;
import java.util.Collection;
import java.util.Currency;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public class StdJdkSerializers {

    /* loaded from: classes2.dex */
    public static class AtomicBooleanSerializer extends StdScalarSerializer<AtomicBoolean> {
        public AtomicBooleanSerializer() {
            super(AtomicBoolean.class, false);
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g, com.fasterxml.jackson.databind.jsonFormatVisitors.d
        public void acceptJsonFormatVisitor(f fVar, JavaType javaType) throws JsonMappingException {
            fVar.p(javaType);
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.ser.std.StdSerializer, d2.c
        public e getSchema(l lVar, Type type) {
            return d(TypedValues.Custom.S_BOOLEAN, true);
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
        public void serialize(AtomicBoolean atomicBoolean, JsonGenerator jsonGenerator, l lVar) throws IOException {
            jsonGenerator.O0(atomicBoolean.get());
        }
    }

    /* loaded from: classes2.dex */
    public static class AtomicIntegerSerializer extends StdScalarSerializer<AtomicInteger> {
        public AtomicIntegerSerializer() {
            super(AtomicInteger.class, false);
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g, com.fasterxml.jackson.databind.jsonFormatVisitors.d
        public void acceptJsonFormatVisitor(f fVar, JavaType javaType) throws JsonMappingException {
            r(fVar, javaType, JsonParser.NumberType.INT);
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.ser.std.StdSerializer, d2.c
        public e getSchema(l lVar, Type type) {
            return d(TypedValues.Custom.S_INT, true);
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
        public void serialize(AtomicInteger atomicInteger, JsonGenerator jsonGenerator, l lVar) throws IOException {
            jsonGenerator.a1(atomicInteger.get());
        }
    }

    /* loaded from: classes2.dex */
    public static class AtomicLongSerializer extends StdScalarSerializer<AtomicLong> {
        public AtomicLongSerializer() {
            super(AtomicLong.class, false);
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g, com.fasterxml.jackson.databind.jsonFormatVisitors.d
        public void acceptJsonFormatVisitor(f fVar, JavaType javaType) throws JsonMappingException {
            r(fVar, javaType, JsonParser.NumberType.LONG);
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.ser.std.StdSerializer, d2.c
        public e getSchema(l lVar, Type type) {
            return d(TypedValues.Custom.S_INT, true);
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
        public void serialize(AtomicLong atomicLong, JsonGenerator jsonGenerator, l lVar) throws IOException {
            jsonGenerator.b1(atomicLong.get());
        }
    }

    public static Collection<Map.Entry<Class<?>, Object>> a() {
        HashMap hashMap = new HashMap();
        hashMap.put(URL.class, new ToStringSerializer(URL.class));
        hashMap.put(URI.class, new ToStringSerializer(URI.class));
        hashMap.put(Currency.class, new ToStringSerializer(Currency.class));
        hashMap.put(UUID.class, new UUIDSerializer());
        hashMap.put(Pattern.class, new ToStringSerializer(Pattern.class));
        hashMap.put(Locale.class, new ToStringSerializer(Locale.class));
        hashMap.put(AtomicBoolean.class, AtomicBooleanSerializer.class);
        hashMap.put(AtomicInteger.class, AtomicIntegerSerializer.class);
        hashMap.put(AtomicLong.class, AtomicLongSerializer.class);
        hashMap.put(File.class, FileSerializer.class);
        hashMap.put(Class.class, ClassSerializer.class);
        NullSerializer nullSerializer = NullSerializer.instance;
        hashMap.put(Void.class, nullSerializer);
        hashMap.put(Void.TYPE, nullSerializer);
        return hashMap.entrySet();
    }
}
