package com.google.android.play.core.splitinstall;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class j1 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ f f31889a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ int f31890b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ int f31891c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ k1 f31892d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j1(k1 k1Var, f fVar, int i4, int i10) {
        this.f31892d = k1Var;
        this.f31889a = fVar;
        this.f31890b = i4;
        this.f31891c = i10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        k1 k1Var = this.f31892d;
        f fVar = this.f31889a;
        k1Var.n(new h(fVar.h(), this.f31890b, this.f31891c, fVar.a(), fVar.j(), fVar.l(), fVar.k(), fVar.g(), fVar.m()));
    }
}
