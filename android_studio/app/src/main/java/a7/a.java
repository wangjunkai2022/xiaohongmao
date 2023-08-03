package a7;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* compiled from: AggregatedDeps.java */
@Retention(RetentionPolicy.CLASS)
/* loaded from: classes3.dex */
public @interface a {
    String[] componentEntryPoints() default {};

    String[] components();

    String[] entryPoints() default {};

    String[] modules() default {};

    String[] replaces() default {};

    String test() default "";
}
