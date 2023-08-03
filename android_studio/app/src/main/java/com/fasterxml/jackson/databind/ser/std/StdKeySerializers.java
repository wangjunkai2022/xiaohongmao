package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.g;
import com.fasterxml.jackson.databind.jsonFormatVisitors.f;
import com.fasterxml.jackson.databind.l;
import com.fasterxml.jackson.databind.ser.impl.c;
import com.fasterxml.jackson.databind.util.EnumValues;
import java.io.IOException;
import java.util.Calendar;
import java.util.Date;
import java.util.UUID;

/* loaded from: classes2.dex */
public abstract class StdKeySerializers {

    /* renamed from: a  reason: collision with root package name */
    protected static final g<Object> f15834a = new StdKeySerializer();

    /* renamed from: b  reason: collision with root package name */
    protected static final g<Object> f15835b = new StringKeySerializer();

    /* loaded from: classes2.dex */
    public static class Default extends StdSerializer<Object> {

        /* renamed from: e  reason: collision with root package name */
        static final int f15836e = 1;

        /* renamed from: f  reason: collision with root package name */
        static final int f15837f = 2;

        /* renamed from: g  reason: collision with root package name */
        static final int f15838g = 3;

        /* renamed from: h  reason: collision with root package name */
        static final int f15839h = 4;

        /* renamed from: i  reason: collision with root package name */
        static final int f15840i = 5;

        /* renamed from: j  reason: collision with root package name */
        static final int f15841j = 6;

        /* renamed from: k  reason: collision with root package name */
        static final int f15842k = 7;

        /* renamed from: l  reason: collision with root package name */
        static final int f15843l = 8;

        /* renamed from: d  reason: collision with root package name */
        protected final int f15844d;

        public Default(int i4, Class<?> cls) {
            super(cls, false);
            this.f15844d = i4;
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
        public void serialize(Object obj, JsonGenerator jsonGenerator, l lVar) throws IOException {
            String name;
            switch (this.f15844d) {
                case 1:
                    lVar.defaultSerializeDateKey((Date) obj, jsonGenerator);
                    return;
                case 2:
                    lVar.defaultSerializeDateKey(((Calendar) obj).getTimeInMillis(), jsonGenerator);
                    return;
                case 3:
                    jsonGenerator.V0(((Class) obj).getName());
                    return;
                case 4:
                    if (lVar.isEnabled(SerializationFeature.WRITE_ENUMS_USING_TO_STRING)) {
                        name = obj.toString();
                    } else {
                        Enum r32 = (Enum) obj;
                        if (lVar.isEnabled(SerializationFeature.WRITE_ENUM_KEYS_USING_INDEX)) {
                            name = String.valueOf(r32.ordinal());
                        } else {
                            name = r32.name();
                        }
                    }
                    jsonGenerator.V0(name);
                    return;
                case 5:
                case 6:
                    jsonGenerator.T0(((Number) obj).longValue());
                    return;
                case 7:
                    jsonGenerator.V0(lVar.getConfig().getBase64Variant().encode((byte[]) obj));
                    return;
                default:
                    jsonGenerator.V0(obj.toString());
                    return;
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class Dynamic extends StdSerializer<Object> {

        /* renamed from: d  reason: collision with root package name */
        protected transient c f15845d;

        public Dynamic() {
            super(String.class, false);
            this.f15845d = c.c();
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g, com.fasterxml.jackson.databind.jsonFormatVisitors.d
        public void acceptJsonFormatVisitor(f fVar, JavaType javaType) throws JsonMappingException {
            t(fVar, javaType);
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
        public void serialize(Object obj, JsonGenerator jsonGenerator, l lVar) throws IOException {
            Class<?> cls = obj.getClass();
            c cVar = this.f15845d;
            g<Object> m9 = cVar.m(cls);
            if (m9 == null) {
                m9 = v(cVar, cls, lVar);
            }
            m9.serialize(obj, jsonGenerator, lVar);
        }

        protected g<Object> v(c cVar, Class<?> cls, l lVar) throws JsonMappingException {
            if (cls == Object.class) {
                Default r42 = new Default(8, cls);
                this.f15845d = cVar.l(cls, r42);
                return r42;
            }
            c.d e4 = cVar.e(cls, lVar, null);
            c cVar2 = e4.f15708b;
            if (cVar != cVar2) {
                this.f15845d = cVar2;
            }
            return e4.f15707a;
        }

        Object w() {
            this.f15845d = c.c();
            return this;
        }
    }

    /* loaded from: classes2.dex */
    public static class EnumKeySerializer extends StdSerializer<Object> {

        /* renamed from: d  reason: collision with root package name */
        protected final EnumValues f15846d;

        protected EnumKeySerializer(Class<?> cls, EnumValues enumValues) {
            super(cls, false);
            this.f15846d = enumValues;
        }

        public static EnumKeySerializer construct(Class<?> cls, EnumValues enumValues) {
            return new EnumKeySerializer(cls, enumValues);
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
        public void serialize(Object obj, JsonGenerator jsonGenerator, l lVar) throws IOException {
            if (lVar.isEnabled(SerializationFeature.WRITE_ENUMS_USING_TO_STRING)) {
                jsonGenerator.V0(obj.toString());
                return;
            }
            Enum<?> r22 = (Enum) obj;
            if (lVar.isEnabled(SerializationFeature.WRITE_ENUM_KEYS_USING_INDEX)) {
                jsonGenerator.V0(String.valueOf(r22.ordinal()));
            } else {
                jsonGenerator.U0(this.f15846d.serializedValueFor(r22));
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class StringKeySerializer extends StdSerializer<Object> {
        public StringKeySerializer() {
            super(String.class, false);
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
        public void serialize(Object obj, JsonGenerator jsonGenerator, l lVar) throws IOException {
            jsonGenerator.V0((String) obj);
        }
    }

    @Deprecated
    public static g<Object> a() {
        return f15834a;
    }

    public static g<Object> b(SerializationConfig serializationConfig, Class<?> cls) {
        if (cls != null) {
            if (cls == Enum.class) {
                return new Dynamic();
            }
            if (com.fasterxml.jackson.databind.util.g.X(cls)) {
                return EnumKeySerializer.construct(cls, EnumValues.constructFromName(serializationConfig, cls));
            }
        }
        return new Default(8, cls);
    }

    public static g<Object> c(SerializationConfig serializationConfig, Class<?> cls, boolean z9) {
        if (cls != null && cls != Object.class) {
            if (cls == String.class) {
                return f15835b;
            }
            if (cls.isPrimitive()) {
                cls = com.fasterxml.jackson.databind.util.g.A0(cls);
            }
            if (cls == Integer.class) {
                return new Default(5, cls);
            }
            if (cls == Long.class) {
                return new Default(6, cls);
            }
            if (!cls.isPrimitive() && !Number.class.isAssignableFrom(cls)) {
                if (cls == Class.class) {
                    return new Default(3, cls);
                }
                if (Date.class.isAssignableFrom(cls)) {
                    return new Default(1, cls);
                }
                if (Calendar.class.isAssignableFrom(cls)) {
                    return new Default(2, cls);
                }
                if (cls == UUID.class) {
                    return new Default(8, cls);
                }
                if (cls == byte[].class) {
                    return new Default(7, cls);
                }
                if (z9) {
                    return new Default(8, cls);
                }
                return null;
            }
            return new Default(8, cls);
        }
        return new Dynamic();
    }
}
