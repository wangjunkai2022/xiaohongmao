package com.fasterxml.jackson.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@a
@Target({ElementType.ANNOTATION_TYPE, ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface JsonProperty {

    /* renamed from: x0  reason: collision with root package name */
    public static final String f13637x0 = "";

    /* renamed from: y0  reason: collision with root package name */
    public static final int f13638y0 = -1;

    /* loaded from: classes.dex */
    public enum Access {
        AUTO,
        READ_ONLY,
        WRITE_ONLY,
        READ_WRITE
    }

    Access access() default Access.AUTO;

    String defaultValue() default "";

    int index() default -1;

    String namespace() default "";

    boolean required() default false;

    String value() default "";
}
