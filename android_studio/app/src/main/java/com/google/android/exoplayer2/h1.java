package com.google.android.exoplayer2;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.source.z;

/* compiled from: MediaPeriodInfo.java */
/* loaded from: classes2.dex */
final class h1 {

    /* renamed from: a  reason: collision with root package name */
    public final z.a f23635a;

    /* renamed from: b  reason: collision with root package name */
    public final long f23636b;

    /* renamed from: c  reason: collision with root package name */
    public final long f23637c;

    /* renamed from: d  reason: collision with root package name */
    public final long f23638d;

    /* renamed from: e  reason: collision with root package name */
    public final long f23639e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f23640f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f23641g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f23642h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h1(z.a aVar, long j4, long j10, long j11, long j12, boolean z9, boolean z10, boolean z11) {
        this.f23635a = aVar;
        this.f23636b = j4;
        this.f23637c = j10;
        this.f23638d = j11;
        this.f23639e = j12;
        this.f23640f = z9;
        this.f23641g = z10;
        this.f23642h = z11;
    }

    public h1 a(long j4) {
        return j4 == this.f23637c ? this : new h1(this.f23635a, this.f23636b, j4, this.f23638d, this.f23639e, this.f23640f, this.f23641g, this.f23642h);
    }

    public h1 b(long j4) {
        return j4 == this.f23636b ? this : new h1(this.f23635a, j4, this.f23637c, this.f23638d, this.f23639e, this.f23640f, this.f23641g, this.f23642h);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || h1.class != obj.getClass()) {
            return false;
        }
        h1 h1Var = (h1) obj;
        return this.f23636b == h1Var.f23636b && this.f23637c == h1Var.f23637c && this.f23638d == h1Var.f23638d && this.f23639e == h1Var.f23639e && this.f23640f == h1Var.f23640f && this.f23641g == h1Var.f23641g && this.f23642h == h1Var.f23642h && com.google.android.exoplayer2.util.z0.c(this.f23635a, h1Var.f23635a);
    }

    public int hashCode() {
        return ((((((((((((((527 + this.f23635a.hashCode()) * 31) + ((int) this.f23636b)) * 31) + ((int) this.f23637c)) * 31) + ((int) this.f23638d)) * 31) + ((int) this.f23639e)) * 31) + (this.f23640f ? 1 : 0)) * 31) + (this.f23641g ? 1 : 0)) * 31) + (this.f23642h ? 1 : 0);
    }
}
