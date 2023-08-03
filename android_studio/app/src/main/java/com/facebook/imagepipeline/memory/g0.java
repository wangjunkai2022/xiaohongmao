package com.facebook.imagepipeline.memory;

import com.facebook.infer.annotation.Nullsafe;

/* compiled from: PoolStatsTracker.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public interface g0 {

    /* renamed from: a  reason: collision with root package name */
    public static final String f12622a = "buckets_used_";

    /* renamed from: b  reason: collision with root package name */
    public static final String f12623b = "used_count";

    /* renamed from: c  reason: collision with root package name */
    public static final String f12624c = "used_bytes";

    /* renamed from: d  reason: collision with root package name */
    public static final String f12625d = "free_count";

    /* renamed from: e  reason: collision with root package name */
    public static final String f12626e = "free_bytes";

    /* renamed from: f  reason: collision with root package name */
    public static final String f12627f = "soft_cap";

    /* renamed from: g  reason: collision with root package name */
    public static final String f12628g = "hard_cap";

    void a();

    void b(int sizeInBytes);

    void c(int sizeInBytes);

    void d(int size);

    void e(int bucketedSize);

    void f(BasePool basePool);

    void g();
}
