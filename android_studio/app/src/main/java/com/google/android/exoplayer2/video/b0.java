package com.google.android.exoplayer2.video;

import android.os.Bundle;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.h;

/* compiled from: VideoSize.java */
/* loaded from: classes2.dex */
public final class b0 implements com.google.android.exoplayer2.h {

    /* renamed from: e  reason: collision with root package name */
    private static final int f27875e = 0;

    /* renamed from: f  reason: collision with root package name */
    private static final int f27876f = 0;

    /* renamed from: g  reason: collision with root package name */
    private static final int f27877g = 0;

    /* renamed from: h  reason: collision with root package name */
    private static final float f27878h = 1.0f;

    /* renamed from: j  reason: collision with root package name */
    private static final int f27880j = 0;

    /* renamed from: k  reason: collision with root package name */
    private static final int f27881k = 1;

    /* renamed from: l  reason: collision with root package name */
    private static final int f27882l = 2;

    /* renamed from: m  reason: collision with root package name */
    private static final int f27883m = 3;
    @IntRange(from = 0)

    /* renamed from: a  reason: collision with root package name */
    public final int f27885a;
    @IntRange(from = 0)

    /* renamed from: b  reason: collision with root package name */
    public final int f27886b;
    @IntRange(from = 0, to = 359)

    /* renamed from: c  reason: collision with root package name */
    public final int f27887c;
    @FloatRange(from = 0.0d, fromInclusive = false)

    /* renamed from: d  reason: collision with root package name */
    public final float f27888d;

    /* renamed from: i  reason: collision with root package name */
    public static final b0 f27879i = new b0(0, 0);

    /* renamed from: n  reason: collision with root package name */
    public static final h.a<b0> f27884n = a0.f27858a;

    public b0(@IntRange(from = 0) int i4, @IntRange(from = 0) int i10) {
        this(i4, i10, 0, 1.0f);
    }

    private static String b(int i4) {
        return Integer.toString(i4, 36);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ b0 c(Bundle bundle) {
        return new b0(bundle.getInt(b(0), 0), bundle.getInt(b(1), 0), bundle.getInt(b(2), 0), bundle.getFloat(b(3), 1.0f));
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof b0) {
            b0 b0Var = (b0) obj;
            return this.f27885a == b0Var.f27885a && this.f27886b == b0Var.f27886b && this.f27887c == b0Var.f27887c && this.f27888d == b0Var.f27888d;
        }
        return false;
    }

    public int hashCode() {
        return ((((((com.facebook.imageutils.c.f13390e + this.f27885a) * 31) + this.f27886b) * 31) + this.f27887c) * 31) + Float.floatToRawIntBits(this.f27888d);
    }

    @Override // com.google.android.exoplayer2.h
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(b(0), this.f27885a);
        bundle.putInt(b(1), this.f27886b);
        bundle.putInt(b(2), this.f27887c);
        bundle.putFloat(b(3), this.f27888d);
        return bundle;
    }

    public b0(@IntRange(from = 0) int i4, @IntRange(from = 0) int i10, @IntRange(from = 0, to = 359) int i11, @FloatRange(from = 0.0d, fromInclusive = false) float f10) {
        this.f27885a = i4;
        this.f27886b = i10;
        this.f27887c = i11;
        this.f27888d = f10;
    }
}
