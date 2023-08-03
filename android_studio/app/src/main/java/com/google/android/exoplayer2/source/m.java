package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.s2;

/* compiled from: ForwardingTimeline.java */
/* loaded from: classes2.dex */
public abstract class m extends s2 {

    /* renamed from: f  reason: collision with root package name */
    protected final s2 f25005f;

    public m(s2 s2Var) {
        this.f25005f = s2Var;
    }

    @Override // com.google.android.exoplayer2.s2
    public int e(boolean z9) {
        return this.f25005f.e(z9);
    }

    @Override // com.google.android.exoplayer2.s2
    public int f(Object obj) {
        return this.f25005f.f(obj);
    }

    @Override // com.google.android.exoplayer2.s2
    public int g(boolean z9) {
        return this.f25005f.g(z9);
    }

    @Override // com.google.android.exoplayer2.s2
    public int i(int i4, int i10, boolean z9) {
        return this.f25005f.i(i4, i10, z9);
    }

    @Override // com.google.android.exoplayer2.s2
    public s2.b k(int i4, s2.b bVar, boolean z9) {
        return this.f25005f.k(i4, bVar, z9);
    }

    @Override // com.google.android.exoplayer2.s2
    public int m() {
        return this.f25005f.m();
    }

    @Override // com.google.android.exoplayer2.s2
    public int p(int i4, int i10, boolean z9) {
        return this.f25005f.p(i4, i10, z9);
    }

    @Override // com.google.android.exoplayer2.s2
    public Object q(int i4) {
        return this.f25005f.q(i4);
    }

    @Override // com.google.android.exoplayer2.s2
    public s2.d s(int i4, s2.d dVar, long j4) {
        return this.f25005f.s(i4, dVar, j4);
    }

    @Override // com.google.android.exoplayer2.s2
    public int u() {
        return this.f25005f.u();
    }
}
