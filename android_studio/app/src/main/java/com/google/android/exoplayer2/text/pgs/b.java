package com.google.android.exoplayer2.text.pgs;

import com.google.android.exoplayer2.text.e;
import java.util.List;

/* compiled from: PgsSubtitle.java */
/* loaded from: classes2.dex */
final class b implements e {

    /* renamed from: a  reason: collision with root package name */
    private final List<com.google.android.exoplayer2.text.a> f25596a;

    public b(List<com.google.android.exoplayer2.text.a> list) {
        this.f25596a = list;
    }

    @Override // com.google.android.exoplayer2.text.e
    public int a(long j4) {
        return -1;
    }

    @Override // com.google.android.exoplayer2.text.e
    public List<com.google.android.exoplayer2.text.a> b(long j4) {
        return this.f25596a;
    }

    @Override // com.google.android.exoplayer2.text.e
    public long c(int i4) {
        return 0L;
    }

    @Override // com.google.android.exoplayer2.text.e
    public int d() {
        return 1;
    }
}
