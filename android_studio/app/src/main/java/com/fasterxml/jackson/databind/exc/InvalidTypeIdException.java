package com.fasterxml.jackson.databind.exc;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.JavaType;

/* loaded from: classes.dex */
public class InvalidTypeIdException extends MismatchedInputException {

    /* renamed from: l  reason: collision with root package name */
    private static final long f15082l = 1;

    /* renamed from: j  reason: collision with root package name */
    protected final JavaType f15083j;

    /* renamed from: k  reason: collision with root package name */
    protected final String f15084k;

    public InvalidTypeIdException(JsonParser jsonParser, String str, JavaType javaType, String str2) {
        super(jsonParser, str);
        this.f15083j = javaType;
        this.f15084k = str2;
    }

    public static InvalidTypeIdException from(JsonParser jsonParser, String str, JavaType javaType, String str2) {
        return new InvalidTypeIdException(jsonParser, str, javaType, str2);
    }

    public JavaType getBaseType() {
        return this.f15083j;
    }

    public String getTypeId() {
        return this.f15084k;
    }
}
