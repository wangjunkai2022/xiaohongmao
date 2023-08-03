package com.google.android.gms.common.api.internal;

import android.content.Context;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class o0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ a1 f28834a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o0(a1 a1Var) {
        this.f28834a = a1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.google.android.gms.common.f fVar;
        Context context;
        a1 a1Var = this.f28834a;
        fVar = a1Var.f28626d;
        context = a1Var.f28625c;
        fVar.a(context);
    }
}
