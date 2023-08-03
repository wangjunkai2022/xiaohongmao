package com.fasterxml.jackson.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@com.fasterxml.jackson.annotation.a
@Target({ElementType.ANNOTATION_TYPE, ElementType.TYPE, ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface JsonTypeInfo {

    /* loaded from: classes.dex */
    public enum As {
        PROPERTY,
        WRAPPER_OBJECT,
        WRAPPER_ARRAY,
        EXTERNAL_PROPERTY,
        EXISTING_PROPERTY
    }

    /* loaded from: classes.dex */
    public enum Id {
        NONE(null),
        CLASS("@class"),
        MINIMAL_CLASS("@c"),
        NAME("@type"),
        DEDUCTION(null),
        CUSTOM(null);
        

        /* renamed from: a  reason: collision with root package name */
        private final String f13646a;

        Id(String str) {
            this.f13646a = str;
        }

        public String getDefaultPropertyName() {
            return this.f13646a;
        }
    }

    @Deprecated
    /* loaded from: classes.dex */
    public static abstract class a {
    }

    Class<?> defaultImpl() default JsonTypeInfo.class;

    As include() default As.PROPERTY;

    String property() default "";

    Id use();

    boolean visible() default false;
}
