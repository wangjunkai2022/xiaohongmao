package com.fasterxml.jackson.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* compiled from: JsonSubTypes.java */
@com.fasterxml.jackson.annotation.a
@Target({ElementType.ANNOTATION_TYPE, ElementType.TYPE, ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface w {

    /* compiled from: JsonSubTypes.java */
    /* loaded from: classes.dex */
    public @interface a {
        String name() default "";

        String[] names() default {};

        Class<?> value();
    }

    a[] value();
}
