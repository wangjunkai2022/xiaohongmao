package p7;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* compiled from: SchedulerSupport.java */
@Target({ElementType.CONSTRUCTOR, ElementType.METHOD, ElementType.TYPE})
@Documented
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes4.dex */
public @interface g {

    /* renamed from: t2  reason: collision with root package name */
    public static final String f93110t2 = "none";

    /* renamed from: u2  reason: collision with root package name */
    public static final String f93111u2 = "custom";

    /* renamed from: v2  reason: collision with root package name */
    public static final String f93112v2 = "io.reactivex:computation";

    /* renamed from: w2  reason: collision with root package name */
    public static final String f93113w2 = "io.reactivex:io";

    /* renamed from: x2  reason: collision with root package name */
    public static final String f93114x2 = "io.reactivex:new-thread";

    /* renamed from: y2  reason: collision with root package name */
    public static final String f93115y2 = "io.reactivex:trampoline";

    /* renamed from: z2  reason: collision with root package name */
    public static final String f93116z2 = "io.reactivex:single";

    String value();
}
