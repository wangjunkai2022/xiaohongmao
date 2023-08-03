package com.google.android.gms.common.api.internal;

import android.os.Handler;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.internal.e;
import java.util.Map;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class z1 implements e.c, y2 {

    /* renamed from: a  reason: collision with root package name */
    private final a.f f28936a;

    /* renamed from: b  reason: collision with root package name */
    private final c<?> f28937b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private com.google.android.gms.common.internal.m f28938c = null;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private Set<Scope> f28939d = null;

    /* renamed from: e  reason: collision with root package name */
    private boolean f28940e = false;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ i f28941f;

    public z1(i iVar, a.f fVar, c<?> cVar) {
        this.f28941f = iVar;
        this.f28936a = fVar;
        this.f28937b = cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void h() {
        com.google.android.gms.common.internal.m mVar;
        if (!this.f28940e || (mVar = this.f28938c) == null) {
            return;
        }
        this.f28936a.n(mVar, this.f28939d);
    }

    @Override // com.google.android.gms.common.internal.e.c
    public final void a(@NonNull ConnectionResult connectionResult) {
        Handler handler;
        handler = this.f28941f.f28740p;
        handler.post(new y1(this, connectionResult));
    }

    @Override // com.google.android.gms.common.api.internal.y2
    @WorkerThread
    public final void b(@Nullable com.google.android.gms.common.internal.m mVar, @Nullable Set<Scope> set) {
        if (mVar != null && set != null) {
            this.f28938c = mVar;
            this.f28939d = set;
            h();
            return;
        }
        Log.wtf("GoogleApiManager", "Received null response from onSignInSuccess", new Exception());
        c(new ConnectionResult(4));
    }

    @Override // com.google.android.gms.common.api.internal.y2
    @WorkerThread
    public final void c(ConnectionResult connectionResult) {
        Map map;
        map = this.f28941f.f28736l;
        v1 v1Var = (v1) map.get(this.f28937b);
        if (v1Var != null) {
            v1Var.I(connectionResult);
        }
    }
}
