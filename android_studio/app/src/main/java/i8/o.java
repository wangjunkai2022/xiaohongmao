package i8;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* compiled from: SuppressAjWarnings.java */
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes4.dex */
public @interface o {
    String[] value() default {""};
}
