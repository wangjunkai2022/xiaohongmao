package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.internal.e;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class n1 implements g2, a4 {

    /* renamed from: c  reason: collision with root package name */
    private final Lock f28814c;

    /* renamed from: d  reason: collision with root package name */
    private final Condition f28815d;

    /* renamed from: e  reason: collision with root package name */
    private final Context f28816e;

    /* renamed from: f  reason: collision with root package name */
    private final com.google.android.gms.common.f f28817f;

    /* renamed from: g  reason: collision with root package name */
    private final m1 f28818g;

    /* renamed from: h  reason: collision with root package name */
    final Map<a.c<?>, a.f> f28819h;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    final com.google.android.gms.common.internal.f f28821j;

    /* renamed from: k  reason: collision with root package name */
    final Map<com.google.android.gms.common.api.a<?>, Boolean> f28822k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    final a.AbstractC0193a<? extends com.google.android.gms.signin.f, com.google.android.gms.signin.a> f28823l;
    @NotOnlyInitialized

    /* renamed from: m  reason: collision with root package name */
    private volatile k1 f28824m;

    /* renamed from: o  reason: collision with root package name */
    int f28826o;

    /* renamed from: p  reason: collision with root package name */
    final j1 f28827p;

    /* renamed from: q  reason: collision with root package name */
    final e2 f28828q;

    /* renamed from: i  reason: collision with root package name */
    final Map<a.c<?>, ConnectionResult> f28820i = new HashMap();
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private ConnectionResult f28825n = null;

    public n1(Context context, j1 j1Var, Lock lock, Looper looper, com.google.android.gms.common.f fVar, Map<a.c<?>, a.f> map, @Nullable com.google.android.gms.common.internal.f fVar2, Map<com.google.android.gms.common.api.a<?>, Boolean> map2, @Nullable a.AbstractC0193a<? extends com.google.android.gms.signin.f, com.google.android.gms.signin.a> abstractC0193a, ArrayList<z3> arrayList, e2 e2Var) {
        this.f28816e = context;
        this.f28814c = lock;
        this.f28817f = fVar;
        this.f28819h = map;
        this.f28821j = fVar2;
        this.f28822k = map2;
        this.f28823l = abstractC0193a;
        this.f28827p = j1Var;
        this.f28828q = e2Var;
        int size = arrayList.size();
        for (int i4 = 0; i4 < size; i4++) {
            arrayList.get(i4).a(this);
        }
        this.f28818g = new m1(this, looper);
        this.f28815d = lock.newCondition();
        this.f28824m = new b1(this);
    }

    @Override // com.google.android.gms.common.api.internal.g2
    @s7.a("mLock")
    public final void a() {
        this.f28824m.c();
    }

    @Override // com.google.android.gms.common.api.internal.g2
    @s7.a("mLock")
    public final void b() {
        if (this.f28824m instanceof n0) {
            ((n0) this.f28824m).j();
        }
    }

    @Override // com.google.android.gms.common.api.internal.g2
    public final void c() {
    }

    @Override // com.google.android.gms.common.api.internal.g2
    @s7.a("mLock")
    public final void d() {
        if (this.f28824m.g()) {
            this.f28820i.clear();
        }
    }

    @Override // com.google.android.gms.common.api.internal.g2
    public final boolean e(w wVar) {
        return false;
    }

    @Override // com.google.android.gms.common.api.internal.g2
    public final void f(String str, @Nullable FileDescriptor fileDescriptor, PrintWriter printWriter, @Nullable String[] strArr) {
        String concat = String.valueOf(str).concat("  ");
        printWriter.append((CharSequence) str).append("mState=").println(this.f28824m);
        for (com.google.android.gms.common.api.a<?> aVar : this.f28822k.keySet()) {
            printWriter.append((CharSequence) str).append((CharSequence) aVar.d()).println(":");
            ((a.f) com.google.android.gms.common.internal.u.k(this.f28819h.get(aVar.b()))).p(concat, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // com.google.android.gms.common.api.internal.g2
    @Nullable
    @s7.a("mLock")
    public final ConnectionResult g(@NonNull com.google.android.gms.common.api.a<?> aVar) {
        a.c<?> b10 = aVar.b();
        if (this.f28819h.containsKey(b10)) {
            if (this.f28819h.get(b10).a()) {
                return ConnectionResult.RESULT_SUCCESS;
            }
            if (this.f28820i.containsKey(b10)) {
                return this.f28820i.get(b10);
            }
            return null;
        }
        return null;
    }

    @Override // com.google.android.gms.common.api.internal.g2
    public final boolean h() {
        return this.f28824m instanceof a1;
    }

    @Override // com.google.android.gms.common.api.internal.g2
    @s7.a("mLock")
    public final ConnectionResult i(long j4, TimeUnit timeUnit) {
        a();
        long nanos = timeUnit.toNanos(j4);
        while (this.f28824m instanceof a1) {
            if (nanos <= 0) {
                d();
                return new ConnectionResult(14, null);
            }
            try {
                nanos = this.f28815d.awaitNanos(nanos);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                return new ConnectionResult(15, null);
            }
            Thread.currentThread().interrupt();
            return new ConnectionResult(15, null);
        }
        if (this.f28824m instanceof n0) {
            return ConnectionResult.RESULT_SUCCESS;
        }
        ConnectionResult connectionResult = this.f28825n;
        return connectionResult != null ? connectionResult : new ConnectionResult(13, null);
    }

    @Override // com.google.android.gms.common.api.internal.g2
    @s7.a("mLock")
    public final <A extends a.b, R extends com.google.android.gms.common.api.q, T extends e.a<R, A>> T j(@NonNull T t9) {
        t9.s();
        this.f28824m.f(t9);
        return t9;
    }

    @Override // com.google.android.gms.common.api.internal.g2
    public final boolean k() {
        return this.f28824m instanceof n0;
    }

    @Override // com.google.android.gms.common.api.internal.g2
    @s7.a("mLock")
    public final <A extends a.b, T extends e.a<? extends com.google.android.gms.common.api.q, A>> T l(@NonNull T t9) {
        t9.s();
        return (T) this.f28824m.h(t9);
    }

    @Override // com.google.android.gms.common.api.internal.a4
    public final void n1(@NonNull ConnectionResult connectionResult, @NonNull com.google.android.gms.common.api.a<?> aVar, boolean z9) {
        this.f28814c.lock();
        try {
            this.f28824m.d(connectionResult, aVar, z9);
        } finally {
            this.f28814c.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void o() {
        this.f28814c.lock();
        try {
            this.f28827p.R();
            this.f28824m = new n0(this);
            this.f28824m.b();
            this.f28815d.signalAll();
        } finally {
            this.f28814c.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void p() {
        this.f28814c.lock();
        try {
            this.f28824m = new a1(this, this.f28821j, this.f28822k, this.f28817f, this.f28823l, this.f28814c, this.f28816e);
            this.f28824m.b();
            this.f28815d.signalAll();
        } finally {
            this.f28814c.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void q(@Nullable ConnectionResult connectionResult) {
        this.f28814c.lock();
        try {
            this.f28825n = connectionResult;
            this.f28824m = new b1(this);
            this.f28824m.b();
            this.f28815d.signalAll();
        } finally {
            this.f28814c.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void r(l1 l1Var) {
        this.f28818g.sendMessage(this.f28818g.obtainMessage(1, l1Var));
    }

    @Override // com.google.android.gms.common.api.internal.f
    public final void s(@Nullable Bundle bundle) {
        this.f28814c.lock();
        try {
            this.f28824m.a(bundle);
        } finally {
            this.f28814c.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void t(RuntimeException runtimeException) {
        this.f28818g.sendMessage(this.f28818g.obtainMessage(2, runtimeException));
    }

    @Override // com.google.android.gms.common.api.internal.f
    public final void x(int i4) {
        this.f28814c.lock();
        try {
            this.f28824m.e(i4);
        } finally {
            this.f28814c.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.g2
    @s7.a("mLock")
    public final ConnectionResult zab() {
        a();
        while (this.f28824m instanceof a1) {
            try {
                this.f28815d.await();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                return new ConnectionResult(15, null);
            }
        }
        if (this.f28824m instanceof n0) {
            return ConnectionResult.RESULT_SUCCESS;
        }
        ConnectionResult connectionResult = this.f28825n;
        return connectionResult != null ? connectionResult : new ConnectionResult(13, null);
    }
}
