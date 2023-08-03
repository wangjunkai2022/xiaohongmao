package com.google.android.exoplayer2.text.cea;

import java.util.Collections;
import java.util.List;

/* compiled from: CeaSubtitle.java */
/* loaded from: classes2.dex */
final class f implements com.google.android.exoplayer2.text.e {

    /* renamed from: a  reason: collision with root package name */
    private final List<com.google.android.exoplayer2.text.a> f25484a;

    public f(List<com.google.android.exoplayer2.text.a> list) {
        this.f25484a = list;
    }

    @Override // com.google.android.exoplayer2.text.e
    public int a(long j4) {
        return j4 < 0 ? 0 : -1;
    }

    @Override // com.google.android.exoplayer2.text.e
    public List<com.google.android.exoplayer2.text.a> b(long j4) {
        return j4 >= 0 ? this.f25484a : Collections.emptyList();
    }

    @Override // com.google.android.exoplayer2.text.e
    public long c(int i4) {
        com.google.android.exoplayer2.util.a.a(i4 == 0);
        return 0L;
    }

    @Override // com.google.android.exoplayer2.text.e
    public int d() {
        return 1;
    }
}
