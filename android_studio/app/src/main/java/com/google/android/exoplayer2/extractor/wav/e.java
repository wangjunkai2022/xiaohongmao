package com.google.android.exoplayer2.extractor.wav;

import com.google.android.exoplayer2.extractor.b0;
import com.google.android.exoplayer2.extractor.c0;
import com.google.android.exoplayer2.util.z0;

/* compiled from: WavSeekMap.java */
/* loaded from: classes2.dex */
final class e implements b0 {

    /* renamed from: d  reason: collision with root package name */
    private final c f23534d;

    /* renamed from: e  reason: collision with root package name */
    private final int f23535e;

    /* renamed from: f  reason: collision with root package name */
    private final long f23536f;

    /* renamed from: g  reason: collision with root package name */
    private final long f23537g;

    /* renamed from: h  reason: collision with root package name */
    private final long f23538h;

    public e(c cVar, int i4, long j4, long j10) {
        this.f23534d = cVar;
        this.f23535e = i4;
        this.f23536f = j4;
        long j11 = (j10 - j4) / cVar.f23527e;
        this.f23537g = j11;
        this.f23538h = a(j11);
    }

    private long a(long j4) {
        return z0.f1(j4 * this.f23535e, 1000000L, this.f23534d.f23525c);
    }

    @Override // com.google.android.exoplayer2.extractor.b0
    public b0.a e(long j4) {
        long u9 = z0.u((this.f23534d.f23525c * j4) / (this.f23535e * 1000000), 0L, this.f23537g - 1);
        long j10 = this.f23536f + (this.f23534d.f23527e * u9);
        long a10 = a(u9);
        c0 c0Var = new c0(a10, j10);
        if (a10 < j4 && u9 != this.f23537g - 1) {
            long j11 = u9 + 1;
            return new b0.a(c0Var, new c0(a(j11), this.f23536f + (this.f23534d.f23527e * j11)));
        }
        return new b0.a(c0Var);
    }

    @Override // com.google.android.exoplayer2.extractor.b0
    public boolean g() {
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.b0
    public long i() {
        return this.f23538h;
    }
}
