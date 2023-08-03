package com.facebook.datasource;

import android.util.Pair;
import com.facebook.infer.annotation.Nullsafe;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;

/* compiled from: AbstractDataSource.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public abstract class a<T> implements com.facebook.datasource.d<T> {
    @r7.h

    /* renamed from: h  reason: collision with root package name */
    private static volatile c f11060h;
    @r7.h

    /* renamed from: a  reason: collision with root package name */
    private Map<String, Object> f11061a;
    @r7.h
    @s7.a("this")

    /* renamed from: d  reason: collision with root package name */
    private T f11064d = null;
    @r7.h
    @s7.a("this")

    /* renamed from: e  reason: collision with root package name */
    private Throwable f11065e = null;
    @s7.a("this")

    /* renamed from: f  reason: collision with root package name */
    private float f11066f = 0.0f;
    @s7.a("this")

    /* renamed from: c  reason: collision with root package name */
    private boolean f11063c = false;
    @s7.a("this")

    /* renamed from: b  reason: collision with root package name */
    private d f11062b = d.IN_PROGRESS;

    /* renamed from: g  reason: collision with root package name */
    private final ConcurrentLinkedQueue<Pair<f<T>, Executor>> f11067g = new ConcurrentLinkedQueue<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractDataSource.java */
    /* renamed from: com.facebook.datasource.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class RunnableC0084a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f11068a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ f f11069b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ boolean f11070c;

        RunnableC0084a(final boolean val$isCancellation, final f val$dataSubscriber, final boolean val$isFailure) {
            this.f11068a = val$isCancellation;
            this.f11069b = val$dataSubscriber;
            this.f11070c = val$isFailure;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f11068a) {
                this.f11069b.b(a.this);
            } else if (this.f11070c) {
                this.f11069b.a(a.this);
            } else {
                this.f11069b.c(a.this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractDataSource.java */
    /* loaded from: classes.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ f f11072a;

        b(final f val$subscriber) {
            this.f11072a = val$subscriber;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f11072a.d(a.this);
        }
    }

    /* compiled from: AbstractDataSource.java */
    /* loaded from: classes.dex */
    public interface c {
        Runnable a(Runnable runnable, String tag);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractDataSource.java */
    /* loaded from: classes.dex */
    public enum d {
        IN_PROGRESS,
        SUCCESS,
        FAILURE
    }

    @r7.h
    public static c j() {
        return f11060h;
    }

    private void l() {
        boolean h4 = h();
        boolean x9 = x();
        Iterator<Pair<f<T>, Executor>> it = this.f11067g.iterator();
        while (it.hasNext()) {
            Pair<f<T>, Executor> next = it.next();
            k((f) next.first, (Executor) next.second, h4, x9);
        }
    }

    public static void n(@r7.h c dataSourceInstrumenter) {
        f11060h = dataSourceInstrumenter;
    }

    private synchronized boolean r(@r7.h Throwable throwable, @r7.h Map<String, Object> extras) {
        if (!this.f11063c && this.f11062b == d.IN_PROGRESS) {
            this.f11062b = d.FAILURE;
            this.f11065e = throwable;
            this.f11061a = extras;
            return true;
        }
        return false;
    }

    private synchronized boolean t(float progress) {
        if (!this.f11063c && this.f11062b == d.IN_PROGRESS) {
            if (progress < this.f11066f) {
                return false;
            }
            this.f11066f = progress;
            return true;
        }
        return false;
    }

    private boolean w(@r7.h T value, boolean isLast) {
        T t9;
        T t10 = null;
        try {
            synchronized (this) {
                try {
                    try {
                        if (!this.f11063c && this.f11062b == d.IN_PROGRESS) {
                            if (isLast) {
                                this.f11062b = d.SUCCESS;
                                this.f11066f = 1.0f;
                            }
                            T t11 = this.f11064d;
                            if (t11 != value) {
                                try {
                                    this.f11064d = value;
                                    t9 = t11;
                                } catch (Throwable th) {
                                    th = th;
                                    t10 = t11;
                                    throw th;
                                }
                            } else {
                                t9 = null;
                            }
                            return true;
                        }
                        if (value != null) {
                            i(value);
                        }
                        return false;
                    } catch (Throwable th2) {
                        t10 = value;
                        th = th2;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            }
        } finally {
            if (t10 != null) {
                i(t10);
            }
        }
    }

    private synchronized boolean x() {
        boolean z9;
        if (isClosed()) {
            z9 = b() ? false : true;
        }
        return z9;
    }

    @Override // com.facebook.datasource.d
    @r7.h
    public synchronized T a() {
        return this.f11064d;
    }

    @Override // com.facebook.datasource.d
    public synchronized boolean b() {
        return this.f11062b != d.IN_PROGRESS;
    }

    @Override // com.facebook.datasource.d
    public boolean close() {
        synchronized (this) {
            if (this.f11063c) {
                return false;
            }
            this.f11063c = true;
            T t9 = this.f11064d;
            this.f11064d = null;
            if (t9 != null) {
                i(t9);
            }
            if (!b()) {
                l();
            }
            synchronized (this) {
                this.f11067g.clear();
            }
            return true;
        }
    }

    @Override // com.facebook.datasource.d
    public synchronized boolean d() {
        return this.f11064d != null;
    }

    @Override // com.facebook.datasource.d
    @r7.h
    public synchronized Throwable e() {
        return this.f11065e;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:28:? A[RETURN, SYNTHETIC] */
    @Override // com.facebook.datasource.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void f(final com.facebook.datasource.f<T> r3, final java.util.concurrent.Executor r4) {
        /*
            r2 = this;
            com.facebook.common.internal.j.i(r3)
            com.facebook.common.internal.j.i(r4)
            monitor-enter(r2)
            boolean r0 = r2.f11063c     // Catch: java.lang.Throwable -> L41
            if (r0 == 0) goto Ld
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L41
            return
        Ld:
            com.facebook.datasource.a$d r0 = r2.f11062b     // Catch: java.lang.Throwable -> L41
            com.facebook.datasource.a$d r1 = com.facebook.datasource.a.d.IN_PROGRESS     // Catch: java.lang.Throwable -> L41
            if (r0 != r1) goto L1c
            java.util.concurrent.ConcurrentLinkedQueue<android.util.Pair<com.facebook.datasource.f<T>, java.util.concurrent.Executor>> r0 = r2.f11067g     // Catch: java.lang.Throwable -> L41
            android.util.Pair r1 = android.util.Pair.create(r3, r4)     // Catch: java.lang.Throwable -> L41
            r0.add(r1)     // Catch: java.lang.Throwable -> L41
        L1c:
            boolean r0 = r2.d()     // Catch: java.lang.Throwable -> L41
            if (r0 != 0) goto L31
            boolean r0 = r2.b()     // Catch: java.lang.Throwable -> L41
            if (r0 != 0) goto L31
            boolean r0 = r2.x()     // Catch: java.lang.Throwable -> L41
            if (r0 == 0) goto L2f
            goto L31
        L2f:
            r0 = 0
            goto L32
        L31:
            r0 = 1
        L32:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L41
            if (r0 == 0) goto L40
            boolean r0 = r2.h()
            boolean r1 = r2.x()
            r2.k(r3, r4, r0, r1)
        L40:
            return
        L41:
            r3 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L41
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.datasource.a.f(com.facebook.datasource.f, java.util.concurrent.Executor):void");
    }

    @Override // com.facebook.datasource.d
    public boolean g() {
        return false;
    }

    @Override // com.facebook.datasource.d
    @r7.h
    public Map<String, Object> getExtras() {
        return this.f11061a;
    }

    @Override // com.facebook.datasource.d
    public synchronized float getProgress() {
        return this.f11066f;
    }

    @Override // com.facebook.datasource.d
    public synchronized boolean h() {
        return this.f11062b == d.FAILURE;
    }

    protected void i(@r7.h T result) {
    }

    @Override // com.facebook.datasource.d
    public synchronized boolean isClosed() {
        return this.f11063c;
    }

    protected void k(final f<T> dataSubscriber, final Executor executor, final boolean isFailure, final boolean isCancellation) {
        Runnable runnableC0084a = new RunnableC0084a(isFailure, dataSubscriber, isCancellation);
        c j4 = j();
        if (j4 != null) {
            runnableC0084a = j4.a(runnableC0084a, "AbstractDataSource_notifyDataSubscriber");
        }
        executor.execute(runnableC0084a);
    }

    protected void m() {
        Iterator<Pair<f<T>, Executor>> it = this.f11067g.iterator();
        while (it.hasNext()) {
            Pair<f<T>, Executor> next = it.next();
            ((Executor) next.second).execute(new b((f) next.first));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void o(@r7.h Map<String, Object> extras) {
        this.f11061a = extras;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean p(Throwable throwable) {
        return q(throwable, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean q(@r7.h Throwable throwable, @r7.h Map<String, Object> extras) {
        boolean r9 = r(throwable, extras);
        if (r9) {
            l();
        }
        return r9;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean s(float progress) {
        boolean t9 = t(progress);
        if (t9) {
            m();
        }
        return t9;
    }

    public boolean u(@r7.h T value, boolean isLast) {
        return v(value, isLast, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean v(@r7.h T value, boolean isLast, @r7.h Map<String, Object> extras) {
        o(extras);
        boolean w9 = w(value, isLast);
        if (w9) {
            l();
        }
        return w9;
    }
}
