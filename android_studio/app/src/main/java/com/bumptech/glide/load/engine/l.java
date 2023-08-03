package com.bumptech.glide.load.engine;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.Pools;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.h;
import com.bumptech.glide.load.engine.p;
import com.bumptech.glide.util.pool.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: EngineJob.java */
/* loaded from: classes.dex */
class l<R> implements h.b<R>, a.f {

    /* renamed from: z  reason: collision with root package name */
    private static final c f8893z = new c();

    /* renamed from: a  reason: collision with root package name */
    final e f8894a;

    /* renamed from: b  reason: collision with root package name */
    private final com.bumptech.glide.util.pool.c f8895b;

    /* renamed from: c  reason: collision with root package name */
    private final p.a f8896c;

    /* renamed from: d  reason: collision with root package name */
    private final Pools.Pool<l<?>> f8897d;

    /* renamed from: e  reason: collision with root package name */
    private final c f8898e;

    /* renamed from: f  reason: collision with root package name */
    private final m f8899f;

    /* renamed from: g  reason: collision with root package name */
    private final com.bumptech.glide.load.engine.executor.a f8900g;

    /* renamed from: h  reason: collision with root package name */
    private final com.bumptech.glide.load.engine.executor.a f8901h;

    /* renamed from: i  reason: collision with root package name */
    private final com.bumptech.glide.load.engine.executor.a f8902i;

    /* renamed from: j  reason: collision with root package name */
    private final com.bumptech.glide.load.engine.executor.a f8903j;

    /* renamed from: k  reason: collision with root package name */
    private final AtomicInteger f8904k;

    /* renamed from: l  reason: collision with root package name */
    private com.bumptech.glide.load.c f8905l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f8906m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f8907n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f8908o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f8909p;

    /* renamed from: q  reason: collision with root package name */
    private u<?> f8910q;

    /* renamed from: r  reason: collision with root package name */
    DataSource f8911r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f8912s;

    /* renamed from: t  reason: collision with root package name */
    GlideException f8913t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f8914u;

    /* renamed from: v  reason: collision with root package name */
    p<?> f8915v;

    /* renamed from: w  reason: collision with root package name */
    private h<R> f8916w;

    /* renamed from: x  reason: collision with root package name */
    private volatile boolean f8917x;

    /* renamed from: y  reason: collision with root package name */
    private boolean f8918y;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: EngineJob.java */
    /* loaded from: classes.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final com.bumptech.glide.request.i f8919a;

        a(com.bumptech.glide.request.i iVar) {
            this.f8919a = iVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this.f8919a.f()) {
                synchronized (l.this) {
                    if (l.this.f8894a.b(this.f8919a)) {
                        l.this.f(this.f8919a);
                    }
                    l.this.i();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: EngineJob.java */
    /* loaded from: classes.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final com.bumptech.glide.request.i f8921a;

        b(com.bumptech.glide.request.i iVar) {
            this.f8921a = iVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this.f8921a.f()) {
                synchronized (l.this) {
                    if (l.this.f8894a.b(this.f8921a)) {
                        l.this.f8915v.b();
                        l.this.g(this.f8921a);
                        l.this.s(this.f8921a);
                    }
                    l.this.i();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: EngineJob.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class c {
        c() {
        }

        public <R> p<R> a(u<R> uVar, boolean z9, com.bumptech.glide.load.c cVar, p.a aVar) {
            return new p<>(uVar, z9, true, cVar, aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: EngineJob.java */
    /* loaded from: classes.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        final com.bumptech.glide.request.i f8923a;

        /* renamed from: b  reason: collision with root package name */
        final Executor f8924b;

        d(com.bumptech.glide.request.i iVar, Executor executor) {
            this.f8923a = iVar;
            this.f8924b = executor;
        }

        public boolean equals(Object obj) {
            if (obj instanceof d) {
                return this.f8923a.equals(((d) obj).f8923a);
            }
            return false;
        }

        public int hashCode() {
            return this.f8923a.hashCode();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: EngineJob.java */
    /* loaded from: classes.dex */
    public static final class e implements Iterable<d> {

        /* renamed from: a  reason: collision with root package name */
        private final List<d> f8925a;

        e() {
            this(new ArrayList(2));
        }

        private static d d(com.bumptech.glide.request.i iVar) {
            return new d(iVar, com.bumptech.glide.util.f.a());
        }

        void a(com.bumptech.glide.request.i iVar, Executor executor) {
            this.f8925a.add(new d(iVar, executor));
        }

        boolean b(com.bumptech.glide.request.i iVar) {
            return this.f8925a.contains(d(iVar));
        }

        e c() {
            return new e(new ArrayList(this.f8925a));
        }

        void clear() {
            this.f8925a.clear();
        }

        void e(com.bumptech.glide.request.i iVar) {
            this.f8925a.remove(d(iVar));
        }

        boolean isEmpty() {
            return this.f8925a.isEmpty();
        }

        @Override // java.lang.Iterable
        @NonNull
        public Iterator<d> iterator() {
            return this.f8925a.iterator();
        }

        int size() {
            return this.f8925a.size();
        }

        e(List<d> list) {
            this.f8925a = list;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(com.bumptech.glide.load.engine.executor.a aVar, com.bumptech.glide.load.engine.executor.a aVar2, com.bumptech.glide.load.engine.executor.a aVar3, com.bumptech.glide.load.engine.executor.a aVar4, m mVar, p.a aVar5, Pools.Pool<l<?>> pool) {
        this(aVar, aVar2, aVar3, aVar4, mVar, aVar5, pool, f8893z);
    }

    private com.bumptech.glide.load.engine.executor.a j() {
        if (this.f8907n) {
            return this.f8902i;
        }
        return this.f8908o ? this.f8903j : this.f8901h;
    }

    private boolean n() {
        return this.f8914u || this.f8912s || this.f8917x;
    }

    private synchronized void r() {
        if (this.f8905l != null) {
            this.f8894a.clear();
            this.f8905l = null;
            this.f8915v = null;
            this.f8910q = null;
            this.f8914u = false;
            this.f8917x = false;
            this.f8912s = false;
            this.f8918y = false;
            this.f8916w.w(false);
            this.f8916w = null;
            this.f8913t = null;
            this.f8911r = null;
            this.f8897d.release(this);
        } else {
            throw new IllegalArgumentException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void a(com.bumptech.glide.request.i iVar, Executor executor) {
        this.f8895b.c();
        this.f8894a.a(iVar, executor);
        boolean z9 = true;
        if (this.f8912s) {
            k(1);
            executor.execute(new b(iVar));
        } else if (this.f8914u) {
            k(1);
            executor.execute(new a(iVar));
        } else {
            if (this.f8917x) {
                z9 = false;
            }
            com.bumptech.glide.util.m.a(z9, "Cannot add callbacks to a cancelled EngineJob");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bumptech.glide.load.engine.h.b
    public void b(u<R> uVar, DataSource dataSource, boolean z9) {
        synchronized (this) {
            this.f8910q = uVar;
            this.f8911r = dataSource;
            this.f8918y = z9;
        }
        p();
    }

    @Override // com.bumptech.glide.load.engine.h.b
    public void c(GlideException glideException) {
        synchronized (this) {
            this.f8913t = glideException;
        }
        o();
    }

    @Override // com.bumptech.glide.util.pool.a.f
    @NonNull
    public com.bumptech.glide.util.pool.c d() {
        return this.f8895b;
    }

    @Override // com.bumptech.glide.load.engine.h.b
    public void e(h<?> hVar) {
        j().execute(hVar);
    }

    @GuardedBy("this")
    void f(com.bumptech.glide.request.i iVar) {
        try {
            iVar.c(this.f8913t);
        } catch (Throwable th) {
            throw new com.bumptech.glide.load.engine.b(th);
        }
    }

    @GuardedBy("this")
    void g(com.bumptech.glide.request.i iVar) {
        try {
            iVar.b(this.f8915v, this.f8911r, this.f8918y);
        } catch (Throwable th) {
            throw new com.bumptech.glide.load.engine.b(th);
        }
    }

    void h() {
        if (n()) {
            return;
        }
        this.f8917x = true;
        this.f8916w.b();
        this.f8899f.c(this, this.f8905l);
    }

    void i() {
        p<?> pVar;
        synchronized (this) {
            this.f8895b.c();
            com.bumptech.glide.util.m.a(n(), "Not yet complete!");
            int decrementAndGet = this.f8904k.decrementAndGet();
            com.bumptech.glide.util.m.a(decrementAndGet >= 0, "Can't decrement below 0");
            if (decrementAndGet == 0) {
                pVar = this.f8915v;
                r();
            } else {
                pVar = null;
            }
        }
        if (pVar != null) {
            pVar.e();
        }
    }

    synchronized void k(int i4) {
        p<?> pVar;
        com.bumptech.glide.util.m.a(n(), "Not yet complete!");
        if (this.f8904k.getAndAdd(i4) == 0 && (pVar = this.f8915v) != null) {
            pVar.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public synchronized l<R> l(com.bumptech.glide.load.c cVar, boolean z9, boolean z10, boolean z11, boolean z12) {
        this.f8905l = cVar;
        this.f8906m = z9;
        this.f8907n = z10;
        this.f8908o = z11;
        this.f8909p = z12;
        return this;
    }

    synchronized boolean m() {
        return this.f8917x;
    }

    void o() {
        synchronized (this) {
            this.f8895b.c();
            if (this.f8917x) {
                r();
            } else if (!this.f8894a.isEmpty()) {
                if (!this.f8914u) {
                    this.f8914u = true;
                    com.bumptech.glide.load.c cVar = this.f8905l;
                    e c10 = this.f8894a.c();
                    k(c10.size() + 1);
                    this.f8899f.b(this, cVar, null);
                    Iterator<d> it = c10.iterator();
                    while (it.hasNext()) {
                        d next = it.next();
                        next.f8924b.execute(new a(next.f8923a));
                    }
                    i();
                    return;
                }
                throw new IllegalStateException("Already failed once");
            } else {
                throw new IllegalStateException("Received an exception without any callbacks to notify");
            }
        }
    }

    void p() {
        synchronized (this) {
            this.f8895b.c();
            if (this.f8917x) {
                this.f8910q.recycle();
                r();
            } else if (!this.f8894a.isEmpty()) {
                if (!this.f8912s) {
                    this.f8915v = this.f8898e.a(this.f8910q, this.f8906m, this.f8905l, this.f8896c);
                    this.f8912s = true;
                    e c10 = this.f8894a.c();
                    k(c10.size() + 1);
                    this.f8899f.b(this, this.f8905l, this.f8915v);
                    Iterator<d> it = c10.iterator();
                    while (it.hasNext()) {
                        d next = it.next();
                        next.f8924b.execute(new b(next.f8923a));
                    }
                    i();
                    return;
                }
                throw new IllegalStateException("Already have resource");
            } else {
                throw new IllegalStateException("Received a resource without any callbacks to notify");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean q() {
        return this.f8909p;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void s(com.bumptech.glide.request.i iVar) {
        boolean z9;
        this.f8895b.c();
        this.f8894a.e(iVar);
        if (this.f8894a.isEmpty()) {
            h();
            if (!this.f8912s && !this.f8914u) {
                z9 = false;
                if (z9 && this.f8904k.get() == 0) {
                    r();
                }
            }
            z9 = true;
            if (z9) {
                r();
            }
        }
    }

    public synchronized void t(h<R> hVar) {
        this.f8916w = hVar;
        (hVar.C() ? this.f8900g : j()).execute(hVar);
    }

    @VisibleForTesting
    l(com.bumptech.glide.load.engine.executor.a aVar, com.bumptech.glide.load.engine.executor.a aVar2, com.bumptech.glide.load.engine.executor.a aVar3, com.bumptech.glide.load.engine.executor.a aVar4, m mVar, p.a aVar5, Pools.Pool<l<?>> pool, c cVar) {
        this.f8894a = new e();
        this.f8895b = com.bumptech.glide.util.pool.c.a();
        this.f8904k = new AtomicInteger();
        this.f8900g = aVar;
        this.f8901h = aVar2;
        this.f8902i = aVar3;
        this.f8903j = aVar4;
        this.f8899f = mVar;
        this.f8896c = aVar5;
        this.f8897d = pool;
        this.f8898e = cVar;
    }
}
