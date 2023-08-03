package com.google.android.exoplayer2.text.subrip;

import com.google.android.exoplayer2.text.e;
import com.google.android.exoplayer2.util.z0;
import java.util.Collections;
import java.util.List;

/* compiled from: SubripSubtitle.java */
/* loaded from: classes2.dex */
final class b implements e {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.exoplayer2.text.a[] f25678a;

    /* renamed from: b  reason: collision with root package name */
    private final long[] f25679b;

    public b(com.google.android.exoplayer2.text.a[] aVarArr, long[] jArr) {
        this.f25678a = aVarArr;
        this.f25679b = jArr;
    }

    @Override // com.google.android.exoplayer2.text.e
    public int a(long j4) {
        int f10 = z0.f(this.f25679b, j4, false, false);
        if (f10 < this.f25679b.length) {
            return f10;
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.text.e
    public List<com.google.android.exoplayer2.text.a> b(long j4) {
        int j10 = z0.j(this.f25679b, j4, true, false);
        if (j10 != -1) {
            com.google.android.exoplayer2.text.a[] aVarArr = this.f25678a;
            if (aVarArr[j10] != com.google.android.exoplayer2.text.a.f25304r) {
                return Collections.singletonList(aVarArr[j10]);
            }
        }
        return Collections.emptyList();
    }

    @Override // com.google.android.exoplayer2.text.e
    public long c(int i4) {
        com.google.android.exoplayer2.util.a.a(i4 >= 0);
        com.google.android.exoplayer2.util.a.a(i4 < this.f25679b.length);
        return this.f25679b[i4];
    }

    @Override // com.google.android.exoplayer2.text.e
    public int d() {
        return this.f25679b.length;
    }
}
