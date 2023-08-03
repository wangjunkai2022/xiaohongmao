package com.fasterxml.jackson.databind.exc;

import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.util.g;

/* loaded from: classes.dex */
public class MismatchedInputException extends JsonMappingException {

    /* renamed from: i  reason: collision with root package name */
    protected Class<?> f15085i;

    /* JADX INFO: Access modifiers changed from: protected */
    public MismatchedInputException(JsonParser jsonParser, String str) {
        this(jsonParser, str, (JavaType) null);
    }

    @Deprecated
    public static MismatchedInputException from(JsonParser jsonParser, String str) {
        return from(jsonParser, (Class<?>) null, str);
    }

    public Class<?> getTargetType() {
        return this.f15085i;
    }

    public MismatchedInputException setTargetType(JavaType javaType) {
        this.f15085i = javaType.getRawClass();
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public MismatchedInputException(JsonParser jsonParser, String str, JsonLocation jsonLocation) {
        super(jsonParser, str, jsonLocation);
    }

    public static MismatchedInputException from(JsonParser jsonParser, JavaType javaType, String str) {
        return new MismatchedInputException(jsonParser, str, javaType);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public MismatchedInputException(JsonParser jsonParser, String str, Class<?> cls) {
        super(jsonParser, str);
        this.f15085i = cls;
    }

    public static MismatchedInputException from(JsonParser jsonParser, Class<?> cls, String str) {
        return new MismatchedInputException(jsonParser, str, cls);
    }

    protected MismatchedInputException(JsonParser jsonParser, String str, JavaType javaType) {
        super(jsonParser, str);
        this.f15085i = g.p0(javaType);
    }
}
