package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.extractor.b0;
import com.google.android.exoplayer2.extractor.u;
import com.google.android.exoplayer2.util.z0;

/* compiled from: FlacSeekTableSeekMap.java */
/* loaded from: classes2.dex */
public final class t implements b0 {

    /* renamed from: d  reason: collision with root package name */
    private final u f22968d;

    /* renamed from: e  reason: collision with root package name */
    private final long f22969e;

    public t(u uVar, long j4) {
        this.f22968d = uVar;
        this.f22969e = j4;
    }

    private c0 a(long j4, long j10) {
        return new c0((j4 * 1000000) / this.f22968d.f23477e, this.f22969e + j10);
    }

    @Override // com.google.android.exoplayer2.extractor.b0
    public b0.a e(long j4) {
        com.google.android.exoplayer2.util.a.k(this.f22968d.f23483k);
        u uVar = this.f22968d;
        u.a aVar = uVar.f23483k;
        long[] jArr = aVar.f23485a;
        long[] jArr2 = aVar.f23486b;
        int j10 = z0.j(jArr, uVar.l(j4), true, false);
        c0 a10 = a(j10 == -1 ? 0L : jArr[j10], j10 != -1 ? jArr2[j10] : 0L);
        if (a10.f22124a != j4 && j10 != jArr.length - 1) {
            int i4 = j10 + 1;
            return new b0.a(a10, a(jArr[i4], jArr2[i4]));
        }
        return new b0.a(a10);
    }

    @Override // com.google.android.exoplayer2.extractor.b0
    public boolean g() {
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.b0
    public long i() {
        return this.f22968d.h();
    }
}
