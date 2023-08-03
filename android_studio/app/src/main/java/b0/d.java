package b0;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* compiled from: GlideOption.java */
@Target({ElementType.METHOD})
@Retention(RetentionPolicy.CLASS)
/* loaded from: classes.dex */
public @interface d {

    /* renamed from: h  reason: collision with root package name */
    public static final int f658h = 0;

    /* renamed from: i  reason: collision with root package name */
    public static final int f659i = 1;

    /* renamed from: j  reason: collision with root package name */
    public static final int f660j = 2;

    boolean memoizeStaticMethod() default false;

    int override() default 0;

    boolean skipStaticMethod() default false;

    String staticMethodName() default "";
}
