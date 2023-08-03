package com.google.android.exoplayer2.decoder;

/* compiled from: Buffer.java */
/* loaded from: classes2.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    private int f21578a;

    public final void e(int i4) {
        this.f21578a = i4 | this.f21578a;
    }

    public void f() {
        this.f21578a = 0;
    }

    public final void g(int i4) {
        this.f21578a = (~i4) & this.f21578a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean h(int i4) {
        return (this.f21578a & i4) == i4;
    }

    public final boolean i() {
        return h(268435456);
    }

    public final boolean k() {
        return h(Integer.MIN_VALUE);
    }

    public final boolean l() {
        return h(4);
    }

    public final boolean m() {
        return h(1);
    }

    public final void n(int i4) {
        this.f21578a = i4;
    }
}
