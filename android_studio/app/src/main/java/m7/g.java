package m7;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* compiled from: SchedulerSupport.java */
@Target({ElementType.CONSTRUCTOR, ElementType.METHOD, ElementType.TYPE})
@Documented
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes3.dex */
public @interface g {

    /* renamed from: m2  reason: collision with root package name */
    public static final String f86956m2 = "none";

    /* renamed from: n2  reason: collision with root package name */
    public static final String f86957n2 = "custom";

    /* renamed from: o2  reason: collision with root package name */
    public static final String f86958o2 = "io.reactivex:computation";

    /* renamed from: p2  reason: collision with root package name */
    public static final String f86959p2 = "io.reactivex:io";

    /* renamed from: q2  reason: collision with root package name */
    public static final String f86960q2 = "io.reactivex:new-thread";

    /* renamed from: r2  reason: collision with root package name */
    public static final String f86961r2 = "io.reactivex:trampoline";

    /* renamed from: s2  reason: collision with root package name */
    public static final String f86962s2 = "io.reactivex:single";

    String value();
}
