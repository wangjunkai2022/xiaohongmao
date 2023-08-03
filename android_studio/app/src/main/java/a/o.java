package a;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* compiled from: Dimension.java */
@Target({ElementType.METHOD, ElementType.PARAMETER, ElementType.FIELD, ElementType.LOCAL_VARIABLE, ElementType.ANNOTATION_TYPE})
@Documented
@Retention(RetentionPolicy.CLASS)
/* loaded from: classes.dex */
public @interface o {

    /* renamed from: a  reason: collision with root package name */
    public static final int f28a = 0;

    /* renamed from: b  reason: collision with root package name */
    public static final int f29b = 1;

    /* renamed from: c  reason: collision with root package name */
    public static final int f30c = 2;

    int unit() default 1;
}
