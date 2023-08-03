package a;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* compiled from: VisibleForTesting.java */
@Retention(RetentionPolicy.CLASS)
/* loaded from: classes.dex */
public @interface u0 {

    /* renamed from: d  reason: collision with root package name */
    public static final int f31d = 2;

    /* renamed from: e  reason: collision with root package name */
    public static final int f32e = 3;

    /* renamed from: f  reason: collision with root package name */
    public static final int f33f = 4;

    /* renamed from: g  reason: collision with root package name */
    public static final int f34g = 5;

    int otherwise() default 2;
}
