package com.google.android.exoplayer2;

import androidx.annotation.Nullable;

/* compiled from: SeekParameters.java */
/* loaded from: classes2.dex */
public final class j2 {

    /* renamed from: c  reason: collision with root package name */
    public static final j2 f23768c;

    /* renamed from: d  reason: collision with root package name */
    public static final j2 f23769d;

    /* renamed from: e  reason: collision with root package name */
    public static final j2 f23770e;

    /* renamed from: f  reason: collision with root package name */
    public static final j2 f23771f;

    /* renamed from: g  reason: collision with root package name */
    public static final j2 f23772g;

    /* renamed from: a  reason: collision with root package name */
    public final long f23773a;

    /* renamed from: b  reason: collision with root package name */
    public final long f23774b;

    static {
        j2 j2Var = new j2(0L, 0L);
        f23768c = j2Var;
        f23769d = new j2(Long.MAX_VALUE, Long.MAX_VALUE);
        f23770e = new j2(Long.MAX_VALUE, 0L);
        f23771f = new j2(0L, Long.MAX_VALUE);
        f23772g = j2Var;
    }

    public j2(long j4, long j10) {
        com.google.android.exoplayer2.util.a.a(j4 >= 0);
        com.google.android.exoplayer2.util.a.a(j10 >= 0);
        this.f23773a = j4;
        this.f23774b = j10;
    }

    public long a(long j4, long j10, long j11) {
        long j12 = this.f23773a;
        if (j12 == 0 && this.f23774b == 0) {
            return j4;
        }
        long p12 = com.google.android.exoplayer2.util.z0.p1(j4, j12, Long.MIN_VALUE);
        long b10 = com.google.android.exoplayer2.util.z0.b(j4, this.f23774b, Long.MAX_VALUE);
        boolean z9 = true;
        boolean z10 = p12 <= j10 && j10 <= b10;
        z9 = (p12 > j11 || j11 > b10) ? false : false;
        return (z10 && z9) ? Math.abs(j10 - j4) <= Math.abs(j11 - j4) ? j10 : j11 : z10 ? j10 : z9 ? j11 : p12;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || j2.class != obj.getClass()) {
            return false;
        }
        j2 j2Var = (j2) obj;
        return this.f23773a == j2Var.f23773a && this.f23774b == j2Var.f23774b;
    }

    public int hashCode() {
        return (((int) this.f23773a) * 31) + ((int) this.f23774b);
    }
}
