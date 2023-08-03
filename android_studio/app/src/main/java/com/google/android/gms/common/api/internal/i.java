package com.google.android.gms.common.api.internal;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import androidx.collection.ArraySet;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.internal.e;
import com.google.android.gms.common.api.internal.n;
import com.google.android.gms.common.internal.MethodInvocation;
import com.google.android.gms.common.internal.RootTelemetryConfiguration;
import com.google.android.gms.common.internal.TelemetryData;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@u2.a
@com.google.android.gms.common.internal.y
/* loaded from: classes2.dex */
public class i implements Handler.Callback {
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public static final Status f28721r = new Status(4, "Sign-out occurred while this API call was in progress.");

    /* renamed from: s  reason: collision with root package name */
    private static final Status f28722s = new Status(4, "The user must be signed in to make this API call.");

    /* renamed from: t  reason: collision with root package name */
    private static final Object f28723t = new Object();
    @Nullable
    @s7.a(org.aspectj.lang.c.f91028k)

    /* renamed from: u  reason: collision with root package name */
    private static i f28724u;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private TelemetryData f28729e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private com.google.android.gms.common.internal.b0 f28730f;

    /* renamed from: g  reason: collision with root package name */
    private final Context f28731g;

    /* renamed from: h  reason: collision with root package name */
    private final com.google.android.gms.common.e f28732h;

    /* renamed from: i  reason: collision with root package name */
    private final com.google.android.gms.common.internal.s0 f28733i;
    @NotOnlyInitialized

    /* renamed from: p  reason: collision with root package name */
    private final Handler f28740p;

    /* renamed from: q  reason: collision with root package name */
    private volatile boolean f28741q;

    /* renamed from: a  reason: collision with root package name */
    private long f28725a = 5000;

    /* renamed from: b  reason: collision with root package name */
    private long f28726b = 120000;

    /* renamed from: c  reason: collision with root package name */
    private long f28727c = 10000;

    /* renamed from: d  reason: collision with root package name */
    private boolean f28728d = false;

    /* renamed from: j  reason: collision with root package name */
    private final AtomicInteger f28734j = new AtomicInteger(1);

    /* renamed from: k  reason: collision with root package name */
    private final AtomicInteger f28735k = new AtomicInteger(0);

    /* renamed from: l  reason: collision with root package name */
    private final Map<c<?>, v1<?>> f28736l = new ConcurrentHashMap(5, 0.75f, 1);
    @Nullable
    @s7.a(org.aspectj.lang.c.f91028k)

    /* renamed from: m  reason: collision with root package name */
    private i0 f28737m = null;
    @s7.a(org.aspectj.lang.c.f91028k)

    /* renamed from: n  reason: collision with root package name */
    private final Set<c<?>> f28738n = new ArraySet();

    /* renamed from: o  reason: collision with root package name */
    private final Set<c<?>> f28739o = new ArraySet();

    @u2.a
    private i(Context context, Looper looper, com.google.android.gms.common.e eVar) {
        this.f28741q = true;
        this.f28731g = context;
        com.google.android.gms.internal.base.q qVar = new com.google.android.gms.internal.base.q(looper, this);
        this.f28740p = qVar;
        this.f28732h = eVar;
        this.f28733i = new com.google.android.gms.common.internal.s0(eVar);
        if (y2.l.a(context)) {
            this.f28741q = false;
        }
        qVar.sendMessage(qVar.obtainMessage(6));
    }

    @u2.a
    public static void a() {
        synchronized (f28723t) {
            i iVar = f28724u;
            if (iVar != null) {
                iVar.f28735k.incrementAndGet();
                Handler handler = iVar.f28740p;
                handler.sendMessageAtFrontOfQueue(handler.obtainMessage(10));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Status i(c<?> cVar, ConnectionResult connectionResult) {
        String b10 = cVar.b();
        String valueOf = String.valueOf(connectionResult);
        StringBuilder sb = new StringBuilder(String.valueOf(b10).length() + 63 + valueOf.length());
        sb.append("API: ");
        sb.append(b10);
        sb.append(" is not available on this device. Connection failed with: ");
        sb.append(valueOf);
        return new Status(connectionResult, sb.toString());
    }

    @WorkerThread
    private final v1<?> j(com.google.android.gms.common.api.h<?> hVar) {
        c<?> b10 = hVar.b();
        v1<?> v1Var = this.f28736l.get(b10);
        if (v1Var == null) {
            v1Var = new v1<>(this, hVar);
            this.f28736l.put(b10, v1Var);
        }
        if (v1Var.P()) {
            this.f28739o.add(b10);
        }
        v1Var.E();
        return v1Var;
    }

    @WorkerThread
    private final com.google.android.gms.common.internal.b0 k() {
        if (this.f28730f == null) {
            this.f28730f = com.google.android.gms.common.internal.a0.a(this.f28731g);
        }
        return this.f28730f;
    }

    @WorkerThread
    private final void l() {
        TelemetryData telemetryData = this.f28729e;
        if (telemetryData != null) {
            if (telemetryData.zaa() > 0 || g()) {
                k().a(telemetryData);
            }
            this.f28729e = null;
        }
    }

    private final <T> void m(com.google.android.gms.tasks.l<T> lVar, int i4, com.google.android.gms.common.api.h hVar) {
        j2 b10;
        if (i4 == 0 || (b10 = j2.b(this, i4, hVar.b())) == null) {
            return;
        }
        com.google.android.gms.tasks.k<T> a10 = lVar.a();
        final Handler handler = this.f28740p;
        handler.getClass();
        a10.f(new Executor() { // from class: com.google.android.gms.common.api.internal.p1
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                handler.post(runnable);
            }
        }, b10);
    }

    @NonNull
    public static i y() {
        i iVar;
        synchronized (f28723t) {
            com.google.android.gms.common.internal.u.l(f28724u, "Must guarantee manager is non-null before using getInstance");
            iVar = f28724u;
        }
        return iVar;
    }

    @NonNull
    public static i z(@NonNull Context context) {
        i iVar;
        synchronized (f28723t) {
            if (f28724u == null) {
                f28724u = new i(context.getApplicationContext(), com.google.android.gms.common.internal.j.e().getLooper(), com.google.android.gms.common.e.x());
            }
            iVar = f28724u;
        }
        return iVar;
    }

    @NonNull
    public final com.google.android.gms.tasks.k<Map<c<?>, String>> B(@NonNull Iterable<? extends com.google.android.gms.common.api.j<?>> iterable) {
        r3 r3Var = new r3(iterable);
        Handler handler = this.f28740p;
        handler.sendMessage(handler.obtainMessage(2, r3Var));
        return r3Var.a();
    }

    @NonNull
    public final com.google.android.gms.tasks.k<Boolean> C(@NonNull com.google.android.gms.common.api.h<?> hVar) {
        j0 j0Var = new j0(hVar.b());
        Handler handler = this.f28740p;
        handler.sendMessage(handler.obtainMessage(14, j0Var));
        return j0Var.b().a();
    }

    @NonNull
    public final <O extends a.d> com.google.android.gms.tasks.k<Void> D(@NonNull com.google.android.gms.common.api.h<O> hVar, @NonNull t<a.b, ?> tVar, @NonNull c0<a.b, ?> c0Var, @NonNull Runnable runnable) {
        com.google.android.gms.tasks.l lVar = new com.google.android.gms.tasks.l();
        m(lVar, tVar.e(), hVar);
        l3 l3Var = new l3(new o2(tVar, c0Var, runnable), lVar);
        Handler handler = this.f28740p;
        handler.sendMessage(handler.obtainMessage(8, new n2(l3Var, this.f28735k.get(), hVar)));
        return lVar.a();
    }

    @NonNull
    public final <O extends a.d> com.google.android.gms.tasks.k<Boolean> E(@NonNull com.google.android.gms.common.api.h<O> hVar, @NonNull n.a aVar, int i4) {
        com.google.android.gms.tasks.l lVar = new com.google.android.gms.tasks.l();
        m(lVar, i4, hVar);
        n3 n3Var = new n3(aVar, lVar);
        Handler handler = this.f28740p;
        handler.sendMessage(handler.obtainMessage(13, new n2(n3Var, this.f28735k.get(), hVar)));
        return lVar.a();
    }

    public final <O extends a.d> void J(@NonNull com.google.android.gms.common.api.h<O> hVar, int i4, @NonNull e.a<? extends com.google.android.gms.common.api.q, a.b> aVar) {
        k3 k3Var = new k3(i4, aVar);
        Handler handler = this.f28740p;
        handler.sendMessage(handler.obtainMessage(4, new n2(k3Var, this.f28735k.get(), hVar)));
    }

    public final <O extends a.d, ResultT> void K(@NonNull com.google.android.gms.common.api.h<O> hVar, int i4, @NonNull a0<a.b, ResultT> a0Var, @NonNull com.google.android.gms.tasks.l<ResultT> lVar, @NonNull y yVar) {
        m(lVar, a0Var.d(), hVar);
        m3 m3Var = new m3(i4, a0Var, lVar, yVar);
        Handler handler = this.f28740p;
        handler.sendMessage(handler.obtainMessage(4, new n2(m3Var, this.f28735k.get(), hVar)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void L(MethodInvocation methodInvocation, int i4, long j4, int i10) {
        Handler handler = this.f28740p;
        handler.sendMessage(handler.obtainMessage(18, new k2(methodInvocation, i4, j4, i10)));
    }

    public final void M(@NonNull ConnectionResult connectionResult, int i4) {
        if (h(connectionResult, i4)) {
            return;
        }
        Handler handler = this.f28740p;
        handler.sendMessage(handler.obtainMessage(5, i4, 0, connectionResult));
    }

    public final void b() {
        Handler handler = this.f28740p;
        handler.sendMessage(handler.obtainMessage(3));
    }

    public final void c(@NonNull com.google.android.gms.common.api.h<?> hVar) {
        Handler handler = this.f28740p;
        handler.sendMessage(handler.obtainMessage(7, hVar));
    }

    public final void d(@NonNull i0 i0Var) {
        synchronized (f28723t) {
            if (this.f28737m != i0Var) {
                this.f28737m = i0Var;
                this.f28738n.clear();
            }
            this.f28738n.addAll(i0Var.u());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void e(@NonNull i0 i0Var) {
        synchronized (f28723t) {
            if (this.f28737m == i0Var) {
                this.f28737m = null;
                this.f28738n.clear();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final boolean g() {
        if (this.f28728d) {
            return false;
        }
        RootTelemetryConfiguration a10 = com.google.android.gms.common.internal.w.b().a();
        if (a10 == null || a10.getMethodInvocationTelemetryEnabled()) {
            int a11 = this.f28733i.a(this.f28731g, 203400000);
            return a11 == -1 || a11 == 0;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean h(ConnectionResult connectionResult, int i4) {
        return this.f28732h.L(this.f28731g, connectionResult, i4);
    }

    @Override // android.os.Handler.Callback
    @WorkerThread
    public final boolean handleMessage(@NonNull Message message) {
        v1<?> v1Var;
        c cVar;
        c cVar2;
        c cVar3;
        c cVar4;
        int i4 = message.what;
        switch (i4) {
            case 1:
                this.f28727c = true == ((Boolean) message.obj).booleanValue() ? 10000L : 300000L;
                this.f28740p.removeMessages(12);
                for (c<?> cVar5 : this.f28736l.keySet()) {
                    Handler handler = this.f28740p;
                    handler.sendMessageDelayed(handler.obtainMessage(12, cVar5), this.f28727c);
                }
                break;
            case 2:
                r3 r3Var = (r3) message.obj;
                Iterator<c<?>> it = r3Var.b().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    } else {
                        c<?> next = it.next();
                        v1<?> v1Var2 = this.f28736l.get(next);
                        if (v1Var2 == null) {
                            r3Var.c(next, new ConnectionResult(13), null);
                            break;
                        } else if (v1Var2.O()) {
                            r3Var.c(next, ConnectionResult.RESULT_SUCCESS, v1Var2.t().g());
                        } else {
                            ConnectionResult q9 = v1Var2.q();
                            if (q9 != null) {
                                r3Var.c(next, q9, null);
                            } else {
                                v1Var2.J(r3Var);
                                v1Var2.E();
                            }
                        }
                    }
                }
            case 3:
                for (v1<?> v1Var3 : this.f28736l.values()) {
                    v1Var3.D();
                    v1Var3.E();
                }
                break;
            case 4:
            case 8:
            case 13:
                n2 n2Var = (n2) message.obj;
                v1<?> v1Var4 = this.f28736l.get(n2Var.f28831c.b());
                if (v1Var4 == null) {
                    v1Var4 = j(n2Var.f28831c);
                }
                if (v1Var4.P() && this.f28735k.get() != n2Var.f28830b) {
                    n2Var.f28829a.a(f28721r);
                    v1Var4.L();
                    break;
                } else {
                    v1Var4.F(n2Var.f28829a);
                    break;
                }
                break;
            case 5:
                int i10 = message.arg1;
                ConnectionResult connectionResult = (ConnectionResult) message.obj;
                Iterator<v1<?>> it2 = this.f28736l.values().iterator();
                while (true) {
                    if (it2.hasNext()) {
                        v1<?> next2 = it2.next();
                        v1Var = next2.o() == i10 ? next2 : null;
                    }
                }
                if (v1Var != null) {
                    if (connectionResult.getErrorCode() == 13) {
                        String h4 = this.f28732h.h(connectionResult.getErrorCode());
                        String errorMessage = connectionResult.getErrorMessage();
                        StringBuilder sb = new StringBuilder(String.valueOf(h4).length() + 69 + String.valueOf(errorMessage).length());
                        sb.append("Error resolution was canceled by the user, original error message: ");
                        sb.append(h4);
                        sb.append(": ");
                        sb.append(errorMessage);
                        v1.w(v1Var, new Status(17, sb.toString()));
                        break;
                    } else {
                        v1.w(v1Var, i(v1.u(v1Var), connectionResult));
                        break;
                    }
                } else {
                    StringBuilder sb2 = new StringBuilder(76);
                    sb2.append("Could not find API instance ");
                    sb2.append(i10);
                    sb2.append(" while trying to fail enqueued calls.");
                    Log.wtf("GoogleApiManager", sb2.toString(), new Exception());
                    break;
                }
            case 6:
                if (this.f28731g.getApplicationContext() instanceof Application) {
                    d.c((Application) this.f28731g.getApplicationContext());
                    d.b().a(new q1(this));
                    if (!d.b().e(true)) {
                        this.f28727c = 300000L;
                        break;
                    }
                }
                break;
            case 7:
                j((com.google.android.gms.common.api.h) message.obj);
                break;
            case 9:
                if (this.f28736l.containsKey(message.obj)) {
                    this.f28736l.get(message.obj).K();
                    break;
                }
                break;
            case 10:
                for (c<?> cVar6 : this.f28739o) {
                    v1<?> remove = this.f28736l.remove(cVar6);
                    if (remove != null) {
                        remove.L();
                    }
                }
                this.f28739o.clear();
                break;
            case 11:
                if (this.f28736l.containsKey(message.obj)) {
                    this.f28736l.get(message.obj).M();
                    break;
                }
                break;
            case 12:
                if (this.f28736l.containsKey(message.obj)) {
                    this.f28736l.get(message.obj).a();
                    break;
                }
                break;
            case 14:
                j0 j0Var = (j0) message.obj;
                c<?> a10 = j0Var.a();
                if (!this.f28736l.containsKey(a10)) {
                    j0Var.b().c(Boolean.FALSE);
                    break;
                } else {
                    j0Var.b().c(Boolean.valueOf(v1.N(this.f28736l.get(a10), false)));
                    break;
                }
            case 15:
                x1 x1Var = (x1) message.obj;
                Map<c<?>, v1<?>> map = this.f28736l;
                cVar = x1Var.f28928a;
                if (map.containsKey(cVar)) {
                    Map<c<?>, v1<?>> map2 = this.f28736l;
                    cVar2 = x1Var.f28928a;
                    v1.B(map2.get(cVar2), x1Var);
                    break;
                }
                break;
            case 16:
                x1 x1Var2 = (x1) message.obj;
                Map<c<?>, v1<?>> map3 = this.f28736l;
                cVar3 = x1Var2.f28928a;
                if (map3.containsKey(cVar3)) {
                    Map<c<?>, v1<?>> map4 = this.f28736l;
                    cVar4 = x1Var2.f28928a;
                    v1.C(map4.get(cVar4), x1Var2);
                    break;
                }
                break;
            case 17:
                l();
                break;
            case 18:
                k2 k2Var = (k2) message.obj;
                if (k2Var.f28792c == 0) {
                    k().a(new TelemetryData(k2Var.f28791b, Arrays.asList(k2Var.f28790a)));
                    break;
                } else {
                    TelemetryData telemetryData = this.f28729e;
                    if (telemetryData != null) {
                        List<MethodInvocation> zab = telemetryData.zab();
                        if (telemetryData.zaa() == k2Var.f28791b && (zab == null || zab.size() < k2Var.f28793d)) {
                            this.f28729e.zac(k2Var.f28790a);
                        } else {
                            this.f28740p.removeMessages(17);
                            l();
                        }
                    }
                    if (this.f28729e == null) {
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(k2Var.f28790a);
                        this.f28729e = new TelemetryData(k2Var.f28791b, arrayList);
                        Handler handler2 = this.f28740p;
                        handler2.sendMessageDelayed(handler2.obtainMessage(17), k2Var.f28792c);
                        break;
                    }
                }
                break;
            case 19:
                this.f28728d = false;
                break;
            default:
                StringBuilder sb3 = new StringBuilder(31);
                sb3.append("Unknown message id: ");
                sb3.append(i4);
                Log.w("GoogleApiManager", sb3.toString());
                return false;
        }
        return true;
    }

    public final int n() {
        return this.f28734j.getAndIncrement();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public final v1 x(c<?> cVar) {
        return this.f28736l.get(cVar);
    }
}
