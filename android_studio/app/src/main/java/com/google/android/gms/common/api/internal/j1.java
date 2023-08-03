package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.i;
import com.google.android.gms.common.api.internal.e;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Lock;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class j1 extends com.google.android.gms.common.api.i implements e2 {
    final j3 A;
    private final com.google.android.gms.common.internal.q0 B;

    /* renamed from: e  reason: collision with root package name */
    private final Lock f28759e;

    /* renamed from: f  reason: collision with root package name */
    private final com.google.android.gms.common.internal.r0 f28760f;

    /* renamed from: h  reason: collision with root package name */
    private final int f28762h;

    /* renamed from: i  reason: collision with root package name */
    private final Context f28763i;

    /* renamed from: j  reason: collision with root package name */
    private final Looper f28764j;

    /* renamed from: l  reason: collision with root package name */
    private volatile boolean f28766l;

    /* renamed from: m  reason: collision with root package name */
    private long f28767m;

    /* renamed from: n  reason: collision with root package name */
    private long f28768n;

    /* renamed from: o  reason: collision with root package name */
    private final h1 f28769o;

    /* renamed from: p  reason: collision with root package name */
    private final com.google.android.gms.common.e f28770p;
    @Nullable
    @y2.d0

    /* renamed from: q  reason: collision with root package name */
    c2 f28771q;

    /* renamed from: r  reason: collision with root package name */
    final Map<a.c<?>, a.f> f28772r;

    /* renamed from: s  reason: collision with root package name */
    Set<Scope> f28773s;

    /* renamed from: t  reason: collision with root package name */
    final com.google.android.gms.common.internal.f f28774t;

    /* renamed from: u  reason: collision with root package name */
    final Map<com.google.android.gms.common.api.a<?>, Boolean> f28775u;

    /* renamed from: v  reason: collision with root package name */
    final a.AbstractC0193a<? extends com.google.android.gms.signin.f, com.google.android.gms.signin.a> f28776v;

    /* renamed from: w  reason: collision with root package name */
    private final o f28777w;

    /* renamed from: x  reason: collision with root package name */
    private final ArrayList<z3> f28778x;

    /* renamed from: y  reason: collision with root package name */
    private Integer f28779y;
    @Nullable

    /* renamed from: z  reason: collision with root package name */
    Set<h3> f28780z;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private g2 f28761g = null;
    @y2.d0

    /* renamed from: k  reason: collision with root package name */
    final Queue<e.a<?, ?>> f28765k = new LinkedList();

    public j1(Context context, Lock lock, Looper looper, com.google.android.gms.common.internal.f fVar, com.google.android.gms.common.e eVar, a.AbstractC0193a<? extends com.google.android.gms.signin.f, com.google.android.gms.signin.a> abstractC0193a, Map<com.google.android.gms.common.api.a<?>, Boolean> map, List<i.b> list, List<i.c> list2, Map<a.c<?>, a.f> map2, int i4, int i10, ArrayList<z3> arrayList) {
        this.f28767m = true != y2.e.c() ? 120000L : 10000L;
        this.f28768n = 5000L;
        this.f28773s = new HashSet();
        this.f28777w = new o();
        this.f28779y = null;
        this.f28780z = null;
        c1 c1Var = new c1(this);
        this.B = c1Var;
        this.f28763i = context;
        this.f28759e = lock;
        this.f28760f = new com.google.android.gms.common.internal.r0(looper, c1Var);
        this.f28764j = looper;
        this.f28769o = new h1(this, looper);
        this.f28770p = eVar;
        this.f28762h = i4;
        if (i4 >= 0) {
            this.f28779y = Integer.valueOf(i10);
        }
        this.f28775u = map;
        this.f28772r = map2;
        this.f28778x = arrayList;
        this.A = new j3();
        for (i.b bVar : list) {
            this.f28760f.f(bVar);
        }
        for (i.c cVar : list2) {
            this.f28760f.g(cVar);
        }
        this.f28774t = fVar;
        this.f28776v = abstractC0193a;
    }

    public static int K(Iterable<a.f> iterable, boolean z9) {
        boolean z10 = false;
        boolean z11 = false;
        for (a.f fVar : iterable) {
            z10 |= fVar.k();
            z11 |= fVar.d();
        }
        if (z10) {
            return (z11 && z9) ? 2 : 1;
        }
        return 3;
    }

    static String N(int i4) {
        return i4 != 1 ? i4 != 2 ? i4 != 3 ? "UNKNOWN" : "SIGN_IN_MODE_NONE" : "SIGN_IN_MODE_OPTIONAL" : "SIGN_IN_MODE_REQUIRED";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void P(j1 j1Var) {
        j1Var.f28759e.lock();
        try {
            if (j1Var.f28766l) {
                j1Var.U();
            }
        } finally {
            j1Var.f28759e.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void Q(j1 j1Var) {
        j1Var.f28759e.lock();
        try {
            if (j1Var.R()) {
                j1Var.U();
            }
        } finally {
            j1Var.f28759e.unlock();
        }
    }

    private final void S(int i4) {
        Integer num = this.f28779y;
        if (num == null) {
            this.f28779y = Integer.valueOf(i4);
        } else if (num.intValue() != i4) {
            String N = N(i4);
            String N2 = N(this.f28779y.intValue());
            StringBuilder sb = new StringBuilder(N.length() + 51 + N2.length());
            sb.append("Cannot use sign-in mode: ");
            sb.append(N);
            sb.append(". Mode was already set to ");
            sb.append(N2);
            throw new IllegalStateException(sb.toString());
        }
        if (this.f28761g != null) {
            return;
        }
        boolean z9 = false;
        boolean z10 = false;
        for (a.f fVar : this.f28772r.values()) {
            z9 |= fVar.k();
            z10 |= fVar.d();
        }
        int intValue = this.f28779y.intValue();
        if (intValue != 1) {
            if (intValue == 2 && z9) {
                this.f28761g = e0.s(this.f28763i, this, this.f28759e, this.f28764j, this.f28770p, this.f28772r, this.f28774t, this.f28775u, this.f28776v, this.f28778x);
                return;
            }
        } else if (!z9) {
            throw new IllegalStateException("SIGN_IN_MODE_REQUIRED cannot be used on a GoogleApiClient that does not contain any authenticated APIs. Use connect() instead.");
        } else {
            if (z10) {
                throw new IllegalStateException("Cannot use SIGN_IN_MODE_REQUIRED with GOOGLE_SIGN_IN_API. Use connect(SIGN_IN_MODE_OPTIONAL) instead.");
            }
        }
        this.f28761g = new n1(this.f28763i, this, this.f28759e, this.f28764j, this.f28770p, this.f28772r, this.f28774t, this.f28775u, this.f28776v, this.f28778x, this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void T(com.google.android.gms.common.api.i iVar, z zVar, boolean z9) {
        com.google.android.gms.common.internal.service.a.f29193d.a(iVar).h(new g1(this, zVar, z9, iVar));
    }

    @s7.a("mLock")
    private final void U() {
        this.f28760f.b();
        ((g2) com.google.android.gms.common.internal.u.k(this.f28761g)).a();
    }

    @Override // com.google.android.gms.common.api.i
    public final void A() {
        i();
        g();
    }

    @Override // com.google.android.gms.common.api.i
    public final void B(@NonNull i.b bVar) {
        this.f28760f.f(bVar);
    }

    @Override // com.google.android.gms.common.api.i
    public final void C(@NonNull i.c cVar) {
        this.f28760f.g(cVar);
    }

    @Override // com.google.android.gms.common.api.i
    public final <L> n<L> D(@NonNull L l10) {
        this.f28759e.lock();
        try {
            return this.f28777w.d(l10, this.f28764j, "NO_TYPE");
        } finally {
            this.f28759e.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.i
    public final void E(@NonNull FragmentActivity fragmentActivity) {
        l lVar = new l((Activity) fragmentActivity);
        if (this.f28762h >= 0) {
            q3.u(lVar).w(this.f28762h);
            return;
        }
        throw new IllegalStateException("Called stopAutoManage but automatic lifecycle management is not enabled.");
    }

    @Override // com.google.android.gms.common.api.i
    public final void F(@NonNull i.b bVar) {
        this.f28760f.h(bVar);
    }

    @Override // com.google.android.gms.common.api.i
    public final void G(@NonNull i.c cVar) {
        this.f28760f.i(cVar);
    }

    @Override // com.google.android.gms.common.api.i
    public final void H(h3 h3Var) {
        this.f28759e.lock();
        try {
            if (this.f28780z == null) {
                this.f28780z = new HashSet();
            }
            this.f28780z.add(h3Var);
        } finally {
            this.f28759e.unlock();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0041, code lost:
        if (r3 == false) goto L17;
     */
    @Override // com.google.android.gms.common.api.i
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void I(com.google.android.gms.common.api.internal.h3 r3) {
        /*
            r2 = this;
            java.util.concurrent.locks.Lock r0 = r2.f28759e
            r0.lock()
            java.util.Set<com.google.android.gms.common.api.internal.h3> r0 = r2.f28780z     // Catch: java.lang.Throwable -> L57
            java.lang.String r1 = "GoogleApiClientImpl"
            if (r0 != 0) goto L16
            java.lang.Exception r3 = new java.lang.Exception     // Catch: java.lang.Throwable -> L57
            r3.<init>()     // Catch: java.lang.Throwable -> L57
            java.lang.String r0 = "Attempted to remove pending transform when no transforms are registered."
            android.util.Log.wtf(r1, r0, r3)     // Catch: java.lang.Throwable -> L57
            goto L4a
        L16:
            boolean r3 = r0.remove(r3)     // Catch: java.lang.Throwable -> L57
            if (r3 != 0) goto L27
            java.lang.Exception r3 = new java.lang.Exception     // Catch: java.lang.Throwable -> L57
            r3.<init>()     // Catch: java.lang.Throwable -> L57
            java.lang.String r0 = "Failed to remove pending transform - this may lead to memory leaks!"
            android.util.Log.wtf(r1, r0, r3)     // Catch: java.lang.Throwable -> L57
            goto L4a
        L27:
            java.util.concurrent.locks.Lock r3 = r2.f28759e     // Catch: java.lang.Throwable -> L57
            r3.lock()     // Catch: java.lang.Throwable -> L57
            java.util.Set<com.google.android.gms.common.api.internal.h3> r3 = r2.f28780z     // Catch: java.lang.Throwable -> L50
            if (r3 != 0) goto L36
            java.util.concurrent.locks.Lock r3 = r2.f28759e     // Catch: java.lang.Throwable -> L57
            r3.unlock()     // Catch: java.lang.Throwable -> L57
            goto L43
        L36:
            boolean r3 = r3.isEmpty()     // Catch: java.lang.Throwable -> L50
            r3 = r3 ^ 1
            java.util.concurrent.locks.Lock r0 = r2.f28759e     // Catch: java.lang.Throwable -> L57
            r0.unlock()     // Catch: java.lang.Throwable -> L57
            if (r3 != 0) goto L4a
        L43:
            com.google.android.gms.common.api.internal.g2 r3 = r2.f28761g     // Catch: java.lang.Throwable -> L57
            if (r3 == 0) goto L4a
            r3.b()     // Catch: java.lang.Throwable -> L57
        L4a:
            java.util.concurrent.locks.Lock r3 = r2.f28759e
            r3.unlock()
            return
        L50:
            r3 = move-exception
            java.util.concurrent.locks.Lock r0 = r2.f28759e     // Catch: java.lang.Throwable -> L57
            r0.unlock()     // Catch: java.lang.Throwable -> L57
            throw r3     // Catch: java.lang.Throwable -> L57
        L57:
            r3 = move-exception
            java.util.concurrent.locks.Lock r0 = r2.f28759e
            r0.unlock()
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.j1.I(com.google.android.gms.common.api.internal.h3):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String M() {
        StringWriter stringWriter = new StringWriter();
        j("", null, new PrintWriter(stringWriter), null);
        return stringWriter.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @s7.a("mLock")
    public final boolean R() {
        if (this.f28766l) {
            this.f28766l = false;
            this.f28769o.removeMessages(2);
            this.f28769o.removeMessages(1);
            c2 c2Var = this.f28771q;
            if (c2Var != null) {
                c2Var.b();
                this.f28771q = null;
            }
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.common.api.internal.e2
    @s7.a("mLock")
    public final void a(@Nullable Bundle bundle) {
        while (!this.f28765k.isEmpty()) {
            m(this.f28765k.remove());
        }
        this.f28760f.d(bundle);
    }

    @Override // com.google.android.gms.common.api.internal.e2
    @s7.a("mLock")
    public final void b(int i4, boolean z9) {
        if (i4 == 1) {
            if (!z9 && !this.f28766l) {
                this.f28766l = true;
                if (this.f28771q == null && !y2.e.c()) {
                    try {
                        this.f28771q = this.f28770p.G(this.f28763i.getApplicationContext(), new i1(this));
                    } catch (SecurityException unused) {
                    }
                }
                h1 h1Var = this.f28769o;
                h1Var.sendMessageDelayed(h1Var.obtainMessage(1), this.f28767m);
                h1 h1Var2 = this.f28769o;
                h1Var2.sendMessageDelayed(h1Var2.obtainMessage(2), this.f28768n);
            }
            i4 = 1;
        }
        for (BasePendingResult basePendingResult : (BasePendingResult[]) this.A.f28787a.toArray(new BasePendingResult[0])) {
            basePendingResult.l(j3.f28786c);
        }
        this.f28760f.e(i4);
        this.f28760f.a();
        if (i4 == 2) {
            U();
        }
    }

    @Override // com.google.android.gms.common.api.internal.e2
    @s7.a("mLock")
    public final void c(ConnectionResult connectionResult) {
        if (!this.f28770p.l(this.f28763i, connectionResult.getErrorCode())) {
            R();
        }
        if (this.f28766l) {
            return;
        }
        this.f28760f.c(connectionResult);
        this.f28760f.a();
    }

    @Override // com.google.android.gms.common.api.i
    public final ConnectionResult d() {
        boolean z9 = true;
        com.google.android.gms.common.internal.u.r(Looper.myLooper() != Looper.getMainLooper(), "blockingConnect must not be called on the UI thread");
        this.f28759e.lock();
        try {
            if (this.f28762h >= 0) {
                if (this.f28779y == null) {
                    z9 = false;
                }
                com.google.android.gms.common.internal.u.r(z9, "Sign-in mode should have been set explicitly by auto-manage.");
            } else {
                Integer num = this.f28779y;
                if (num == null) {
                    this.f28779y = Integer.valueOf(K(this.f28772r.values(), false));
                } else if (num.intValue() == 2) {
                    throw new IllegalStateException("Cannot call blockingConnect() when sign-in mode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead.");
                }
            }
            S(((Integer) com.google.android.gms.common.internal.u.k(this.f28779y)).intValue());
            this.f28760f.b();
            return ((g2) com.google.android.gms.common.internal.u.k(this.f28761g)).zab();
        } finally {
            this.f28759e.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.i
    public final ConnectionResult e(long j4, @NonNull TimeUnit timeUnit) {
        com.google.android.gms.common.internal.u.r(Looper.myLooper() != Looper.getMainLooper(), "blockingConnect must not be called on the UI thread");
        com.google.android.gms.common.internal.u.l(timeUnit, "TimeUnit must not be null");
        this.f28759e.lock();
        try {
            Integer num = this.f28779y;
            if (num == null) {
                this.f28779y = Integer.valueOf(K(this.f28772r.values(), false));
            } else if (num.intValue() == 2) {
                throw new IllegalStateException("Cannot call blockingConnect() when sign-in mode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead.");
            }
            S(((Integer) com.google.android.gms.common.internal.u.k(this.f28779y)).intValue());
            this.f28760f.b();
            return ((g2) com.google.android.gms.common.internal.u.k(this.f28761g)).i(j4, timeUnit);
        } finally {
            this.f28759e.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.i
    public final com.google.android.gms.common.api.l<Status> f() {
        com.google.android.gms.common.internal.u.r(u(), "GoogleApiClient is not connected yet.");
        Integer num = this.f28779y;
        boolean z9 = true;
        if (num != null && num.intValue() == 2) {
            z9 = false;
        }
        com.google.android.gms.common.internal.u.r(z9, "Cannot use clearDefaultAccountAndReconnect with GOOGLE_SIGN_IN_API");
        z zVar = new z(this);
        if (this.f28772r.containsKey(com.google.android.gms.common.internal.service.a.f29190a)) {
            T(this, zVar, false);
        } else {
            AtomicReference atomicReference = new AtomicReference();
            d1 d1Var = new d1(this, atomicReference, zVar);
            f1 f1Var = new f1(this, zVar);
            i.a aVar = new i.a(this.f28763i);
            aVar.a(com.google.android.gms.common.internal.service.a.f29191b);
            aVar.e(d1Var);
            aVar.f(f1Var);
            aVar.m(this.f28769o);
            com.google.android.gms.common.api.i h4 = aVar.h();
            atomicReference.set(h4);
            h4.g();
        }
        return zVar;
    }

    @Override // com.google.android.gms.common.api.i
    public final void g() {
        this.f28759e.lock();
        try {
            int i4 = 2;
            boolean z9 = false;
            if (this.f28762h >= 0) {
                com.google.android.gms.common.internal.u.r(this.f28779y != null, "Sign-in mode should have been set explicitly by auto-manage.");
            } else {
                Integer num = this.f28779y;
                if (num == null) {
                    this.f28779y = Integer.valueOf(K(this.f28772r.values(), false));
                } else if (num.intValue() == 2) {
                    throw new IllegalStateException("Cannot call connect() when SignInMode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead.");
                }
            }
            int intValue = ((Integer) com.google.android.gms.common.internal.u.k(this.f28779y)).intValue();
            this.f28759e.lock();
            if (intValue == 3 || intValue == 1) {
                i4 = intValue;
            } else if (intValue != 2) {
                i4 = intValue;
                StringBuilder sb = new StringBuilder(33);
                sb.append("Illegal sign-in mode: ");
                sb.append(i4);
                com.google.android.gms.common.internal.u.b(z9, sb.toString());
                S(i4);
                U();
                this.f28759e.unlock();
            }
            z9 = true;
            StringBuilder sb2 = new StringBuilder(33);
            sb2.append("Illegal sign-in mode: ");
            sb2.append(i4);
            com.google.android.gms.common.internal.u.b(z9, sb2.toString());
            S(i4);
            U();
            this.f28759e.unlock();
        } finally {
            this.f28759e.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.i
    public final void h(int i4) {
        this.f28759e.lock();
        boolean z9 = true;
        if (i4 != 3 && i4 != 1) {
            if (i4 == 2) {
                i4 = 2;
            } else {
                z9 = false;
            }
        }
        try {
            StringBuilder sb = new StringBuilder(33);
            sb.append("Illegal sign-in mode: ");
            sb.append(i4);
            com.google.android.gms.common.internal.u.b(z9, sb.toString());
            S(i4);
            U();
        } finally {
            this.f28759e.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.i
    public final void i() {
        Lock lock;
        this.f28759e.lock();
        try {
            this.A.b();
            g2 g2Var = this.f28761g;
            if (g2Var != null) {
                g2Var.d();
            }
            this.f28777w.e();
            for (e.a<?, ?> aVar : this.f28765k) {
                aVar.v(null);
                aVar.f();
            }
            this.f28765k.clear();
            if (this.f28761g == null) {
                lock = this.f28759e;
            } else {
                R();
                this.f28760f.a();
                lock = this.f28759e;
            }
            lock.unlock();
        } catch (Throwable th) {
            this.f28759e.unlock();
            throw th;
        }
    }

    @Override // com.google.android.gms.common.api.i
    public final void j(String str, @Nullable FileDescriptor fileDescriptor, PrintWriter printWriter, @Nullable String[] strArr) {
        printWriter.append((CharSequence) str).append("mContext=").println(this.f28763i);
        printWriter.append((CharSequence) str).append("mResuming=").print(this.f28766l);
        printWriter.append(" mWorkQueue.size()=").print(this.f28765k.size());
        printWriter.append(" mUnconsumedApiCalls.size()=").println(this.A.f28787a.size());
        g2 g2Var = this.f28761g;
        if (g2Var != null) {
            g2Var.f(str, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // com.google.android.gms.common.api.i
    public final <A extends a.b, R extends com.google.android.gms.common.api.q, T extends e.a<R, A>> T l(@NonNull T t9) {
        Lock lock;
        com.google.android.gms.common.api.a<?> x9 = t9.x();
        boolean containsKey = this.f28772r.containsKey(t9.y());
        String d4 = x9 != null ? x9.d() : "the API";
        StringBuilder sb = new StringBuilder(String.valueOf(d4).length() + 65);
        sb.append("GoogleApiClient is not configured to use ");
        sb.append(d4);
        sb.append(" required for this call.");
        com.google.android.gms.common.internal.u.b(containsKey, sb.toString());
        this.f28759e.lock();
        try {
            g2 g2Var = this.f28761g;
            if (g2Var == null) {
                this.f28765k.add(t9);
                lock = this.f28759e;
            } else {
                t9 = (T) g2Var.j(t9);
                lock = this.f28759e;
            }
            lock.unlock();
            return t9;
        } catch (Throwable th) {
            this.f28759e.unlock();
            throw th;
        }
    }

    @Override // com.google.android.gms.common.api.i
    public final <A extends a.b, T extends e.a<? extends com.google.android.gms.common.api.q, A>> T m(@NonNull T t9) {
        Lock lock;
        com.google.android.gms.common.api.a<?> x9 = t9.x();
        boolean containsKey = this.f28772r.containsKey(t9.y());
        String d4 = x9 != null ? x9.d() : "the API";
        StringBuilder sb = new StringBuilder(String.valueOf(d4).length() + 65);
        sb.append("GoogleApiClient is not configured to use ");
        sb.append(d4);
        sb.append(" required for this call.");
        com.google.android.gms.common.internal.u.b(containsKey, sb.toString());
        this.f28759e.lock();
        try {
            g2 g2Var = this.f28761g;
            if (g2Var != null) {
                if (this.f28766l) {
                    this.f28765k.add(t9);
                    while (!this.f28765k.isEmpty()) {
                        e.a<?, ?> remove = this.f28765k.remove();
                        this.A.a(remove);
                        remove.b(Status.RESULT_INTERNAL_ERROR);
                    }
                    lock = this.f28759e;
                } else {
                    t9 = (T) g2Var.l(t9);
                    lock = this.f28759e;
                }
                lock.unlock();
                return t9;
            }
            throw new IllegalStateException("GoogleApiClient is not connected yet.");
        } catch (Throwable th) {
            this.f28759e.unlock();
            throw th;
        }
    }

    @Override // com.google.android.gms.common.api.i
    @NonNull
    public final <C extends a.f> C o(@NonNull a.c<C> cVar) {
        C c10 = (C) this.f28772r.get(cVar);
        com.google.android.gms.common.internal.u.l(c10, "Appropriate Api was not requested.");
        return c10;
    }

    @Override // com.google.android.gms.common.api.i
    @NonNull
    public final ConnectionResult p(@NonNull com.google.android.gms.common.api.a<?> aVar) {
        ConnectionResult connectionResult;
        Lock lock;
        this.f28759e.lock();
        try {
            if (!u() && !this.f28766l) {
                throw new IllegalStateException("Cannot invoke getConnectionResult unless GoogleApiClient is connected");
            }
            if (this.f28772r.containsKey(aVar.b())) {
                ConnectionResult g4 = ((g2) com.google.android.gms.common.internal.u.k(this.f28761g)).g(aVar);
                if (g4 == null) {
                    if (this.f28766l) {
                        connectionResult = ConnectionResult.RESULT_SUCCESS;
                        lock = this.f28759e;
                    } else {
                        Log.w("GoogleApiClientImpl", M());
                        Log.wtf("GoogleApiClientImpl", String.valueOf(aVar.d()).concat(" requested in getConnectionResult is not connected but is not present in the failed  connections map"), new Exception());
                        connectionResult = new ConnectionResult(8, null);
                        lock = this.f28759e;
                    }
                    lock.unlock();
                    return connectionResult;
                }
                return g4;
            }
            throw new IllegalArgumentException(String.valueOf(aVar.d()).concat(" was never registered with GoogleApiClient"));
        } finally {
            this.f28759e.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.i
    public final Context q() {
        return this.f28763i;
    }

    @Override // com.google.android.gms.common.api.i
    public final Looper r() {
        return this.f28764j;
    }

    @Override // com.google.android.gms.common.api.i
    public final boolean s(@NonNull com.google.android.gms.common.api.a<?> aVar) {
        return this.f28772r.containsKey(aVar.b());
    }

    @Override // com.google.android.gms.common.api.i
    public final boolean t(@NonNull com.google.android.gms.common.api.a<?> aVar) {
        a.f fVar;
        return u() && (fVar = this.f28772r.get(aVar.b())) != null && fVar.a();
    }

    @Override // com.google.android.gms.common.api.i
    public final boolean u() {
        g2 g2Var = this.f28761g;
        return g2Var != null && g2Var.k();
    }

    @Override // com.google.android.gms.common.api.i
    public final boolean v() {
        g2 g2Var = this.f28761g;
        return g2Var != null && g2Var.h();
    }

    @Override // com.google.android.gms.common.api.i
    public final boolean w(@NonNull i.b bVar) {
        return this.f28760f.j(bVar);
    }

    @Override // com.google.android.gms.common.api.i
    public final boolean x(@NonNull i.c cVar) {
        return this.f28760f.k(cVar);
    }

    @Override // com.google.android.gms.common.api.i
    public final boolean y(w wVar) {
        g2 g2Var = this.f28761g;
        return g2Var != null && g2Var.e(wVar);
    }

    @Override // com.google.android.gms.common.api.i
    public final void z() {
        g2 g2Var = this.f28761g;
        if (g2Var != null) {
            g2Var.c();
        }
    }
}
