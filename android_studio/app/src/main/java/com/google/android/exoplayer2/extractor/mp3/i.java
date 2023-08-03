package com.google.android.exoplayer2.extractor.mp3;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.audio.g0;
import com.google.android.exoplayer2.extractor.b0;
import com.google.android.exoplayer2.extractor.c0;
import com.google.android.exoplayer2.util.h0;
import com.google.android.exoplayer2.util.w;
import com.google.android.exoplayer2.util.z0;

/* compiled from: XingSeeker.java */
/* loaded from: classes2.dex */
final class i implements g {

    /* renamed from: j  reason: collision with root package name */
    private static final String f22553j = "XingSeeker";

    /* renamed from: d  reason: collision with root package name */
    private final long f22554d;

    /* renamed from: e  reason: collision with root package name */
    private final int f22555e;

    /* renamed from: f  reason: collision with root package name */
    private final long f22556f;

    /* renamed from: g  reason: collision with root package name */
    private final long f22557g;

    /* renamed from: h  reason: collision with root package name */
    private final long f22558h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private final long[] f22559i;

    private i(long j4, int i4, long j10) {
        this(j4, i4, j10, -1L, null);
    }

    @Nullable
    public static i a(long j4, long j10, g0.a aVar, h0 h0Var) {
        int K;
        int i4 = aVar.f21244g;
        int i10 = aVar.f21241d;
        int o9 = h0Var.o();
        if ((o9 & 1) != 1 || (K = h0Var.K()) == 0) {
            return null;
        }
        long f12 = z0.f1(K, i4 * 1000000, i10);
        if ((o9 & 6) != 6) {
            return new i(j10, aVar.f21240c, f12);
        }
        long I = h0Var.I();
        long[] jArr = new long[100];
        for (int i11 = 0; i11 < 100; i11++) {
            jArr[i11] = h0Var.G();
        }
        if (j4 != -1) {
            long j11 = j10 + I;
            if (j4 != j11) {
                StringBuilder sb = new StringBuilder(67);
                sb.append("XING data size mismatch: ");
                sb.append(j4);
                sb.append(", ");
                sb.append(j11);
                w.n(f22553j, sb.toString());
            }
        }
        return new i(j10, aVar.f21240c, f12, I, jArr);
    }

    private long b(int i4) {
        return (this.f22556f * i4) / 100;
    }

    @Override // com.google.android.exoplayer2.extractor.b0
    public b0.a e(long j4) {
        long[] jArr;
        if (!g()) {
            return new b0.a(new c0(0L, this.f22554d + this.f22555e));
        }
        long u9 = z0.u(j4, 0L, this.f22556f);
        double d4 = (u9 * 100.0d) / this.f22556f;
        double d10 = 0.0d;
        if (d4 > 0.0d) {
            if (d4 >= 100.0d) {
                d10 = 256.0d;
            } else {
                int i4 = (int) d4;
                double d11 = ((long[]) com.google.android.exoplayer2.util.a.k(this.f22559i))[i4];
                d10 = d11 + ((d4 - i4) * ((i4 == 99 ? 256.0d : jArr[i4 + 1]) - d11));
            }
        }
        return new b0.a(new c0(u9, this.f22554d + z0.u(Math.round((d10 / 256.0d) * this.f22557g), this.f22555e, this.f22557g - 1)));
    }

    @Override // com.google.android.exoplayer2.extractor.mp3.g
    public long f() {
        return this.f22558h;
    }

    @Override // com.google.android.exoplayer2.extractor.b0
    public boolean g() {
        return this.f22559i != null;
    }

    @Override // com.google.android.exoplayer2.extractor.mp3.g
    public long h(long j4) {
        long j10 = j4 - this.f22554d;
        if (!g() || j10 <= this.f22555e) {
            return 0L;
        }
        long[] jArr = (long[]) com.google.android.exoplayer2.util.a.k(this.f22559i);
        double d4 = (j10 * 256.0d) / this.f22557g;
        int j11 = z0.j(jArr, (long) d4, true, true);
        long b10 = b(j11);
        long j12 = jArr[j11];
        int i4 = j11 + 1;
        long b11 = b(i4);
        long j13 = j11 == 99 ? 256L : jArr[i4];
        return b10 + Math.round((j12 == j13 ? 0.0d : (d4 - j12) / (j13 - j12)) * (b11 - b10));
    }

    @Override // com.google.android.exoplayer2.extractor.b0
    public long i() {
        return this.f22556f;
    }

    private i(long j4, int i4, long j10, long j11, @Nullable long[] jArr) {
        this.f22554d = j4;
        this.f22555e = i4;
        this.f22556f = j10;
        this.f22559i = jArr;
        this.f22557g = j11;
        this.f22558h = j11 != -1 ? j4 + j11 : -1L;
    }
}
