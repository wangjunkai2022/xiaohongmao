package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.internal.e;
import com.google.android.gms.common.internal.zav;
import com.google.android.gms.signin.internal.zak;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Future;
import java.util.concurrent.locks.Lock;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class a1 implements k1 {

    /* renamed from: a  reason: collision with root package name */
    private final n1 f28623a;

    /* renamed from: b  reason: collision with root package name */
    private final Lock f28624b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f28625c;

    /* renamed from: d  reason: collision with root package name */
    private final com.google.android.gms.common.f f28626d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private ConnectionResult f28627e;

    /* renamed from: f  reason: collision with root package name */
    private int f28628f;

    /* renamed from: h  reason: collision with root package name */
    private int f28630h;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private com.google.android.gms.signin.f f28633k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f28634l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f28635m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f28636n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private com.google.android.gms.common.internal.m f28637o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f28638p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f28639q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private final com.google.android.gms.common.internal.f f28640r;

    /* renamed from: s  reason: collision with root package name */
    private final Map<com.google.android.gms.common.api.a<?>, Boolean> f28641s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private final a.AbstractC0193a<? extends com.google.android.gms.signin.f, com.google.android.gms.signin.a> f28642t;

    /* renamed from: g  reason: collision with root package name */
    private int f28629g = 0;

    /* renamed from: i  reason: collision with root package name */
    private final Bundle f28631i = new Bundle();

    /* renamed from: j  reason: collision with root package name */
    private final Set<a.c> f28632j = new HashSet();

    /* renamed from: u  reason: collision with root package name */
    private final ArrayList<Future<?>> f28643u = new ArrayList<>();

    public a1(n1 n1Var, @Nullable com.google.android.gms.common.internal.f fVar, Map<com.google.android.gms.common.api.a<?>, Boolean> map, com.google.android.gms.common.f fVar2, @Nullable a.AbstractC0193a<? extends com.google.android.gms.signin.f, com.google.android.gms.signin.a> abstractC0193a, Lock lock, Context context) {
        this.f28623a = n1Var;
        this.f28640r = fVar;
        this.f28641s = map;
        this.f28626d = fVar2;
        this.f28642t = abstractC0193a;
        this.f28624b = lock;
        this.f28625c = context;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void B(a1 a1Var, zak zakVar) {
        if (a1Var.o(0)) {
            ConnectionResult zaa = zakVar.zaa();
            if (zaa.isSuccess()) {
                zav zavVar = (zav) com.google.android.gms.common.internal.u.k(zakVar.zab());
                ConnectionResult zaa2 = zavVar.zaa();
                if (!zaa2.isSuccess()) {
                    String valueOf = String.valueOf(zaa2);
                    Log.wtf("GACConnecting", "Sign-in succeeded with resolve account failure: ".concat(valueOf), new Exception());
                    a1Var.l(zaa2);
                    return;
                }
                a1Var.f28636n = true;
                a1Var.f28637o = (com.google.android.gms.common.internal.m) com.google.android.gms.common.internal.u.k(zavVar.zab());
                a1Var.f28638p = zavVar.zac();
                a1Var.f28639q = zavVar.zad();
                a1Var.n();
            } else if (a1Var.q(zaa)) {
                a1Var.i();
                a1Var.n();
            } else {
                a1Var.l(zaa);
            }
        }
    }

    private final void J() {
        ArrayList<Future<?>> arrayList = this.f28643u;
        int size = arrayList.size();
        for (int i4 = 0; i4 < size; i4++) {
            arrayList.get(i4).cancel(true);
        }
        this.f28643u.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @s7.a("mLock")
    public final void i() {
        this.f28635m = false;
        this.f28623a.f28827p.f28773s = Collections.emptySet();
        for (a.c<?> cVar : this.f28632j) {
            if (!this.f28623a.f28820i.containsKey(cVar)) {
                this.f28623a.f28820i.put(cVar, new ConnectionResult(17, null));
            }
        }
    }

    @s7.a("mLock")
    private final void j(boolean z9) {
        com.google.android.gms.signin.f fVar = this.f28633k;
        if (fVar != null) {
            if (fVar.a() && z9) {
                fVar.zaa();
            }
            fVar.c();
            com.google.android.gms.common.internal.f fVar2 = (com.google.android.gms.common.internal.f) com.google.android.gms.common.internal.u.k(this.f28640r);
            this.f28637o = null;
        }
    }

    @s7.a("mLock")
    private final void k() {
        this.f28623a.o();
        o1.a().execute(new o0(this));
        com.google.android.gms.signin.f fVar = this.f28633k;
        if (fVar != null) {
            if (this.f28638p) {
                fVar.t((com.google.android.gms.common.internal.m) com.google.android.gms.common.internal.u.k(this.f28637o), this.f28639q);
            }
            j(false);
        }
        for (a.c<?> cVar : this.f28623a.f28820i.keySet()) {
            ((a.f) com.google.android.gms.common.internal.u.k(this.f28623a.f28819h.get(cVar))).c();
        }
        this.f28623a.f28828q.a(this.f28631i.isEmpty() ? null : this.f28631i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @s7.a("mLock")
    public final void l(ConnectionResult connectionResult) {
        J();
        j(!connectionResult.hasResolution());
        this.f28623a.q(connectionResult);
        this.f28623a.f28828q.c(connectionResult);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @s7.a("mLock")
    public final void m(ConnectionResult connectionResult, com.google.android.gms.common.api.a<?> aVar, boolean z9) {
        int b10 = aVar.c().b();
        if ((!z9 || connectionResult.hasResolution() || this.f28626d.d(connectionResult.getErrorCode()) != null) && (this.f28627e == null || b10 < this.f28628f)) {
            this.f28627e = connectionResult;
            this.f28628f = b10;
        }
        this.f28623a.f28820i.put(aVar.b(), connectionResult);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @s7.a("mLock")
    public final void n() {
        if (this.f28630h != 0) {
            return;
        }
        if (!this.f28635m || this.f28636n) {
            ArrayList arrayList = new ArrayList();
            this.f28629g = 1;
            this.f28630h = this.f28623a.f28819h.size();
            for (a.c<?> cVar : this.f28623a.f28819h.keySet()) {
                if (this.f28623a.f28820i.containsKey(cVar)) {
                    if (p()) {
                        k();
                    }
                } else {
                    arrayList.add(this.f28623a.f28819h.get(cVar));
                }
            }
            if (arrayList.isEmpty()) {
                return;
            }
            this.f28643u.add(o1.a().submit(new t0(this, arrayList)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @s7.a("mLock")
    public final boolean o(int i4) {
        if (this.f28629g != i4) {
            Log.w("GACConnecting", this.f28623a.f28827p.M());
            Log.w("GACConnecting", "Unexpected callback in ".concat(toString()));
            int i10 = this.f28630h;
            StringBuilder sb = new StringBuilder(33);
            sb.append("mRemainingConnections=");
            sb.append(i10);
            Log.w("GACConnecting", sb.toString());
            String r9 = r(this.f28629g);
            String r10 = r(i4);
            StringBuilder sb2 = new StringBuilder(r9.length() + 70 + r10.length());
            sb2.append("GoogleApiClient connecting is in step ");
            sb2.append(r9);
            sb2.append(" but received callback for step ");
            sb2.append(r10);
            Log.e("GACConnecting", sb2.toString(), new Exception());
            l(new ConnectionResult(8, null));
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @s7.a("mLock")
    public final boolean p() {
        int i4 = this.f28630h - 1;
        this.f28630h = i4;
        if (i4 > 0) {
            return false;
        }
        if (i4 < 0) {
            Log.w("GACConnecting", this.f28623a.f28827p.M());
            Log.wtf("GACConnecting", "GoogleApiClient received too many callbacks for the given step. Clients may be in an unexpected state; GoogleApiClient will now disconnect.", new Exception());
            l(new ConnectionResult(8, null));
            return false;
        }
        ConnectionResult connectionResult = this.f28627e;
        if (connectionResult != null) {
            this.f28623a.f28826o = this.f28628f;
            l(connectionResult);
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @s7.a("mLock")
    public final boolean q(ConnectionResult connectionResult) {
        return this.f28634l && !connectionResult.hasResolution();
    }

    private static final String r(int i4) {
        return i4 != 0 ? "STEP_GETTING_REMOTE_SERVICE" : "STEP_SERVICE_BINDINGS_AND_SIGN_IN";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ Set y(a1 a1Var) {
        com.google.android.gms.common.internal.f fVar = a1Var.f28640r;
        if (fVar == null) {
            return Collections.emptySet();
        }
        HashSet hashSet = new HashSet(fVar.i());
        Map<com.google.android.gms.common.api.a<?>, com.google.android.gms.common.internal.i0> n9 = a1Var.f28640r.n();
        for (com.google.android.gms.common.api.a<?> aVar : n9.keySet()) {
            if (!a1Var.f28623a.f28820i.containsKey(aVar.b())) {
                hashSet.addAll(n9.get(aVar).f29140a);
            }
        }
        return hashSet;
    }

    @Override // com.google.android.gms.common.api.internal.k1
    @s7.a("mLock")
    public final void a(@Nullable Bundle bundle) {
        if (o(1)) {
            if (bundle != null) {
                this.f28631i.putAll(bundle);
            }
            if (p()) {
                k();
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.k1
    @s7.a("mLock")
    public final void b() {
        this.f28623a.f28820i.clear();
        this.f28635m = false;
        this.f28627e = null;
        this.f28629g = 0;
        this.f28634l = true;
        this.f28636n = false;
        this.f28638p = false;
        HashMap hashMap = new HashMap();
        boolean z9 = false;
        for (com.google.android.gms.common.api.a<?> aVar : this.f28641s.keySet()) {
            a.f fVar = (a.f) com.google.android.gms.common.internal.u.k(this.f28623a.f28819h.get(aVar.b()));
            z9 |= aVar.c().b() == 1;
            boolean booleanValue = this.f28641s.get(aVar).booleanValue();
            if (fVar.k()) {
                this.f28635m = true;
                if (booleanValue) {
                    this.f28632j.add(aVar.b());
                } else {
                    this.f28634l = false;
                }
            }
            hashMap.put(fVar, new p0(this, aVar, booleanValue));
        }
        if (z9) {
            this.f28635m = false;
        }
        if (this.f28635m) {
            com.google.android.gms.common.internal.u.k(this.f28640r);
            com.google.android.gms.common.internal.u.k(this.f28642t);
            this.f28640r.o(Integer.valueOf(System.identityHashCode(this.f28623a.f28827p)));
            x0 x0Var = new x0(this, null);
            a.AbstractC0193a<? extends com.google.android.gms.signin.f, com.google.android.gms.signin.a> abstractC0193a = this.f28642t;
            Context context = this.f28625c;
            Looper r9 = this.f28623a.f28827p.r();
            com.google.android.gms.common.internal.f fVar2 = this.f28640r;
            this.f28633k = abstractC0193a.c(context, r9, fVar2, fVar2.k(), x0Var, x0Var);
        }
        this.f28630h = this.f28623a.f28819h.size();
        this.f28643u.add(o1.a().submit(new s0(this, hashMap)));
    }

    @Override // com.google.android.gms.common.api.internal.k1
    public final void c() {
    }

    @Override // com.google.android.gms.common.api.internal.k1
    @s7.a("mLock")
    public final void d(ConnectionResult connectionResult, com.google.android.gms.common.api.a<?> aVar, boolean z9) {
        if (o(1)) {
            m(connectionResult, aVar, z9);
            if (p()) {
                k();
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.k1
    @s7.a("mLock")
    public final void e(int i4) {
        l(new ConnectionResult(8, null));
    }

    @Override // com.google.android.gms.common.api.internal.k1
    public final <A extends a.b, R extends com.google.android.gms.common.api.q, T extends e.a<R, A>> T f(T t9) {
        this.f28623a.f28827p.f28765k.add(t9);
        return t9;
    }

    @Override // com.google.android.gms.common.api.internal.k1
    @s7.a("mLock")
    public final boolean g() {
        J();
        j(true);
        this.f28623a.q(null);
        return true;
    }

    @Override // com.google.android.gms.common.api.internal.k1
    public final <A extends a.b, T extends e.a<? extends com.google.android.gms.common.api.q, A>> T h(T t9) {
        throw new IllegalStateException("GoogleApiClient is not connected yet.");
    }
}
