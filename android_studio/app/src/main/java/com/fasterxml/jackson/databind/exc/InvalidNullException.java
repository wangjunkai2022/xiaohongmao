package com.fasterxml.jackson.databind.exc;

import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.util.g;

/* loaded from: classes.dex */
public class InvalidNullException extends MismatchedInputException {

    /* renamed from: k  reason: collision with root package name */
    private static final long f15080k = 1;

    /* renamed from: j  reason: collision with root package name */
    protected final PropertyName f15081j;

    protected InvalidNullException(DeserializationContext deserializationContext, String str, PropertyName propertyName) {
        super(deserializationContext.getParser(), str);
        this.f15081j = propertyName;
    }

    public static InvalidNullException from(DeserializationContext deserializationContext, PropertyName propertyName, JavaType javaType) {
        InvalidNullException invalidNullException = new InvalidNullException(deserializationContext, String.format("Invalid `null` value encountered for property %s", g.o0(propertyName, "<UNKNOWN>")), propertyName);
        if (javaType != null) {
            invalidNullException.setTargetType(javaType);
        }
        return invalidNullException;
    }

    public PropertyName getPropertyName() {
        return this.f15081j;
    }
}
