package com.google.android.exoplayer2.text.ssa;

import com.google.android.exoplayer2.util.z0;
import java.util.Collections;
import java.util.List;

/* compiled from: SsaSubtitle.java */
/* loaded from: classes2.dex */
final class d implements com.google.android.exoplayer2.text.e {

    /* renamed from: a  reason: collision with root package name */
    private final List<List<com.google.android.exoplayer2.text.a>> f25664a;

    /* renamed from: b  reason: collision with root package name */
    private final List<Long> f25665b;

    public d(List<List<com.google.android.exoplayer2.text.a>> list, List<Long> list2) {
        this.f25664a = list;
        this.f25665b = list2;
    }

    @Override // com.google.android.exoplayer2.text.e
    public int a(long j4) {
        int d4 = z0.d(this.f25665b, Long.valueOf(j4), false, false);
        if (d4 < this.f25665b.size()) {
            return d4;
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.text.e
    public List<com.google.android.exoplayer2.text.a> b(long j4) {
        int h4 = z0.h(this.f25665b, Long.valueOf(j4), true, false);
        if (h4 == -1) {
            return Collections.emptyList();
        }
        return this.f25664a.get(h4);
    }

    @Override // com.google.android.exoplayer2.text.e
    public long c(int i4) {
        com.google.android.exoplayer2.util.a.a(i4 >= 0);
        com.google.android.exoplayer2.util.a.a(i4 < this.f25665b.size());
        return this.f25665b.get(i4).longValue();
    }

    @Override // com.google.android.exoplayer2.text.e
    public int d() {
        return this.f25665b.size();
    }
}
