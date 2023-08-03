package com.google.android.gms.common.api.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class s1 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ int f28877a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ v1 f28878b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s1(v1 v1Var, int i4) {
        this.f28878b = v1Var;
        this.f28877a = i4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f28878b.h(this.f28877a);
    }
}
