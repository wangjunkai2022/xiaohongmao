package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.extractor.b0;
import com.google.android.exoplayer2.util.z0;

/* compiled from: IndexSeekMap.java */
/* loaded from: classes2.dex */
public final class y implements b0 {

    /* renamed from: d  reason: collision with root package name */
    private final long[] f23540d;

    /* renamed from: e  reason: collision with root package name */
    private final long[] f23541e;

    /* renamed from: f  reason: collision with root package name */
    private final long f23542f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f23543g;

    public y(long[] jArr, long[] jArr2, long j4) {
        com.google.android.exoplayer2.util.a.a(jArr.length == jArr2.length);
        int length = jArr2.length;
        boolean z9 = length > 0;
        this.f23543g = z9;
        if (z9 && jArr2[0] > 0) {
            int i4 = length + 1;
            long[] jArr3 = new long[i4];
            this.f23540d = jArr3;
            long[] jArr4 = new long[i4];
            this.f23541e = jArr4;
            System.arraycopy(jArr, 0, jArr3, 1, length);
            System.arraycopy(jArr2, 0, jArr4, 1, length);
        } else {
            this.f23540d = jArr;
            this.f23541e = jArr2;
        }
        this.f23542f = j4;
    }

    @Override // com.google.android.exoplayer2.extractor.b0
    public b0.a e(long j4) {
        if (!this.f23543g) {
            return new b0.a(c0.f22123c);
        }
        int j10 = z0.j(this.f23541e, j4, true, true);
        c0 c0Var = new c0(this.f23541e[j10], this.f23540d[j10]);
        if (c0Var.f22124a != j4 && j10 != this.f23541e.length - 1) {
            int i4 = j10 + 1;
            return new b0.a(c0Var, new c0(this.f23541e[i4], this.f23540d[i4]));
        }
        return new b0.a(c0Var);
    }

    @Override // com.google.android.exoplayer2.extractor.b0
    public boolean g() {
        return this.f23543g;
    }

    @Override // com.google.android.exoplayer2.extractor.b0
    public long i() {
        return this.f23542f;
    }
}
