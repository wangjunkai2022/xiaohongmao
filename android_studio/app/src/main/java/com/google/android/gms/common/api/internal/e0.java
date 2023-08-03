package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.internal.e;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class e0 implements g2 {

    /* renamed from: c  reason: collision with root package name */
    private final Context f28669c;

    /* renamed from: d  reason: collision with root package name */
    private final j1 f28670d;

    /* renamed from: e  reason: collision with root package name */
    private final Looper f28671e;

    /* renamed from: f  reason: collision with root package name */
    private final n1 f28672f;

    /* renamed from: g  reason: collision with root package name */
    private final n1 f28673g;

    /* renamed from: h  reason: collision with root package name */
    private final Map<a.c<?>, n1> f28674h;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private final a.f f28676j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private Bundle f28677k;

    /* renamed from: o  reason: collision with root package name */
    private final Lock f28681o;

    /* renamed from: i  reason: collision with root package name */
    private final Set<w> f28675i = Collections.newSetFromMap(new WeakHashMap());
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private ConnectionResult f28678l = null;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private ConnectionResult f28679m = null;

    /* renamed from: n  reason: collision with root package name */
    private boolean f28680n = false;
    @s7.a("mLock")

    /* renamed from: p  reason: collision with root package name */
    private int f28682p = 0;

    private e0(Context context, j1 j1Var, Lock lock, Looper looper, com.google.android.gms.common.f fVar, Map<a.c<?>, a.f> map, Map<a.c<?>, a.f> map2, com.google.android.gms.common.internal.f fVar2, a.AbstractC0193a<? extends com.google.android.gms.signin.f, com.google.android.gms.signin.a> abstractC0193a, @Nullable a.f fVar3, ArrayList<z3> arrayList, ArrayList<z3> arrayList2, Map<com.google.android.gms.common.api.a<?>, Boolean> map3, Map<com.google.android.gms.common.api.a<?>, Boolean> map4) {
        this.f28669c = context;
        this.f28670d = j1Var;
        this.f28681o = lock;
        this.f28671e = looper;
        this.f28676j = fVar3;
        this.f28672f = new n1(context, j1Var, lock, looper, fVar, map2, null, map4, null, arrayList2, new d4(this, null));
        this.f28673g = new n1(context, j1Var, lock, looper, fVar, map, fVar2, map3, abstractC0193a, arrayList, new f4(this, null));
        ArrayMap arrayMap = new ArrayMap();
        for (a.c<?> cVar : map2.keySet()) {
            arrayMap.put(cVar, this.f28672f);
        }
        for (a.c<?> cVar2 : map.keySet()) {
            arrayMap.put(cVar2, this.f28673g);
        }
        this.f28674h = Collections.unmodifiableMap(arrayMap);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void A(e0 e0Var, Bundle bundle) {
        Bundle bundle2 = e0Var.f28677k;
        if (bundle2 == null) {
            e0Var.f28677k = bundle;
        } else if (bundle != null) {
            bundle2.putAll(bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void B(e0 e0Var) {
        ConnectionResult connectionResult;
        if (q(e0Var.f28678l)) {
            if (!q(e0Var.f28679m) && !e0Var.o()) {
                ConnectionResult connectionResult2 = e0Var.f28679m;
                if (connectionResult2 != null) {
                    if (e0Var.f28682p == 1) {
                        e0Var.n();
                        return;
                    }
                    e0Var.m(connectionResult2);
                    e0Var.f28672f.d();
                    return;
                }
                return;
            }
            int i4 = e0Var.f28682p;
            if (i4 != 1) {
                if (i4 != 2) {
                    Log.wtf("CompositeGAC", "Attempted to call success callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", new AssertionError());
                    e0Var.f28682p = 0;
                }
                ((j1) com.google.android.gms.common.internal.u.k(e0Var.f28670d)).a(e0Var.f28677k);
            }
            e0Var.n();
            e0Var.f28682p = 0;
        } else if (e0Var.f28678l != null && q(e0Var.f28679m)) {
            e0Var.f28673g.d();
            e0Var.m((ConnectionResult) com.google.android.gms.common.internal.u.k(e0Var.f28678l));
        } else {
            ConnectionResult connectionResult3 = e0Var.f28678l;
            if (connectionResult3 == null || (connectionResult = e0Var.f28679m) == null) {
                return;
            }
            if (e0Var.f28673g.f28826o < e0Var.f28672f.f28826o) {
                connectionResult3 = connectionResult;
            }
            e0Var.m(connectionResult3);
        }
    }

    @Nullable
    private final PendingIntent D() {
        if (this.f28676j == null) {
            return null;
        }
        return com.google.android.gms.internal.base.l.a(this.f28669c, System.identityHashCode(this.f28670d), this.f28676j.v(), com.google.android.gms.internal.base.l.f29377a | 134217728);
    }

    @s7.a("mLock")
    private final void m(ConnectionResult connectionResult) {
        int i4 = this.f28682p;
        if (i4 != 1) {
            if (i4 == 2) {
                this.f28670d.c(connectionResult);
            } else {
                Log.wtf("CompositeGAC", "Attempted to call failure callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", new Exception());
                this.f28682p = 0;
            }
        }
        n();
        this.f28682p = 0;
    }

    @s7.a("mLock")
    private final void n() {
        for (w wVar : this.f28675i) {
            wVar.onComplete();
        }
        this.f28675i.clear();
    }

    @s7.a("mLock")
    private final boolean o() {
        ConnectionResult connectionResult = this.f28679m;
        return connectionResult != null && connectionResult.getErrorCode() == 4;
    }

    private final boolean p(e.a<? extends com.google.android.gms.common.api.q, ? extends a.b> aVar) {
        n1 n1Var = this.f28674h.get(aVar.y());
        com.google.android.gms.common.internal.u.l(n1Var, "GoogleApiClient is not configured to use the API required for this call.");
        return n1Var.equals(this.f28673g);
    }

    private static boolean q(@Nullable ConnectionResult connectionResult) {
        return connectionResult != null && connectionResult.isSuccess();
    }

    public static e0 s(Context context, j1 j1Var, Lock lock, Looper looper, com.google.android.gms.common.f fVar, Map<a.c<?>, a.f> map, com.google.android.gms.common.internal.f fVar2, Map<com.google.android.gms.common.api.a<?>, Boolean> map2, a.AbstractC0193a<? extends com.google.android.gms.signin.f, com.google.android.gms.signin.a> abstractC0193a, ArrayList<z3> arrayList) {
        ArrayMap arrayMap = new ArrayMap();
        ArrayMap arrayMap2 = new ArrayMap();
        a.f fVar3 = null;
        for (Map.Entry<a.c<?>, a.f> entry : map.entrySet()) {
            a.f value = entry.getValue();
            if (true == value.d()) {
                fVar3 = value;
            }
            if (value.k()) {
                arrayMap.put(entry.getKey(), value);
            } else {
                arrayMap2.put(entry.getKey(), value);
            }
        }
        com.google.android.gms.common.internal.u.r(!arrayMap.isEmpty(), "CompositeGoogleApiClient should not be used without any APIs that require sign-in.");
        ArrayMap arrayMap3 = new ArrayMap();
        ArrayMap arrayMap4 = new ArrayMap();
        for (com.google.android.gms.common.api.a<?> aVar : map2.keySet()) {
            a.c<?> b10 = aVar.b();
            if (arrayMap.containsKey(b10)) {
                arrayMap3.put(aVar, map2.get(aVar));
            } else if (arrayMap2.containsKey(b10)) {
                arrayMap4.put(aVar, map2.get(aVar));
            } else {
                throw new IllegalStateException("Each API in the isOptionalMap must have a corresponding client in the clients map.");
            }
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        int size = arrayList.size();
        for (int i4 = 0; i4 < size; i4++) {
            z3 z3Var = arrayList.get(i4);
            if (arrayMap3.containsKey(z3Var.f28950c)) {
                arrayList2.add(z3Var);
            } else if (arrayMap4.containsKey(z3Var.f28950c)) {
                arrayList3.add(z3Var);
            } else {
                throw new IllegalStateException("Each ClientCallbacks must have a corresponding API in the isOptionalMap");
            }
        }
        return new e0(context, j1Var, lock, looper, fVar, arrayMap, arrayMap2, fVar2, abstractC0193a, fVar3, arrayList2, arrayList3, arrayMap3, arrayMap4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void z(e0 e0Var, int i4, boolean z9) {
        e0Var.f28670d.b(i4, z9);
        e0Var.f28679m = null;
        e0Var.f28678l = null;
    }

    @Override // com.google.android.gms.common.api.internal.g2
    @s7.a("mLock")
    public final void a() {
        this.f28682p = 2;
        this.f28680n = false;
        this.f28679m = null;
        this.f28678l = null;
        this.f28672f.a();
        this.f28673g.a();
    }

    @Override // com.google.android.gms.common.api.internal.g2
    @s7.a("mLock")
    public final void b() {
        this.f28672f.b();
        this.f28673g.b();
    }

    @Override // com.google.android.gms.common.api.internal.g2
    public final void c() {
        this.f28681o.lock();
        try {
            boolean h4 = h();
            this.f28673g.d();
            this.f28679m = new ConnectionResult(4);
            if (h4) {
                new com.google.android.gms.internal.base.q(this.f28671e).post(new b4(this));
            } else {
                n();
            }
        } finally {
            this.f28681o.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.g2
    @s7.a("mLock")
    public final void d() {
        this.f28679m = null;
        this.f28678l = null;
        this.f28682p = 0;
        this.f28672f.d();
        this.f28673g.d();
        n();
    }

    @Override // com.google.android.gms.common.api.internal.g2
    public final boolean e(w wVar) {
        this.f28681o.lock();
        try {
            if ((h() || k()) && !this.f28673g.k()) {
                this.f28675i.add(wVar);
                if (this.f28682p == 0) {
                    this.f28682p = 1;
                }
                this.f28679m = null;
                this.f28673g.a();
                return true;
            }
            this.f28681o.unlock();
            return false;
        } finally {
            this.f28681o.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.g2
    public final void f(String str, @Nullable FileDescriptor fileDescriptor, PrintWriter printWriter, @Nullable String[] strArr) {
        printWriter.append((CharSequence) str).append("authClient").println(":");
        this.f28673g.f(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
        printWriter.append((CharSequence) str).append("anonClient").println(":");
        this.f28672f.f(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
    }

    @Override // com.google.android.gms.common.api.internal.g2
    @Nullable
    @s7.a("mLock")
    public final ConnectionResult g(@NonNull com.google.android.gms.common.api.a<?> aVar) {
        if (com.google.android.gms.common.internal.s.b(this.f28674h.get(aVar.b()), this.f28673g)) {
            if (o()) {
                return new ConnectionResult(4, D());
            }
            return this.f28673g.g(aVar);
        }
        return this.f28672f.g(aVar);
    }

    @Override // com.google.android.gms.common.api.internal.g2
    public final boolean h() {
        this.f28681o.lock();
        try {
            return this.f28682p == 2;
        } finally {
            this.f28681o.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.g2
    @s7.a("mLock")
    public final ConnectionResult i(long j4, @NonNull TimeUnit timeUnit) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.common.api.internal.g2
    @s7.a("mLock")
    public final <A extends a.b, R extends com.google.android.gms.common.api.q, T extends e.a<R, A>> T j(@NonNull T t9) {
        if (p(t9)) {
            if (o()) {
                t9.b(new Status(4, (String) null, D()));
                return t9;
            }
            this.f28673g.j(t9);
            return t9;
        }
        this.f28672f.j(t9);
        return t9;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001f, code lost:
        if (r3.f28682p == 1) goto L12;
     */
    @Override // com.google.android.gms.common.api.internal.g2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean k() {
        /*
            r3 = this;
            java.util.concurrent.locks.Lock r0 = r3.f28681o
            r0.lock()
            com.google.android.gms.common.api.internal.n1 r0 = r3.f28672f     // Catch: java.lang.Throwable -> L28
            boolean r0 = r0.k()     // Catch: java.lang.Throwable -> L28
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L22
            com.google.android.gms.common.api.internal.n1 r0 = r3.f28673g     // Catch: java.lang.Throwable -> L28
            boolean r0 = r0.k()     // Catch: java.lang.Throwable -> L28
            if (r0 != 0) goto L21
            boolean r0 = r3.o()     // Catch: java.lang.Throwable -> L28
            if (r0 != 0) goto L21
            int r0 = r3.f28682p     // Catch: java.lang.Throwable -> L28
            if (r0 != r2) goto L22
        L21:
            r1 = 1
        L22:
            java.util.concurrent.locks.Lock r0 = r3.f28681o
            r0.unlock()
            return r1
        L28:
            r0 = move-exception
            java.util.concurrent.locks.Lock r1 = r3.f28681o
            r1.unlock()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.e0.k():boolean");
    }

    @Override // com.google.android.gms.common.api.internal.g2
    @s7.a("mLock")
    public final <A extends a.b, T extends e.a<? extends com.google.android.gms.common.api.q, A>> T l(@NonNull T t9) {
        if (p(t9)) {
            if (o()) {
                t9.b(new Status(4, (String) null, D()));
                return t9;
            }
            return (T) this.f28673g.l(t9);
        }
        return (T) this.f28672f.l(t9);
    }

    @Override // com.google.android.gms.common.api.internal.g2
    @s7.a("mLock")
    public final ConnectionResult zab() {
        throw new UnsupportedOperationException();
    }
}
