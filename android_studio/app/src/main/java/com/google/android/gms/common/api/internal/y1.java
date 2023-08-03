package com.google.android.gms.common.api.internal;

import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.a;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
final class y1 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ConnectionResult f28932a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ z1 f28933b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y1(z1 z1Var, ConnectionResult connectionResult) {
        this.f28933b = z1Var;
        this.f28932a = connectionResult;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Map map;
        c cVar;
        a.f fVar;
        a.f fVar2;
        a.f fVar3;
        a.f fVar4;
        z1 z1Var = this.f28933b;
        map = z1Var.f28941f.f28736l;
        cVar = z1Var.f28937b;
        v1 v1Var = (v1) map.get(cVar);
        if (v1Var == null) {
            return;
        }
        if (this.f28932a.isSuccess()) {
            this.f28933b.f28940e = true;
            fVar = this.f28933b.f28936a;
            if (fVar.k()) {
                this.f28933b.h();
                return;
            }
            try {
                z1 z1Var2 = this.f28933b;
                fVar3 = z1Var2.f28936a;
                fVar4 = z1Var2.f28936a;
                fVar3.n(null, fVar4.m());
                return;
            } catch (SecurityException e4) {
                Log.e("GoogleApiManager", "Failed to get service from broker. ", e4);
                fVar2 = this.f28933b.f28936a;
                fVar2.e("Failed to get service from broker.");
                v1Var.H(new ConnectionResult(10), null);
                return;
            }
        }
        v1Var.H(this.f28932a, null);
    }
}
