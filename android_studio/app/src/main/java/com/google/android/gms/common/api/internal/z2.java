package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.BinderThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.i;
import com.google.android.gms.common.internal.zav;
import com.google.android.gms.signin.internal.zak;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class z2 extends com.google.android.gms.signin.internal.c implements i.b, i.c {

    /* renamed from: j  reason: collision with root package name */
    private static final a.AbstractC0193a<? extends com.google.android.gms.signin.f, com.google.android.gms.signin.a> f28942j = com.google.android.gms.signin.e.f31093c;

    /* renamed from: c  reason: collision with root package name */
    private final Context f28943c;

    /* renamed from: d  reason: collision with root package name */
    private final Handler f28944d;

    /* renamed from: e  reason: collision with root package name */
    private final a.AbstractC0193a<? extends com.google.android.gms.signin.f, com.google.android.gms.signin.a> f28945e;

    /* renamed from: f  reason: collision with root package name */
    private final Set<Scope> f28946f;

    /* renamed from: g  reason: collision with root package name */
    private final com.google.android.gms.common.internal.f f28947g;

    /* renamed from: h  reason: collision with root package name */
    private com.google.android.gms.signin.f f28948h;

    /* renamed from: i  reason: collision with root package name */
    private y2 f28949i;

    @WorkerThread
    public z2(Context context, Handler handler, @NonNull com.google.android.gms.common.internal.f fVar) {
        a.AbstractC0193a<? extends com.google.android.gms.signin.f, com.google.android.gms.signin.a> abstractC0193a = f28942j;
        this.f28943c = context;
        this.f28944d = handler;
        this.f28947g = (com.google.android.gms.common.internal.f) com.google.android.gms.common.internal.u.l(fVar, "ClientSettings must not be null");
        this.f28946f = fVar.i();
        this.f28945e = abstractC0193a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void L1(z2 z2Var, zak zakVar) {
        ConnectionResult zaa = zakVar.zaa();
        if (zaa.isSuccess()) {
            zav zavVar = (zav) com.google.android.gms.common.internal.u.k(zakVar.zab());
            ConnectionResult zaa2 = zavVar.zaa();
            if (!zaa2.isSuccess()) {
                String valueOf = String.valueOf(zaa2);
                Log.wtf("SignInCoordinator", "Sign-in succeeded with resolve account failure: ".concat(valueOf), new Exception());
                z2Var.f28949i.c(zaa2);
                z2Var.f28948h.c();
                return;
            }
            z2Var.f28949i.b(zavVar.zab(), z2Var.f28946f);
        } else {
            z2Var.f28949i.c(zaa);
        }
        z2Var.f28948h.c();
    }

    @WorkerThread
    public final void M1(y2 y2Var) {
        com.google.android.gms.signin.f fVar = this.f28948h;
        if (fVar != null) {
            fVar.c();
        }
        this.f28947g.o(Integer.valueOf(System.identityHashCode(this)));
        a.AbstractC0193a<? extends com.google.android.gms.signin.f, com.google.android.gms.signin.a> abstractC0193a = this.f28945e;
        Context context = this.f28943c;
        Looper looper = this.f28944d.getLooper();
        com.google.android.gms.common.internal.f fVar2 = this.f28947g;
        this.f28948h = abstractC0193a.c(context, looper, fVar2, fVar2.k(), this, this);
        this.f28949i = y2Var;
        Set<Scope> set = this.f28946f;
        if (set != null && !set.isEmpty()) {
            this.f28948h.zab();
        } else {
            this.f28944d.post(new w2(this));
        }
    }

    public final void N1() {
        com.google.android.gms.signin.f fVar = this.f28948h;
        if (fVar != null) {
            fVar.c();
        }
    }

    @Override // com.google.android.gms.signin.internal.c, com.google.android.gms.signin.internal.e
    @BinderThread
    public final void O(zak zakVar) {
        this.f28944d.post(new x2(this, zakVar));
    }

    @Override // com.google.android.gms.common.api.internal.f
    @WorkerThread
    public final void s(@Nullable Bundle bundle) {
        this.f28948h.q(this);
    }

    @Override // com.google.android.gms.common.api.internal.f
    @WorkerThread
    public final void x(int i4) {
        this.f28948h.c();
    }

    @Override // com.google.android.gms.common.api.internal.q
    @WorkerThread
    public final void z(@NonNull ConnectionResult connectionResult) {
        this.f28949i.c(connectionResult);
    }
}
