package com.google.android.gms.common.api.internal;

import android.app.Activity;
import androidx.annotation.MainThread;
import androidx.collection.ArraySet;
import com.google.android.gms.common.ConnectionResult;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class i0 extends v3 {

    /* renamed from: f  reason: collision with root package name */
    private final ArraySet<c<?>> f28742f;

    /* renamed from: g  reason: collision with root package name */
    private final i f28743g;

    @y2.d0
    i0(m mVar, i iVar, com.google.android.gms.common.e eVar) {
        super(mVar, eVar);
        this.f28742f = new ArraySet<>();
        this.f28743g = iVar;
        this.f28615a.h("ConnectionlessLifecycleHelper", this);
    }

    @MainThread
    public static void v(Activity activity, i iVar, c<?> cVar) {
        m c10 = LifecycleCallback.c(activity);
        i0 i0Var = (i0) c10.m("ConnectionlessLifecycleHelper", i0.class);
        if (i0Var == null) {
            i0Var = new i0(c10, iVar, com.google.android.gms.common.e.x());
        }
        com.google.android.gms.common.internal.u.l(cVar, "ApiKey cannot be null");
        i0Var.f28742f.add(cVar);
        iVar.d(i0Var);
    }

    private final void w() {
        if (this.f28742f.isEmpty()) {
            return;
        }
        this.f28743g.d(this);
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void i() {
        super.i();
        w();
    }

    @Override // com.google.android.gms.common.api.internal.v3, com.google.android.gms.common.api.internal.LifecycleCallback
    public final void k() {
        super.k();
        w();
    }

    @Override // com.google.android.gms.common.api.internal.v3, com.google.android.gms.common.api.internal.LifecycleCallback
    public final void l() {
        super.l();
        this.f28743g.e(this);
    }

    @Override // com.google.android.gms.common.api.internal.v3
    protected final void n(ConnectionResult connectionResult, int i4) {
        this.f28743g.M(connectionResult, i4);
    }

    @Override // com.google.android.gms.common.api.internal.v3
    protected final void o() {
        this.f28743g.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final ArraySet<c<?>> u() {
        return this.f28742f;
    }
}
