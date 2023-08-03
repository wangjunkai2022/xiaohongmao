package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import java.io.IOException;

/* compiled from: DeserializationProblemHandler.java */
/* loaded from: classes.dex */
public abstract class f {

    /* renamed from: a  reason: collision with root package name */
    public static final Object f14686a = new Object();

    public Object a(DeserializationContext deserializationContext, Class<?> cls, Object obj, Throwable th) throws IOException {
        return f14686a;
    }

    @Deprecated
    public Object b(DeserializationContext deserializationContext, Class<?> cls, JsonParser jsonParser, String str) throws IOException {
        return f14686a;
    }

    public Object c(DeserializationContext deserializationContext, Class<?> cls, ValueInstantiator valueInstantiator, JsonParser jsonParser, String str) throws IOException {
        return b(deserializationContext, cls, jsonParser, str);
    }

    public JavaType d(DeserializationContext deserializationContext, JavaType javaType, com.fasterxml.jackson.databind.jsontype.c cVar, String str) throws IOException {
        return null;
    }

    public Object e(DeserializationContext deserializationContext, JavaType javaType, JsonToken jsonToken, JsonParser jsonParser, String str) throws IOException {
        return f(deserializationContext, javaType.getRawClass(), jsonToken, jsonParser, str);
    }

    @Deprecated
    public Object f(DeserializationContext deserializationContext, Class<?> cls, JsonToken jsonToken, JsonParser jsonParser, String str) throws IOException {
        return f14686a;
    }

    public boolean g(DeserializationContext deserializationContext, JsonParser jsonParser, com.fasterxml.jackson.databind.d<?> dVar, Object obj, String str) throws IOException {
        return false;
    }

    public JavaType h(DeserializationContext deserializationContext, JavaType javaType, String str, com.fasterxml.jackson.databind.jsontype.c cVar, String str2) throws IOException {
        return null;
    }

    public Object i(DeserializationContext deserializationContext, Class<?> cls, String str, String str2) throws IOException {
        return f14686a;
    }

    public Object j(DeserializationContext deserializationContext, JavaType javaType, Object obj, JsonParser jsonParser) throws IOException {
        return f14686a;
    }

    public Object k(DeserializationContext deserializationContext, Class<?> cls, Number number, String str) throws IOException {
        return f14686a;
    }

    public Object l(DeserializationContext deserializationContext, Class<?> cls, String str, String str2) throws IOException {
        return f14686a;
    }
}
