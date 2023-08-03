package com.fasterxml.jackson.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* compiled from: JsonIdentityInfo.java */
@a
@Target({ElementType.ANNOTATION_TYPE, ElementType.TYPE, ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface l {
    Class<? extends ObjectIdGenerator<?>> generator();

    String property() default "@id";

    Class<? extends c0> resolver() default d0.class;

    Class<?> scope() default Object.class;
}
