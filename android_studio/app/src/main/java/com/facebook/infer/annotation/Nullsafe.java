package com.facebook.infer.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import kotlin.annotations.jvm.MigrationStatus;
import kotlin.annotations.jvm.UnderMigration;
import r7.g;
import t7.d;

@Target({ElementType.TYPE})
@UnderMigration(status = MigrationStatus.STRICT)
@g
@d({ElementType.METHOD, ElementType.PARAMETER})
@Retention(RetentionPolicy.CLASS)
/* loaded from: classes.dex */
public @interface Nullsafe {

    /* loaded from: classes.dex */
    public enum Mode {
        LOCAL,
        STRICT
    }

    /* loaded from: classes.dex */
    public @interface a {
        boolean trustAll() default false;

        Class[] value();
    }

    a trustOnly() default @a(trustAll = true, value = {});

    Mode value();
}
