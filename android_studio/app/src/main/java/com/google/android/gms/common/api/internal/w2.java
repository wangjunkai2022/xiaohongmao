package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class w2 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ z2 f28925a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w2(z2 z2Var) {
        this.f28925a = z2Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        y2 y2Var;
        y2Var = this.f28925a.f28949i;
        y2Var.c(new ConnectionResult(4));
    }
}
