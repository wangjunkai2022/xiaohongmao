package com.facebook.imagepipeline.cache;

import android.app.ActivityManager;
import com.facebook.infer.annotation.Nullsafe;
import java.util.concurrent.TimeUnit;

/* compiled from: DefaultBitmapMemoryCacheParamsSupplier.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class l implements com.facebook.common.internal.m<v> {

    /* renamed from: b  reason: collision with root package name */
    private static final int f12128b = 256;

    /* renamed from: c  reason: collision with root package name */
    private static final int f12129c = Integer.MAX_VALUE;

    /* renamed from: d  reason: collision with root package name */
    private static final int f12130d = Integer.MAX_VALUE;

    /* renamed from: e  reason: collision with root package name */
    private static final int f12131e = Integer.MAX_VALUE;

    /* renamed from: f  reason: collision with root package name */
    private static final long f12132f = TimeUnit.MINUTES.toMillis(5);

    /* renamed from: a  reason: collision with root package name */
    private final ActivityManager f12133a;

    public l(ActivityManager activityManager) {
        this.f12133a = activityManager;
    }

    private int b() {
        int min = Math.min(this.f12133a.getMemoryClass() * 1048576, Integer.MAX_VALUE);
        if (min < 33554432) {
            return 4194304;
        }
        if (min < 67108864) {
            return 6291456;
        }
        return min / 4;
    }

    @Override // com.facebook.common.internal.m
    /* renamed from: a */
    public v get() {
        return new v(b(), 256, Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE, f12132f);
    }
}
