package a;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* compiled from: RequiresPermission.java */
@Target({ElementType.ANNOTATION_TYPE, ElementType.METHOD, ElementType.CONSTRUCTOR, ElementType.FIELD, ElementType.PARAMETER})
@Retention(RetentionPolicy.CLASS)
/* loaded from: classes.dex */
public @interface m0 {

    /* compiled from: RequiresPermission.java */
    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER})
    /* loaded from: classes.dex */
    public @interface a {
        m0 value() default @m0;
    }

    /* compiled from: RequiresPermission.java */
    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER})
    /* loaded from: classes.dex */
    public @interface b {
        m0 value() default @m0;
    }

    String[] allOf() default {};

    String[] anyOf() default {};

    boolean conditional() default false;

    String value() default "";
}
