package com.google.android.exoplayer2.text.dvb;

import com.google.android.exoplayer2.text.e;
import java.util.List;

/* compiled from: DvbSubtitle.java */
/* loaded from: classes2.dex */
final class c implements e {

    /* renamed from: a  reason: collision with root package name */
    private final List<com.google.android.exoplayer2.text.a> f25559a;

    public c(List<com.google.android.exoplayer2.text.a> list) {
        this.f25559a = list;
    }

    @Override // com.google.android.exoplayer2.text.e
    public int a(long j4) {
        return -1;
    }

    @Override // com.google.android.exoplayer2.text.e
    public List<com.google.android.exoplayer2.text.a> b(long j4) {
        return this.f25559a;
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
