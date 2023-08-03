package com.fasterxml.jackson.databind.annotation;

import com.fasterxml.jackson.annotation.a;
import com.fasterxml.jackson.databind.g;
import com.fasterxml.jackson.databind.util.h;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@a
@Target({ElementType.ANNOTATION_TYPE, ElementType.METHOD, ElementType.FIELD, ElementType.TYPE, ElementType.PARAMETER})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface JsonSerialize {

    @Deprecated
    /* loaded from: classes.dex */
    public enum Inclusion {
        ALWAYS,
        NON_NULL,
        NON_DEFAULT,
        NON_EMPTY,
        DEFAULT_INCLUSION
    }

    /* loaded from: classes.dex */
    public enum Typing {
        DYNAMIC,
        STATIC,
        DEFAULT_TYPING
    }

    Class<?> as() default Void.class;

    Class<?> contentAs() default Void.class;

    Class<? extends h> contentConverter() default h.a.class;

    Class<? extends g> contentUsing() default g.a.class;

    Class<? extends h> converter() default h.a.class;

    @Deprecated
    Inclusion include() default Inclusion.DEFAULT_INCLUSION;

    Class<?> keyAs() default Void.class;

    Class<? extends g> keyUsing() default g.a.class;

    Class<? extends g> nullsUsing() default g.a.class;

    Typing typing() default Typing.DEFAULT_TYPING;

    Class<? extends g> using() default g.a.class;
}
