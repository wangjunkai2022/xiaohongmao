package com.google.android.exoplayer2;

import android.os.Bundle;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.h;

/* compiled from: PlaybackParameters.java */
/* loaded from: classes2.dex */
public final class t1 implements h {

    /* renamed from: e  reason: collision with root package name */
    private static final int f25297e = 0;

    /* renamed from: f  reason: collision with root package name */
    private static final int f25298f = 1;

    /* renamed from: a  reason: collision with root package name */
    public final float f25300a;

    /* renamed from: b  reason: collision with root package name */
    public final float f25301b;

    /* renamed from: c  reason: collision with root package name */
    private final int f25302c;

    /* renamed from: d  reason: collision with root package name */
    public static final t1 f25296d = new t1(1.0f);

    /* renamed from: g  reason: collision with root package name */
    public static final h.a<t1> f25299g = s1.f24541a;

    public t1(float f10) {
        this(f10, 1.0f);
    }

    private static String c(int i4) {
        return Integer.toString(i4, 36);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ t1 d(Bundle bundle) {
        return new t1(bundle.getFloat(c(0), 1.0f), bundle.getFloat(c(1), 1.0f));
    }

    public long b(long j4) {
        return j4 * this.f25302c;
    }

    @CheckResult
    public t1 e(float f10) {
        return new t1(f10, this.f25301b);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || t1.class != obj.getClass()) {
            return false;
        }
        t1 t1Var = (t1) obj;
        return this.f25300a == t1Var.f25300a && this.f25301b == t1Var.f25301b;
    }

    public int hashCode() {
        return ((527 + Float.floatToRawIntBits(this.f25300a)) * 31) + Float.floatToRawIntBits(this.f25301b);
    }

    @Override // com.google.android.exoplayer2.h
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putFloat(c(0), this.f25300a);
        bundle.putFloat(c(1), this.f25301b);
        return bundle;
    }

    public String toString() {
        return com.google.android.exoplayer2.util.z0.I("PlaybackParameters(speed=%.2f, pitch=%.2f)", Float.valueOf(this.f25300a), Float.valueOf(this.f25301b));
    }

    public t1(float f10, float f11) {
        com.google.android.exoplayer2.util.a.a(f10 > 0.0f);
        com.google.android.exoplayer2.util.a.a(f11 > 0.0f);
        this.f25300a = f10;
        this.f25301b = f11;
        this.f25302c = Math.round(f10 * 1000.0f);
    }
}
