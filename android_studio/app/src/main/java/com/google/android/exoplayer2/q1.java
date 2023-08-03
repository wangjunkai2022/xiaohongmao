package com.google.android.exoplayer2;

import android.os.Bundle;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.h;

/* compiled from: PercentageRating.java */
/* loaded from: classes2.dex */
public final class q1 extends c2 {

    /* renamed from: j  reason: collision with root package name */
    private static final int f24506j = 1;

    /* renamed from: k  reason: collision with root package name */
    private static final int f24507k = 1;

    /* renamed from: l  reason: collision with root package name */
    public static final h.a<q1> f24508l = p1.f24487a;

    /* renamed from: i  reason: collision with root package name */
    private final float f24509i;

    public q1() {
        this.f24509i = -1.0f;
    }

    private static String d(int i4) {
        return Integer.toString(i4, 36);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static q1 f(Bundle bundle) {
        com.google.android.exoplayer2.util.a.a(bundle.getInt(d(0), -1) == 1);
        float f10 = bundle.getFloat(d(1), -1.0f);
        return f10 == -1.0f ? new q1() : new q1(f10);
    }

    @Override // com.google.android.exoplayer2.c2
    public boolean c() {
        return this.f24509i != -1.0f;
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof q1) && this.f24509i == ((q1) obj).f24509i;
    }

    public float g() {
        return this.f24509i;
    }

    public int hashCode() {
        return com.google.common.base.w.b(Float.valueOf(this.f24509i));
    }

    @Override // com.google.android.exoplayer2.h
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(d(0), 1);
        bundle.putFloat(d(1), this.f24509i);
        return bundle;
    }

    public q1(@FloatRange(from = 0.0d, to = 100.0d) float f10) {
        com.google.android.exoplayer2.util.a.b(f10 >= 0.0f && f10 <= 100.0f, "percent must be in the range of [0, 100]");
        this.f24509i = f10;
    }
}
