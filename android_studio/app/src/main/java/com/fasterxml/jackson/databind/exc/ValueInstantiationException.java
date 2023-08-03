package com.fasterxml.jackson.databind.exc;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;

/* loaded from: classes.dex */
public class ValueInstantiationException extends JsonMappingException {

    /* renamed from: i  reason: collision with root package name */
    protected final JavaType f15092i;

    protected ValueInstantiationException(JsonParser jsonParser, String str, JavaType javaType, Throwable th) {
        super(jsonParser, str, th);
        this.f15092i = javaType;
    }

    public static ValueInstantiationException from(JsonParser jsonParser, String str, JavaType javaType) {
        return new ValueInstantiationException(jsonParser, str, javaType);
    }

    public JavaType getType() {
        return this.f15092i;
    }

    public static ValueInstantiationException from(JsonParser jsonParser, String str, JavaType javaType, Throwable th) {
        return new ValueInstantiationException(jsonParser, str, javaType, th);
    }

    protected ValueInstantiationException(JsonParser jsonParser, String str, JavaType javaType) {
        super(jsonParser, str);
        this.f15092i = javaType;
    }
}
