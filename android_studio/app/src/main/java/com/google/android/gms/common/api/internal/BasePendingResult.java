package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.l;
import com.google.android.gms.common.api.q;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@u2.a
@KeepName
/* loaded from: classes2.dex */
public abstract class BasePendingResult<R extends com.google.android.gms.common.api.q> extends com.google.android.gms.common.api.l<R> {

    /* renamed from: p */
    static final ThreadLocal<Boolean> f28598p = new w3();

    /* renamed from: q */
    public static final /* synthetic */ int f28599q = 0;

    /* renamed from: a */
    private final Object f28600a;
    @NonNull

    /* renamed from: b */
    protected final a<R> f28601b;
    @NonNull

    /* renamed from: c */
    protected final WeakReference<com.google.android.gms.common.api.i> f28602c;

    /* renamed from: d */
    private final CountDownLatch f28603d;

    /* renamed from: e */
    private final ArrayList<l.a> f28604e;
    @Nullable

    /* renamed from: f */
    private com.google.android.gms.common.api.r<? super R> f28605f;

    /* renamed from: g */
    private final AtomicReference<i3> f28606g;
    @Nullable

    /* renamed from: h */
    private R f28607h;

    /* renamed from: i */
    private Status f28608i;

    /* renamed from: j */
    private volatile boolean f28609j;

    /* renamed from: k */
    private boolean f28610k;

    /* renamed from: l */
    private boolean f28611l;
    @Nullable

    /* renamed from: m */
    private com.google.android.gms.common.internal.n f28612m;
    @KeepName
    private y3 mResultGuardian;

    /* renamed from: n */
    private volatile h3<R> f28613n;

    /* renamed from: o */
    private boolean f28614o;

    @Deprecated
    BasePendingResult() {
        this.f28600a = new Object();
        this.f28603d = new CountDownLatch(1);
        this.f28604e = new ArrayList<>();
        this.f28606g = new AtomicReference<>();
        this.f28614o = false;
        this.f28601b = new a<>(Looper.getMainLooper());
        this.f28602c = new WeakReference<>(null);
    }

    private final R p() {
        R r9;
        synchronized (this.f28600a) {
            com.google.android.gms.common.internal.u.r(!this.f28609j, "Result has already been consumed.");
            com.google.android.gms.common.internal.u.r(m(), "Result is not ready.");
            r9 = this.f28607h;
            this.f28607h = null;
            this.f28605f = null;
            this.f28609j = true;
        }
        i3 andSet = this.f28606g.getAndSet(null);
        if (andSet != null) {
            andSet.f28746a.f28787a.remove(this);
        }
        return (R) com.google.android.gms.common.internal.u.k(r9);
    }

    private final void q(R r9) {
        this.f28607h = r9;
        this.f28608i = r9.getStatus();
        this.f28612m = null;
        this.f28603d.countDown();
        if (this.f28610k) {
            this.f28605f = null;
        } else {
            com.google.android.gms.common.api.r<? super R> rVar = this.f28605f;
            if (rVar == null) {
                if (this.f28607h instanceof com.google.android.gms.common.api.n) {
                    this.mResultGuardian = new y3(this, null);
                }
            } else {
                this.f28601b.removeMessages(2);
                this.f28601b.a(rVar, p());
            }
        }
        ArrayList<l.a> arrayList = this.f28604e;
        int size = arrayList.size();
        for (int i4 = 0; i4 < size; i4++) {
            arrayList.get(i4).a(this.f28608i);
        }
        this.f28604e.clear();
    }

    public static void t(@Nullable com.google.android.gms.common.api.q qVar) {
        if (qVar instanceof com.google.android.gms.common.api.n) {
            try {
                ((com.google.android.gms.common.api.n) qVar).release();
            } catch (RuntimeException e4) {
                Log.w("BasePendingResult", "Unable to release ".concat(String.valueOf(qVar)), e4);
            }
        }
    }

    @Override // com.google.android.gms.common.api.l
    public final void c(@NonNull l.a aVar) {
        com.google.android.gms.common.internal.u.b(aVar != null, "Callback cannot be null.");
        synchronized (this.f28600a) {
            if (m()) {
                aVar.a(this.f28608i);
            } else {
                this.f28604e.add(aVar);
            }
        }
    }

    @Override // com.google.android.gms.common.api.l
    @NonNull
    public final R d() {
        com.google.android.gms.common.internal.u.j("await must not be called on the UI thread");
        com.google.android.gms.common.internal.u.r(!this.f28609j, "Result has already been consumed");
        com.google.android.gms.common.internal.u.r(this.f28613n == null, "Cannot await if then() has been called.");
        try {
            this.f28603d.await();
        } catch (InterruptedException unused) {
            l(Status.RESULT_INTERRUPTED);
        }
        com.google.android.gms.common.internal.u.r(m(), "Result is not ready.");
        return p();
    }

    @Override // com.google.android.gms.common.api.l
    @NonNull
    public final R e(long j4, @NonNull TimeUnit timeUnit) {
        if (j4 > 0) {
            com.google.android.gms.common.internal.u.j("await must not be called on the UI thread when time is greater than zero.");
        }
        com.google.android.gms.common.internal.u.r(!this.f28609j, "Result has already been consumed.");
        com.google.android.gms.common.internal.u.r(this.f28613n == null, "Cannot await if then() has been called.");
        try {
            if (!this.f28603d.await(j4, timeUnit)) {
                l(Status.RESULT_TIMEOUT);
            }
        } catch (InterruptedException unused) {
            l(Status.RESULT_INTERRUPTED);
        }
        com.google.android.gms.common.internal.u.r(m(), "Result is not ready.");
        return p();
    }

    @Override // com.google.android.gms.common.api.l
    @u2.a
    public void f() {
        synchronized (this.f28600a) {
            if (!this.f28610k && !this.f28609j) {
                com.google.android.gms.common.internal.n nVar = this.f28612m;
                if (nVar != null) {
                    try {
                        nVar.cancel();
                    } catch (RemoteException unused) {
                    }
                }
                t(this.f28607h);
                this.f28610k = true;
                q(k(Status.RESULT_CANCELED));
            }
        }
    }

    @Override // com.google.android.gms.common.api.l
    public final boolean g() {
        boolean z9;
        synchronized (this.f28600a) {
            z9 = this.f28610k;
        }
        return z9;
    }

    @Override // com.google.android.gms.common.api.l
    @u2.a
    public final void h(@Nullable com.google.android.gms.common.api.r<? super R> rVar) {
        synchronized (this.f28600a) {
            if (rVar == null) {
                this.f28605f = null;
                return;
            }
            boolean z9 = true;
            com.google.android.gms.common.internal.u.r(!this.f28609j, "Result has already been consumed.");
            if (this.f28613n != null) {
                z9 = false;
            }
            com.google.android.gms.common.internal.u.r(z9, "Cannot set callbacks if then() has been called.");
            if (g()) {
                return;
            }
            if (m()) {
                this.f28601b.a(rVar, p());
            } else {
                this.f28605f = rVar;
            }
        }
    }

    @Override // com.google.android.gms.common.api.l
    @u2.a
    public final void i(@NonNull com.google.android.gms.common.api.r<? super R> rVar, long j4, @NonNull TimeUnit timeUnit) {
        synchronized (this.f28600a) {
            if (rVar == null) {
                this.f28605f = null;
                return;
            }
            boolean z9 = true;
            com.google.android.gms.common.internal.u.r(!this.f28609j, "Result has already been consumed.");
            if (this.f28613n != null) {
                z9 = false;
            }
            com.google.android.gms.common.internal.u.r(z9, "Cannot set callbacks if then() has been called.");
            if (g()) {
                return;
            }
            if (m()) {
                this.f28601b.a(rVar, p());
            } else {
                this.f28605f = rVar;
                a<R> aVar = this.f28601b;
                aVar.sendMessageDelayed(aVar.obtainMessage(2, this), timeUnit.toMillis(j4));
            }
        }
    }

    @Override // com.google.android.gms.common.api.l
    @NonNull
    public final <S extends com.google.android.gms.common.api.q> com.google.android.gms.common.api.u<S> j(@NonNull com.google.android.gms.common.api.t<? super R, ? extends S> tVar) {
        com.google.android.gms.common.api.u<S> c10;
        com.google.android.gms.common.internal.u.r(!this.f28609j, "Result has already been consumed.");
        synchronized (this.f28600a) {
            com.google.android.gms.common.internal.u.r(this.f28613n == null, "Cannot call then() twice.");
            com.google.android.gms.common.internal.u.r(this.f28605f == null, "Cannot call then() if callbacks are set.");
            com.google.android.gms.common.internal.u.r(!this.f28610k, "Cannot call then() if result was canceled.");
            this.f28614o = true;
            this.f28613n = new h3<>(this.f28602c);
            c10 = this.f28613n.c(tVar);
            if (m()) {
                this.f28601b.a(this.f28613n, p());
            } else {
                this.f28605f = this.f28613n;
            }
        }
        return c10;
    }

    @NonNull
    @u2.a
    public abstract R k(@NonNull Status status);

    @u2.a
    @Deprecated
    public final void l(@NonNull Status status) {
        synchronized (this.f28600a) {
            if (!m()) {
                o(k(status));
                this.f28611l = true;
            }
        }
    }

    @u2.a
    public final boolean m() {
        return this.f28603d.getCount() == 0;
    }

    @u2.a
    protected final void n(@NonNull com.google.android.gms.common.internal.n nVar) {
        synchronized (this.f28600a) {
            this.f28612m = nVar;
        }
    }

    @u2.a
    public final void o(@NonNull R r9) {
        synchronized (this.f28600a) {
            if (!this.f28611l && !this.f28610k) {
                m();
                com.google.android.gms.common.internal.u.r(!m(), "Results have already been set");
                com.google.android.gms.common.internal.u.r(!this.f28609j, "Result has already been consumed");
                q(r9);
                return;
            }
            t(r9);
        }
    }

    public final void s() {
        boolean z9 = true;
        if (!this.f28614o && !f28598p.get().booleanValue()) {
            z9 = false;
        }
        this.f28614o = z9;
    }

    public final boolean u() {
        boolean g4;
        synchronized (this.f28600a) {
            if (this.f28602c.get() == null || !this.f28614o) {
                f();
            }
            g4 = g();
        }
        return g4;
    }

    public final void v(@Nullable i3 i3Var) {
        this.f28606g.set(i3Var);
    }

    /* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    @y2.d0
    /* loaded from: classes2.dex */
    public static class a<R extends com.google.android.gms.common.api.q> extends com.google.android.gms.internal.base.q {
        public a() {
            super(Looper.getMainLooper());
        }

        public final void a(@NonNull com.google.android.gms.common.api.r<? super R> rVar, @NonNull R r9) {
            int i4 = BasePendingResult.f28599q;
            sendMessage(obtainMessage(1, new Pair((com.google.android.gms.common.api.r) com.google.android.gms.common.internal.u.k(rVar), r9)));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.Handler
        public final void handleMessage(@NonNull Message message) {
            int i4 = message.what;
            if (i4 == 1) {
                Pair pair = (Pair) message.obj;
                com.google.android.gms.common.api.r rVar = (com.google.android.gms.common.api.r) pair.first;
                com.google.android.gms.common.api.q qVar = (com.google.android.gms.common.api.q) pair.second;
                try {
                    rVar.a(qVar);
                } catch (RuntimeException e4) {
                    BasePendingResult.t(qVar);
                    throw e4;
                }
            } else if (i4 != 2) {
                StringBuilder sb = new StringBuilder(45);
                sb.append("Don't know how to handle message: ");
                sb.append(i4);
                Log.wtf("BasePendingResult", sb.toString(), new Exception());
            } else {
                ((BasePendingResult) message.obj).l(Status.RESULT_TIMEOUT);
            }
        }

        public a(@NonNull Looper looper) {
            super(looper);
        }
    }

    @u2.a
    @Deprecated
    public BasePendingResult(@NonNull Looper looper) {
        this.f28600a = new Object();
        this.f28603d = new CountDownLatch(1);
        this.f28604e = new ArrayList<>();
        this.f28606g = new AtomicReference<>();
        this.f28614o = false;
        this.f28601b = new a<>(looper);
        this.f28602c = new WeakReference<>(null);
    }

    @u2.a
    public BasePendingResult(@Nullable com.google.android.gms.common.api.i iVar) {
        this.f28600a = new Object();
        this.f28603d = new CountDownLatch(1);
        this.f28604e = new ArrayList<>();
        this.f28606g = new AtomicReference<>();
        this.f28614o = false;
        this.f28601b = new a<>(iVar != null ? iVar.r() : Looper.getMainLooper());
        this.f28602c = new WeakReference<>(iVar);
    }

    @u2.a
    @y2.d0
    public BasePendingResult(@NonNull a<R> aVar) {
        this.f28600a = new Object();
        this.f28603d = new CountDownLatch(1);
        this.f28604e = new ArrayList<>();
        this.f28606g = new AtomicReference<>();
        this.f28614o = false;
        this.f28601b = (a) com.google.android.gms.common.internal.u.l(aVar, "CallbackHandler must not be null");
        this.f28602c = new WeakReference<>(null);
    }
}
