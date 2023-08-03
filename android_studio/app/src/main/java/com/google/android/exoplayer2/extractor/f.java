package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.extractor.b0;
import com.google.android.exoplayer2.util.z0;

/* compiled from: ConstantBitrateSeekMap.java */
/* loaded from: classes2.dex */
public class f implements b0 {

    /* renamed from: d  reason: collision with root package name */
    private final long f22146d;

    /* renamed from: e  reason: collision with root package name */
    private final long f22147e;

    /* renamed from: f  reason: collision with root package name */
    private final int f22148f;

    /* renamed from: g  reason: collision with root package name */
    private final long f22149g;

    /* renamed from: h  reason: collision with root package name */
    private final int f22150h;

    /* renamed from: i  reason: collision with root package name */
    private final long f22151i;

    public f(long j4, long j10, int i4, int i10) {
        this.f22146d = j4;
        this.f22147e = j10;
        this.f22148f = i10 == -1 ? 1 : i10;
        this.f22150h = i4;
        if (j4 == -1) {
            this.f22149g = -1L;
            this.f22151i = com.google.android.exoplayer2.i.f23649b;
            return;
        }
        this.f22149g = j4 - j10;
        this.f22151i = c(j4, j10, i4);
    }

    private long a(long j4) {
        int i4 = this.f22148f;
        return this.f22147e + z0.u((((j4 * this.f22150h) / 8000000) / i4) * i4, 0L, this.f22149g - i4);
    }

    private static long c(long j4, long j10, int i4) {
        return ((Math.max(0L, j4 - j10) * 8) * 1000000) / i4;
    }

    public long b(long j4) {
        return c(j4, this.f22147e, this.f22150h);
    }

    @Override // com.google.android.exoplayer2.extractor.b0
    public b0.a e(long j4) {
        if (this.f22149g == -1) {
            return new b0.a(new c0(0L, this.f22147e));
        }
        long a10 = a(j4);
        long b10 = b(a10);
        c0 c0Var = new c0(b10, a10);
        if (b10 < j4) {
            int i4 = this.f22148f;
            if (i4 + a10 < this.f22146d) {
                long j10 = a10 + i4;
                return new b0.a(c0Var, new c0(b(j10), j10));
            }
        }
        return new b0.a(c0Var);
    }

    @Override // com.google.android.exoplayer2.extractor.b0
    public boolean g() {
        return this.f22149g != -1;
    }

    @Override // com.google.android.exoplayer2.extractor.b0
    public long i() {
        return this.f22151i;
    }
}
