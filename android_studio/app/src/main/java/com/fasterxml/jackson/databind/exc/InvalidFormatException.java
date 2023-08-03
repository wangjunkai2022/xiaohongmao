package com.fasterxml.jackson.databind.exc;

import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;

/* loaded from: classes.dex */
public class InvalidFormatException extends MismatchedInputException {

    /* renamed from: k  reason: collision with root package name */
    private static final long f15078k = 1;

    /* renamed from: j  reason: collision with root package name */
    protected final Object f15079j;

    @Deprecated
    public InvalidFormatException(String str, Object obj, Class<?> cls) {
        super(null, str);
        this.f15079j = obj;
        this.f15085i = cls;
    }

    public static InvalidFormatException from(JsonParser jsonParser, String str, Object obj, Class<?> cls) {
        return new InvalidFormatException(jsonParser, str, obj, cls);
    }

    public Object getValue() {
        return this.f15079j;
    }

    @Deprecated
    public InvalidFormatException(String str, JsonLocation jsonLocation, Object obj, Class<?> cls) {
        super((JsonParser) null, str, jsonLocation);
        this.f15079j = obj;
        this.f15085i = cls;
    }

    public InvalidFormatException(JsonParser jsonParser, String str, Object obj, Class<?> cls) {
        super(jsonParser, str, cls);
        this.f15079j = obj;
    }
}
