package dagger.internal;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* compiled from: QualifierMetadata.java */
@Target({ElementType.TYPE})
@Retention(RetentionPolicy.CLASS)
/* loaded from: classes3.dex */
public @interface r {
    String[] value() default {};
}