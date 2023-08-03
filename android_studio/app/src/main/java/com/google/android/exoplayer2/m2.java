package com.google.android.exoplayer2;

import android.os.Bundle;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.h;

/* compiled from: StarRating.java */
/* loaded from: classes2.dex */
public final class m2 extends c2 {

    /* renamed from: k  reason: collision with root package name */
    private static final int f23934k = 2;

    /* renamed from: l  reason: collision with root package name */
    private static final int f23935l = 5;

    /* renamed from: m  reason: collision with root package name */
    private static final int f23936m = 1;

    /* renamed from: n  reason: collision with root package name */
    private static final int f23937n = 2;

    /* renamed from: o  reason: collision with root package name */
    public static final h.a<m2> f23938o = l2.f23872a;
    @IntRange(from = 1)

    /* renamed from: i  reason: collision with root package name */
    private final int f23939i;

    /* renamed from: j  reason: collision with root package name */
    private final float f23940j;

    public m2(@IntRange(from = 1) int i4) {
        com.google.android.exoplayer2.util.a.b(i4 > 0, "maxStars must be a positive integer");
        this.f23939i = i4;
        this.f23940j = -1.0f;
    }

    private static String d(int i4) {
        return Integer.toString(i4, 36);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static m2 f(Bundle bundle) {
        com.google.android.exoplayer2.util.a.a(bundle.getInt(d(0), -1) == 2);
        int i4 = bundle.getInt(d(1), 5);
        float f10 = bundle.getFloat(d(2), -1.0f);
        if (f10 == -1.0f) {
            return new m2(i4);
        }
        return new m2(i4, f10);
    }

    @Override // com.google.android.exoplayer2.c2
    public boolean c() {
        return this.f23940j != -1.0f;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof m2) {
            m2 m2Var = (m2) obj;
            return this.f23939i == m2Var.f23939i && this.f23940j == m2Var.f23940j;
        }
        return false;
    }

    @IntRange(from = 1)
    public int g() {
        return this.f23939i;
    }

    public float h() {
        return this.f23940j;
    }

    public int hashCode() {
        return com.google.common.base.w.b(Integer.valueOf(this.f23939i), Float.valueOf(this.f23940j));
    }

    @Override // com.google.android.exoplayer2.h
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(d(0), 2);
        bundle.putInt(d(1), this.f23939i);
        bundle.putFloat(d(2), this.f23940j);
        return bundle;
    }

    public m2(@IntRange(from = 1) int i4, @FloatRange(from = 0.0d) float f10) {
        boolean z9 = true;
        com.google.android.exoplayer2.util.a.b(i4 > 0, "maxStars must be a positive integer");
        com.google.android.exoplayer2.util.a.b((f10 < 0.0f || f10 > ((float) i4)) ? false : false, "starRating is out of range [0, maxStars]");
        this.f23939i = i4;
        this.f23940j = f10;
    }
}
