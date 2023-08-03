package com.google.android.exoplayer2.extractor.mp3;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.audio.g0;
import com.google.android.exoplayer2.extractor.b0;
import com.google.android.exoplayer2.extractor.c0;
import com.google.android.exoplayer2.util.h0;
import com.google.android.exoplayer2.util.w;
import com.google.android.exoplayer2.util.z0;

/* compiled from: VbriSeeker.java */
/* loaded from: classes2.dex */
final class h implements g {

    /* renamed from: h  reason: collision with root package name */
    private static final String f22548h = "VbriSeeker";

    /* renamed from: d  reason: collision with root package name */
    private final long[] f22549d;

    /* renamed from: e  reason: collision with root package name */
    private final long[] f22550e;

    /* renamed from: f  reason: collision with root package name */
    private final long f22551f;

    /* renamed from: g  reason: collision with root package name */
    private final long f22552g;

    private h(long[] jArr, long[] jArr2, long j4, long j10) {
        this.f22549d = jArr;
        this.f22550e = jArr2;
        this.f22551f = j4;
        this.f22552g = j10;
    }

    @Nullable
    public static h a(long j4, long j10, g0.a aVar, h0 h0Var) {
        int G;
        h0Var.T(10);
        int o9 = h0Var.o();
        if (o9 <= 0) {
            return null;
        }
        int i4 = aVar.f21241d;
        long f12 = z0.f1(o9, 1000000 * (i4 >= 32000 ? 1152 : 576), i4);
        int M = h0Var.M();
        int M2 = h0Var.M();
        int M3 = h0Var.M();
        h0Var.T(2);
        long j11 = j10 + aVar.f21240c;
        long[] jArr = new long[M];
        long[] jArr2 = new long[M];
        int i10 = 0;
        long j12 = j10;
        while (i10 < M) {
            int i11 = M2;
            long j13 = j11;
            jArr[i10] = (i10 * f12) / M;
            jArr2[i10] = Math.max(j12, j13);
            if (M3 == 1) {
                G = h0Var.G();
            } else if (M3 == 2) {
                G = h0Var.M();
            } else if (M3 == 3) {
                G = h0Var.J();
            } else if (M3 != 4) {
                return null;
            } else {
                G = h0Var.K();
            }
            j12 += G * i11;
            i10++;
            j11 = j13;
            M2 = i11;
        }
        if (j4 != -1 && j4 != j12) {
            StringBuilder sb = new StringBuilder(67);
            sb.append("VBRI data size mismatch: ");
            sb.append(j4);
            sb.append(", ");
            sb.append(j12);
            w.n(f22548h, sb.toString());
        }
        return new h(jArr, jArr2, f12, j12);
    }

    @Override // com.google.android.exoplayer2.extractor.b0
    public b0.a e(long j4) {
        int j10 = z0.j(this.f22549d, j4, true, true);
        c0 c0Var = new c0(this.f22549d[j10], this.f22550e[j10]);
        if (c0Var.f22124a < j4 && j10 != this.f22549d.length - 1) {
            int i4 = j10 + 1;
            return new b0.a(c0Var, new c0(this.f22549d[i4], this.f22550e[i4]));
        }
        return new b0.a(c0Var);
    }

    @Override // com.google.android.exoplayer2.extractor.mp3.g
    public long f() {
        return this.f22552g;
    }

    @Override // com.google.android.exoplayer2.extractor.b0
    public boolean g() {
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.mp3.g
    public long h(long j4) {
        return this.f22549d[z0.j(this.f22550e, j4, true, true)];
    }

    @Override // com.google.android.exoplayer2.extractor.b0
    public long i() {
        return this.f22551f;
    }
}
