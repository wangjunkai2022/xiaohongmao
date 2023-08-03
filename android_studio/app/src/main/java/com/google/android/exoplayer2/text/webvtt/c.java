package com.google.android.exoplayer2.text.webvtt;

import java.util.Collections;
import java.util.List;

/* compiled from: Mp4WebvttSubtitle.java */
/* loaded from: classes2.dex */
final class c implements com.google.android.exoplayer2.text.e {

    /* renamed from: a  reason: collision with root package name */
    private final List<com.google.android.exoplayer2.text.a> f25843a;

    public c(List<com.google.android.exoplayer2.text.a> list) {
        this.f25843a = Collections.unmodifiableList(list);
    }

    @Override // com.google.android.exoplayer2.text.e
    public int a(long j4) {
        return j4 < 0 ? 0 : -1;
    }

    @Override // com.google.android.exoplayer2.text.e
    public List<com.google.android.exoplayer2.text.a> b(long j4) {
        return j4 >= 0 ? this.f25843a : Collections.emptyList();
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
