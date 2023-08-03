package com.google.android.exoplayer2.text.tx3g;

import com.google.android.exoplayer2.text.e;
import java.util.Collections;
import java.util.List;

/* compiled from: Tx3gSubtitle.java */
/* loaded from: classes2.dex */
final class b implements e {

    /* renamed from: b  reason: collision with root package name */
    public static final b f25815b = new b();

    /* renamed from: a  reason: collision with root package name */
    private final List<com.google.android.exoplayer2.text.a> f25816a;

    public b(com.google.android.exoplayer2.text.a aVar) {
        this.f25816a = Collections.singletonList(aVar);
    }

    @Override // com.google.android.exoplayer2.text.e
    public int a(long j4) {
        return j4 < 0 ? 0 : -1;
    }

    @Override // com.google.android.exoplayer2.text.e
    public List<com.google.android.exoplayer2.text.a> b(long j4) {
        return j4 >= 0 ? this.f25816a : Collections.emptyList();
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

    private b() {
        this.f25816a = Collections.emptyList();
    }
}
