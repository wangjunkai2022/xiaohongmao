package com.google.common.util.concurrent;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* compiled from: Partially.java */
@h3.b
/* loaded from: classes2.dex */
final class y0 {

    /* compiled from: Partially.java */
    @Target({ElementType.TYPE, ElementType.METHOD, ElementType.CONSTRUCTOR, ElementType.FIELD})
    @Documented
    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes2.dex */
    @interface a {
        String value();
    }

    private y0() {
    }
}
