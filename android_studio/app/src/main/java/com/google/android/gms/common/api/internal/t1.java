package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.a;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
final class t1 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ u1 f28887a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t1(u1 u1Var) {
        this.f28887a = u1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        a.f fVar;
        a.f fVar2;
        v1 v1Var = this.f28887a.f28902a;
        fVar = v1Var.f28908d;
        fVar2 = v1Var.f28908d;
        fVar.e(fVar2.getClass().getName().concat(" disconnecting because it was signed out."));
    }
}
