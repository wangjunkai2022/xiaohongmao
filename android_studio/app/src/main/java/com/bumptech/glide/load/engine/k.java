package com.bumptech.glide.load.engine;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.Pools;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.cache.a;
import com.bumptech.glide.load.engine.cache.j;
import com.bumptech.glide.load.engine.h;
import com.bumptech.glide.load.engine.p;
import com.bumptech.glide.util.pool.a;
import java.util.Map;
import java.util.concurrent.Executor;

/* compiled from: Engine.java */
/* loaded from: classes.dex */
public class k implements m, j.a, p.a {

    /* renamed from: j  reason: collision with root package name */
    private static final int f8866j = 150;

    /* renamed from: a  reason: collision with root package name */
    private final r f8868a;

    /* renamed from: b  reason: collision with root package name */
    private final o f8869b;

    /* renamed from: c  reason: collision with root package name */
    private final com.bumptech.glide.load.engine.cache.j f8870c;

    /* renamed from: d  reason: collision with root package name */
    private final b f8871d;

    /* renamed from: e  reason: collision with root package name */
    private final x f8872e;

    /* renamed from: f  reason: collision with root package name */
    private final c f8873f;

    /* renamed from: g  reason: collision with root package name */
    private final a f8874g;

    /* renamed from: h  reason: collision with root package name */
    private final com.bumptech.glide.load.engine.a f8875h;

    /* renamed from: i  reason: collision with root package name */
    private static final String f8865i = "Engine";

    /* renamed from: k  reason: collision with root package name */
    private static final boolean f8867k = Log.isLoggable(f8865i, 2);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Engine.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        final h.e f8876a;

        /* renamed from: b  reason: collision with root package name */
        final Pools.Pool<h<?>> f8877b = com.bumptech.glide.util.pool.a.e(k.f8866j, new C0054a());

        /* renamed from: c  reason: collision with root package name */
        private int f8878c;

        /* compiled from: Engine.java */
        /* renamed from: com.bumptech.glide.load.engine.k$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        class C0054a implements a.d<h<?>> {
            C0054a() {
            }

            @Override // com.bumptech.glide.util.pool.a.d
            /* renamed from: b */
            public h<?> a() {
                a aVar = a.this;
                return new h<>(aVar.f8876a, aVar.f8877b);
            }
        }

        a(h.e eVar) {
            this.f8876a = eVar;
        }

        <R> h<R> a(com.bumptech.glide.e eVar, Object obj, n nVar, com.bumptech.glide.load.c cVar, int i4, int i10, Class<?> cls, Class<R> cls2, Priority priority, j jVar, Map<Class<?>, com.bumptech.glide.load.i<?>> map, boolean z9, boolean z10, boolean z11, com.bumptech.glide.load.f fVar, h.b<R> bVar) {
            h hVar = (h) com.bumptech.glide.util.m.d(this.f8877b.acquire());
            int i11 = this.f8878c;
            this.f8878c = i11 + 1;
            return hVar.n(eVar, obj, nVar, cVar, i4, i10, cls, cls2, priority, jVar, map, z9, z10, z11, fVar, bVar, i11);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Engine.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        final com.bumptech.glide.load.engine.executor.a f8880a;

        /* renamed from: b  reason: collision with root package name */
        final com.bumptech.glide.load.engine.executor.a f8881b;

        /* renamed from: c  reason: collision with root package name */
        final com.bumptech.glide.load.engine.executor.a f8882c;

        /* renamed from: d  reason: collision with root package name */
        final com.bumptech.glide.load.engine.executor.a f8883d;

        /* renamed from: e  reason: collision with root package name */
        final m f8884e;

        /* renamed from: f  reason: collision with root package name */
        final p.a f8885f;

        /* renamed from: g  reason: collision with root package name */
        final Pools.Pool<l<?>> f8886g = com.bumptech.glide.util.pool.a.e(k.f8866j, new a());

        /* compiled from: Engine.java */
        /* loaded from: classes.dex */
        class a implements a.d<l<?>> {
            a() {
            }

            @Override // com.bumptech.glide.util.pool.a.d
            /* renamed from: b */
            public l<?> a() {
                b bVar = b.this;
                return new l<>(bVar.f8880a, bVar.f8881b, bVar.f8882c, bVar.f8883d, bVar.f8884e, bVar.f8885f, bVar.f8886g);
            }
        }

        b(com.bumptech.glide.load.engine.executor.a aVar, com.bumptech.glide.load.engine.executor.a aVar2, com.bumptech.glide.load.engine.executor.a aVar3, com.bumptech.glide.load.engine.executor.a aVar4, m mVar, p.a aVar5) {
            this.f8880a = aVar;
            this.f8881b = aVar2;
            this.f8882c = aVar3;
            this.f8883d = aVar4;
            this.f8884e = mVar;
            this.f8885f = aVar5;
        }

        <R> l<R> a(com.bumptech.glide.load.c cVar, boolean z9, boolean z10, boolean z11, boolean z12) {
            return ((l) com.bumptech.glide.util.m.d(this.f8886g.acquire())).l(cVar, z9, z10, z11, z12);
        }

        @VisibleForTesting
        void b() {
            com.bumptech.glide.util.f.c(this.f8880a);
            com.bumptech.glide.util.f.c(this.f8881b);
            com.bumptech.glide.util.f.c(this.f8882c);
            com.bumptech.glide.util.f.c(this.f8883d);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Engine.java */
    /* loaded from: classes.dex */
    public static class c implements h.e {

        /* renamed from: a  reason: collision with root package name */
        private final a.InterfaceC0048a f8888a;

        /* renamed from: b  reason: collision with root package name */
        private volatile com.bumptech.glide.load.engine.cache.a f8889b;

        c(a.InterfaceC0048a interfaceC0048a) {
            this.f8888a = interfaceC0048a;
        }

        @Override // com.bumptech.glide.load.engine.h.e
        public com.bumptech.glide.load.engine.cache.a a() {
            if (this.f8889b == null) {
                synchronized (this) {
                    if (this.f8889b == null) {
                        this.f8889b = this.f8888a.build();
                    }
                    if (this.f8889b == null) {
                        this.f8889b = new com.bumptech.glide.load.engine.cache.b();
                    }
                }
            }
            return this.f8889b;
        }

        @VisibleForTesting
        synchronized void b() {
            if (this.f8889b == null) {
                return;
            }
            this.f8889b.clear();
        }
    }

    /* compiled from: Engine.java */
    /* loaded from: classes.dex */
    public class d {

        /* renamed from: a  reason: collision with root package name */
        private final l<?> f8890a;

        /* renamed from: b  reason: collision with root package name */
        private final com.bumptech.glide.request.i f8891b;

        d(com.bumptech.glide.request.i iVar, l<?> lVar) {
            this.f8891b = iVar;
            this.f8890a = lVar;
        }

        public void a() {
            synchronized (k.this) {
                this.f8890a.s(this.f8891b);
            }
        }
    }

    public k(com.bumptech.glide.load.engine.cache.j jVar, a.InterfaceC0048a interfaceC0048a, com.bumptech.glide.load.engine.executor.a aVar, com.bumptech.glide.load.engine.executor.a aVar2, com.bumptech.glide.load.engine.executor.a aVar3, com.bumptech.glide.load.engine.executor.a aVar4, boolean z9) {
        this(jVar, interfaceC0048a, aVar, aVar2, aVar3, aVar4, null, null, null, null, null, null, z9);
    }

    private p<?> f(com.bumptech.glide.load.c cVar) {
        u<?> e4 = this.f8870c.e(cVar);
        if (e4 == null) {
            return null;
        }
        if (e4 instanceof p) {
            return (p) e4;
        }
        return new p<>(e4, true, true, cVar, this);
    }

    @Nullable
    private p<?> h(com.bumptech.glide.load.c cVar) {
        p<?> e4 = this.f8875h.e(cVar);
        if (e4 != null) {
            e4.b();
        }
        return e4;
    }

    private p<?> i(com.bumptech.glide.load.c cVar) {
        p<?> f10 = f(cVar);
        if (f10 != null) {
            f10.b();
            this.f8875h.a(cVar, f10);
        }
        return f10;
    }

    @Nullable
    private p<?> j(n nVar, boolean z9, long j4) {
        if (z9) {
            p<?> h4 = h(nVar);
            if (h4 != null) {
                if (f8867k) {
                    k("Loaded resource from active resources", j4, nVar);
                }
                return h4;
            }
            p<?> i4 = i(nVar);
            if (i4 != null) {
                if (f8867k) {
                    k("Loaded resource from cache", j4, nVar);
                }
                return i4;
            }
            return null;
        }
        return null;
    }

    private static void k(String str, long j4, com.bumptech.glide.load.c cVar) {
        Log.v(f8865i, str + " in " + com.bumptech.glide.util.i.a(j4) + "ms, key: " + cVar);
    }

    private <R> d n(com.bumptech.glide.e eVar, Object obj, com.bumptech.glide.load.c cVar, int i4, int i10, Class<?> cls, Class<R> cls2, Priority priority, j jVar, Map<Class<?>, com.bumptech.glide.load.i<?>> map, boolean z9, boolean z10, com.bumptech.glide.load.f fVar, boolean z11, boolean z12, boolean z13, boolean z14, com.bumptech.glide.request.i iVar, Executor executor, n nVar, long j4) {
        l<?> a10 = this.f8868a.a(nVar, z14);
        if (a10 != null) {
            a10.a(iVar, executor);
            if (f8867k) {
                k("Added to existing load", j4, nVar);
            }
            return new d(iVar, a10);
        }
        l<R> a11 = this.f8871d.a(nVar, z11, z12, z13, z14);
        h<R> a12 = this.f8874g.a(eVar, obj, nVar, cVar, i4, i10, cls, cls2, priority, jVar, map, z9, z10, z14, fVar, a11);
        this.f8868a.d(nVar, a11);
        a11.a(iVar, executor);
        a11.t(a12);
        if (f8867k) {
            k("Started new load", j4, nVar);
        }
        return new d(iVar, a11);
    }

    @Override // com.bumptech.glide.load.engine.cache.j.a
    public void a(@NonNull u<?> uVar) {
        this.f8872e.a(uVar, true);
    }

    @Override // com.bumptech.glide.load.engine.m
    public synchronized void b(l<?> lVar, com.bumptech.glide.load.c cVar, p<?> pVar) {
        if (pVar != null) {
            if (pVar.d()) {
                this.f8875h.a(cVar, pVar);
            }
        }
        this.f8868a.e(cVar, lVar);
    }

    @Override // com.bumptech.glide.load.engine.m
    public synchronized void c(l<?> lVar, com.bumptech.glide.load.c cVar) {
        this.f8868a.e(cVar, lVar);
    }

    @Override // com.bumptech.glide.load.engine.p.a
    public void d(com.bumptech.glide.load.c cVar, p<?> pVar) {
        this.f8875h.d(cVar);
        if (pVar.d()) {
            this.f8870c.d(cVar, pVar);
        } else {
            this.f8872e.a(pVar, false);
        }
    }

    public void e() {
        this.f8873f.a().clear();
    }

    public <R> d g(com.bumptech.glide.e eVar, Object obj, com.bumptech.glide.load.c cVar, int i4, int i10, Class<?> cls, Class<R> cls2, Priority priority, j jVar, Map<Class<?>, com.bumptech.glide.load.i<?>> map, boolean z9, boolean z10, com.bumptech.glide.load.f fVar, boolean z11, boolean z12, boolean z13, boolean z14, com.bumptech.glide.request.i iVar, Executor executor) {
        long b10 = f8867k ? com.bumptech.glide.util.i.b() : 0L;
        n a10 = this.f8869b.a(obj, cVar, i4, i10, map, cls, cls2, fVar);
        synchronized (this) {
            p<?> j4 = j(a10, z11, b10);
            if (j4 == null) {
                return n(eVar, obj, cVar, i4, i10, cls, cls2, priority, jVar, map, z9, z10, fVar, z11, z12, z13, z14, iVar, executor, a10, b10);
            }
            iVar.b(j4, DataSource.MEMORY_CACHE, false);
            return null;
        }
    }

    public void l(u<?> uVar) {
        if (uVar instanceof p) {
            ((p) uVar).e();
            return;
        }
        throw new IllegalArgumentException("Cannot release anything but an EngineResource");
    }

    @VisibleForTesting
    public void m() {
        this.f8871d.b();
        this.f8873f.b();
        this.f8875h.h();
    }

    @VisibleForTesting
    k(com.bumptech.glide.load.engine.cache.j jVar, a.InterfaceC0048a interfaceC0048a, com.bumptech.glide.load.engine.executor.a aVar, com.bumptech.glide.load.engine.executor.a aVar2, com.bumptech.glide.load.engine.executor.a aVar3, com.bumptech.glide.load.engine.executor.a aVar4, r rVar, o oVar, com.bumptech.glide.load.engine.a aVar5, b bVar, a aVar6, x xVar, boolean z9) {
        this.f8870c = jVar;
        c cVar = new c(interfaceC0048a);
        this.f8873f = cVar;
        com.bumptech.glide.load.engine.a aVar7 = aVar5 == null ? new com.bumptech.glide.load.engine.a(z9) : aVar5;
        this.f8875h = aVar7;
        aVar7.g(this);
        this.f8869b = oVar == null ? new o() : oVar;
        this.f8868a = rVar == null ? new r() : rVar;
        this.f8871d = bVar == null ? new b(aVar, aVar2, aVar3, aVar4, this, this) : bVar;
        this.f8874g = aVar6 == null ? new a(cVar) : aVar6;
        this.f8872e = xVar == null ? new x() : xVar;
        jVar.f(this);
    }
}
