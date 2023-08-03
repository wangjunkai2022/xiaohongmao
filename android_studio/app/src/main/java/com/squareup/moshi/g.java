package com.squareup.moshi;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* compiled from: Json.java */
@Documented
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes3.dex */
public @interface g {

    /* renamed from: d1  reason: collision with root package name */
    public static final String f55599d1 = "\u0000";

    boolean ignore() default false;

    String name() default "\u0000";
}
