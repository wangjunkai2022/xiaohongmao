package com.bumptech.glide.request;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.Log;
import androidx.annotation.DrawableRes;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.Priority;
import com.bumptech.glide.d;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.load.engine.k;
import com.bumptech.glide.load.engine.u;
import com.bumptech.glide.request.target.o;
import com.bumptech.glide.request.target.p;
import io.sentry.protocol.y;
import java.util.List;
import java.util.concurrent.Executor;

/* compiled from: SingleRequest.java */
/* loaded from: classes.dex */
public final class j<R> implements e, o, i {
    private static final String F = "Glide";
    @GuardedBy("requestLock")
    private int A;
    @GuardedBy("requestLock")
    private int B;
    @GuardedBy("requestLock")
    private boolean C;
    @Nullable
    private RuntimeException D;

    /* renamed from: a  reason: collision with root package name */
    private int f9559a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final String f9560b;

    /* renamed from: c  reason: collision with root package name */
    private final com.bumptech.glide.util.pool.c f9561c;

    /* renamed from: d  reason: collision with root package name */
    private final Object f9562d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final g<R> f9563e;

    /* renamed from: f  reason: collision with root package name */
    private final RequestCoordinator f9564f;

    /* renamed from: g  reason: collision with root package name */
    private final Context f9565g;

    /* renamed from: h  reason: collision with root package name */
    private final com.bumptech.glide.e f9566h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private final Object f9567i;

    /* renamed from: j  reason: collision with root package name */
    private final Class<R> f9568j;

    /* renamed from: k  reason: collision with root package name */
    private final com.bumptech.glide.request.a<?> f9569k;

    /* renamed from: l  reason: collision with root package name */
    private final int f9570l;

    /* renamed from: m  reason: collision with root package name */
    private final int f9571m;

    /* renamed from: n  reason: collision with root package name */
    private final Priority f9572n;

    /* renamed from: o  reason: collision with root package name */
    private final p<R> f9573o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private final List<g<R>> f9574p;

    /* renamed from: q  reason: collision with root package name */
    private final com.bumptech.glide.request.transition.g<? super R> f9575q;

    /* renamed from: r  reason: collision with root package name */
    private final Executor f9576r;
    @GuardedBy("requestLock")

    /* renamed from: s  reason: collision with root package name */
    private u<R> f9577s;
    @GuardedBy("requestLock")

    /* renamed from: t  reason: collision with root package name */
    private k.d f9578t;
    @GuardedBy("requestLock")

    /* renamed from: u  reason: collision with root package name */
    private long f9579u;

    /* renamed from: v  reason: collision with root package name */
    private volatile com.bumptech.glide.load.engine.k f9580v;
    @GuardedBy("requestLock")

    /* renamed from: w  reason: collision with root package name */
    private a f9581w;
    @Nullable
    @GuardedBy("requestLock")

    /* renamed from: x  reason: collision with root package name */
    private Drawable f9582x;
    @Nullable
    @GuardedBy("requestLock")

    /* renamed from: y  reason: collision with root package name */
    private Drawable f9583y;
    @Nullable
    @GuardedBy("requestLock")

    /* renamed from: z  reason: collision with root package name */
    private Drawable f9584z;
    private static final String E = "GlideRequest";
    private static final boolean G = Log.isLoggable(E, 2);

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SingleRequest.java */
    /* loaded from: classes.dex */
    public enum a {
        PENDING,
        RUNNING,
        WAITING_FOR_SIZE,
        COMPLETE,
        FAILED,
        CLEARED
    }

    private j(Context context, com.bumptech.glide.e eVar, @NonNull Object obj, @Nullable Object obj2, Class<R> cls, com.bumptech.glide.request.a<?> aVar, int i4, int i10, Priority priority, p<R> pVar, @Nullable g<R> gVar, @Nullable List<g<R>> list, RequestCoordinator requestCoordinator, com.bumptech.glide.load.engine.k kVar, com.bumptech.glide.request.transition.g<? super R> gVar2, Executor executor) {
        this.f9560b = G ? String.valueOf(super.hashCode()) : null;
        this.f9561c = com.bumptech.glide.util.pool.c.a();
        this.f9562d = obj;
        this.f9565g = context;
        this.f9566h = eVar;
        this.f9567i = obj2;
        this.f9568j = cls;
        this.f9569k = aVar;
        this.f9570l = i4;
        this.f9571m = i10;
        this.f9572n = priority;
        this.f9573o = pVar;
        this.f9563e = gVar;
        this.f9574p = list;
        this.f9564f = requestCoordinator;
        this.f9580v = kVar;
        this.f9575q = gVar2;
        this.f9576r = executor;
        this.f9581w = a.PENDING;
        if (this.D == null && eVar.g().b(d.e.class)) {
            this.D = new RuntimeException("Glide request origin trace");
        }
    }

    @GuardedBy("requestLock")
    private void A(u<R> uVar, R r9, DataSource dataSource, boolean z9) {
        boolean z10;
        boolean s9 = s();
        this.f9581w = a.COMPLETE;
        this.f9577s = uVar;
        if (this.f9566h.h() <= 3) {
            Log.d(F, "Finished loading " + r9.getClass().getSimpleName() + " from " + dataSource + " for " + this.f9567i + " with size [" + this.A + y.b.f83919g + this.B + "] in " + com.bumptech.glide.util.i.a(this.f9579u) + " ms");
        }
        boolean z11 = true;
        this.C = true;
        try {
            List<g<R>> list = this.f9574p;
            if (list != null) {
                z10 = false;
                for (g<R> gVar : list) {
                    z10 |= gVar.c(r9, this.f9567i, this.f9573o, dataSource, s9);
                }
            } else {
                z10 = false;
            }
            g<R> gVar2 = this.f9563e;
            if (gVar2 == null || !gVar2.c(r9, this.f9567i, this.f9573o, dataSource, s9)) {
                z11 = false;
            }
            if (!(z11 | z10)) {
                this.f9573o.q(r9, this.f9575q.a(dataSource, s9));
            }
            this.C = false;
            x();
            com.bumptech.glide.util.pool.b.g(E, this.f9559a);
        } catch (Throwable th) {
            this.C = false;
            throw th;
        }
    }

    @GuardedBy("requestLock")
    private void B() {
        if (l()) {
            Drawable q9 = this.f9567i == null ? q() : null;
            if (q9 == null) {
                q9 = p();
            }
            if (q9 == null) {
                q9 = r();
            }
            this.f9573o.s(q9);
        }
    }

    @GuardedBy("requestLock")
    private void j() {
        if (this.C) {
            throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
        }
    }

    @GuardedBy("requestLock")
    private boolean k() {
        RequestCoordinator requestCoordinator = this.f9564f;
        return requestCoordinator == null || requestCoordinator.j(this);
    }

    @GuardedBy("requestLock")
    private boolean l() {
        RequestCoordinator requestCoordinator = this.f9564f;
        return requestCoordinator == null || requestCoordinator.b(this);
    }

    @GuardedBy("requestLock")
    private boolean m() {
        RequestCoordinator requestCoordinator = this.f9564f;
        return requestCoordinator == null || requestCoordinator.c(this);
    }

    @GuardedBy("requestLock")
    private void n() {
        j();
        this.f9561c.c();
        this.f9573o.f(this);
        k.d dVar = this.f9578t;
        if (dVar != null) {
            dVar.a();
            this.f9578t = null;
        }
    }

    private void o(Object obj) {
        List<g<R>> list = this.f9574p;
        if (list == null) {
            return;
        }
        for (g<R> gVar : list) {
            if (gVar instanceof c) {
                ((c) gVar).a(obj);
            }
        }
    }

    @GuardedBy("requestLock")
    private Drawable p() {
        if (this.f9582x == null) {
            Drawable G2 = this.f9569k.G();
            this.f9582x = G2;
            if (G2 == null && this.f9569k.F() > 0) {
                this.f9582x = t(this.f9569k.F());
            }
        }
        return this.f9582x;
    }

    @GuardedBy("requestLock")
    private Drawable q() {
        if (this.f9584z == null) {
            Drawable H = this.f9569k.H();
            this.f9584z = H;
            if (H == null && this.f9569k.I() > 0) {
                this.f9584z = t(this.f9569k.I());
            }
        }
        return this.f9584z;
    }

    @GuardedBy("requestLock")
    private Drawable r() {
        if (this.f9583y == null) {
            Drawable N = this.f9569k.N();
            this.f9583y = N;
            if (N == null && this.f9569k.O() > 0) {
                this.f9583y = t(this.f9569k.O());
            }
        }
        return this.f9583y;
    }

    @GuardedBy("requestLock")
    private boolean s() {
        RequestCoordinator requestCoordinator = this.f9564f;
        return requestCoordinator == null || !requestCoordinator.getRoot().a();
    }

    @GuardedBy("requestLock")
    private Drawable t(@DrawableRes int i4) {
        return com.bumptech.glide.load.resource.drawable.b.a(this.f9566h, i4, this.f9569k.T() != null ? this.f9569k.T() : this.f9565g.getTheme());
    }

    private void u(String str) {
        Log.v(E, str + " this: " + this.f9560b);
    }

    private static int v(int i4, float f10) {
        return i4 == Integer.MIN_VALUE ? i4 : Math.round(f10 * i4);
    }

    @GuardedBy("requestLock")
    private void w() {
        RequestCoordinator requestCoordinator = this.f9564f;
        if (requestCoordinator != null) {
            requestCoordinator.d(this);
        }
    }

    @GuardedBy("requestLock")
    private void x() {
        RequestCoordinator requestCoordinator = this.f9564f;
        if (requestCoordinator != null) {
            requestCoordinator.f(this);
        }
    }

    public static <R> j<R> y(Context context, com.bumptech.glide.e eVar, Object obj, Object obj2, Class<R> cls, com.bumptech.glide.request.a<?> aVar, int i4, int i10, Priority priority, p<R> pVar, g<R> gVar, @Nullable List<g<R>> list, RequestCoordinator requestCoordinator, com.bumptech.glide.load.engine.k kVar, com.bumptech.glide.request.transition.g<? super R> gVar2, Executor executor) {
        return new j<>(context, eVar, obj, obj2, cls, aVar, i4, i10, priority, pVar, gVar, list, requestCoordinator, kVar, gVar2, executor);
    }

    private void z(GlideException glideException, int i4) {
        boolean z9;
        this.f9561c.c();
        synchronized (this.f9562d) {
            glideException.setOrigin(this.D);
            int h4 = this.f9566h.h();
            if (h4 <= i4) {
                Log.w(F, "Load failed for " + this.f9567i + " with size [" + this.A + y.b.f83919g + this.B + "]", glideException);
                if (h4 <= 4) {
                    glideException.logRootCauses(F);
                }
            }
            this.f9578t = null;
            this.f9581w = a.FAILED;
            boolean z10 = true;
            this.C = true;
            List<g<R>> list = this.f9574p;
            if (list != null) {
                z9 = false;
                for (g<R> gVar : list) {
                    z9 |= gVar.b(glideException, this.f9567i, this.f9573o, s());
                }
            } else {
                z9 = false;
            }
            g<R> gVar2 = this.f9563e;
            if (gVar2 == null || !gVar2.b(glideException, this.f9567i, this.f9573o, s())) {
                z10 = false;
            }
            if (!(z9 | z10)) {
                B();
            }
            this.C = false;
            w();
            com.bumptech.glide.util.pool.b.g(E, this.f9559a);
        }
    }

    @Override // com.bumptech.glide.request.e
    public boolean a() {
        boolean z9;
        synchronized (this.f9562d) {
            z9 = this.f9581w == a.COMPLETE;
        }
        return z9;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bumptech.glide.request.i
    public void b(u<?> uVar, DataSource dataSource, boolean z9) {
        this.f9561c.c();
        u<?> uVar2 = null;
        try {
            synchronized (this.f9562d) {
                try {
                    this.f9578t = null;
                    if (uVar == null) {
                        c(new GlideException("Expected to receive a Resource<R> with an object of " + this.f9568j + " inside, but instead got null."));
                        return;
                    }
                    Object obj = uVar.get();
                    try {
                        if (obj != null && this.f9568j.isAssignableFrom(obj.getClass())) {
                            if (!m()) {
                                this.f9577s = null;
                                this.f9581w = a.COMPLETE;
                                com.bumptech.glide.util.pool.b.g(E, this.f9559a);
                                this.f9580v.l(uVar);
                                return;
                            }
                            A(uVar, obj, dataSource, z9);
                            return;
                        }
                        this.f9577s = null;
                        StringBuilder sb = new StringBuilder();
                        sb.append("Expected to receive an object of ");
                        sb.append(this.f9568j);
                        sb.append(" but instead got ");
                        sb.append(obj != null ? obj.getClass() : "");
                        sb.append("{");
                        sb.append(obj);
                        sb.append("} inside Resource{");
                        sb.append(uVar);
                        sb.append("}.");
                        sb.append(obj != null ? "" : " To indicate failure return a null Resource object, rather than a Resource object containing null data.");
                        c(new GlideException(sb.toString()));
                        this.f9580v.l(uVar);
                    } catch (Throwable th) {
                        uVar2 = uVar;
                        th = th;
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        } catch (Throwable th3) {
            if (uVar2 != null) {
                this.f9580v.l(uVar2);
            }
            throw th3;
        }
    }

    @Override // com.bumptech.glide.request.i
    public void c(GlideException glideException) {
        z(glideException, 5);
    }

    @Override // com.bumptech.glide.request.e
    public void clear() {
        synchronized (this.f9562d) {
            j();
            this.f9561c.c();
            a aVar = this.f9581w;
            a aVar2 = a.CLEARED;
            if (aVar == aVar2) {
                return;
            }
            n();
            u<R> uVar = this.f9577s;
            if (uVar != null) {
                this.f9577s = null;
            } else {
                uVar = null;
            }
            if (k()) {
                this.f9573o.k(r());
            }
            com.bumptech.glide.util.pool.b.g(E, this.f9559a);
            this.f9581w = aVar2;
            if (uVar != null) {
                this.f9580v.l(uVar);
            }
        }
    }

    @Override // com.bumptech.glide.request.target.o
    public void d(int i4, int i10) {
        Object obj;
        this.f9561c.c();
        Object obj2 = this.f9562d;
        synchronized (obj2) {
            try {
                try {
                    boolean z9 = G;
                    if (z9) {
                        u("Got onSizeReady in " + com.bumptech.glide.util.i.a(this.f9579u));
                    }
                    if (this.f9581w == a.WAITING_FOR_SIZE) {
                        a aVar = a.RUNNING;
                        this.f9581w = aVar;
                        float S = this.f9569k.S();
                        this.A = v(i4, S);
                        this.B = v(i10, S);
                        if (z9) {
                            u("finished setup for calling load in " + com.bumptech.glide.util.i.a(this.f9579u));
                        }
                        obj = obj2;
                        try {
                            this.f9578t = this.f9580v.g(this.f9566h, this.f9567i, this.f9569k.R(), this.A, this.B, this.f9569k.Q(), this.f9568j, this.f9572n, this.f9569k.E(), this.f9569k.U(), this.f9569k.h0(), this.f9569k.c0(), this.f9569k.K(), this.f9569k.a0(), this.f9569k.W(), this.f9569k.V(), this.f9569k.J(), this, this.f9576r);
                            if (this.f9581w != aVar) {
                                this.f9578t = null;
                            }
                            if (z9) {
                                u("finished onSizeReady in " + com.bumptech.glide.util.i.a(this.f9579u));
                            }
                        } catch (Throwable th) {
                            th = th;
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    obj = obj2;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    @Override // com.bumptech.glide.request.e
    public boolean e() {
        boolean z9;
        synchronized (this.f9562d) {
            z9 = this.f9581w == a.CLEARED;
        }
        return z9;
    }

    @Override // com.bumptech.glide.request.i
    public Object f() {
        this.f9561c.c();
        return this.f9562d;
    }

    @Override // com.bumptech.glide.request.e
    public boolean g() {
        boolean z9;
        synchronized (this.f9562d) {
            z9 = this.f9581w == a.COMPLETE;
        }
        return z9;
    }

    @Override // com.bumptech.glide.request.e
    public boolean h(e eVar) {
        int i4;
        int i10;
        Object obj;
        Class<R> cls;
        com.bumptech.glide.request.a<?> aVar;
        Priority priority;
        int size;
        int i11;
        int i12;
        Object obj2;
        Class<R> cls2;
        com.bumptech.glide.request.a<?> aVar2;
        Priority priority2;
        int size2;
        if (eVar instanceof j) {
            synchronized (this.f9562d) {
                i4 = this.f9570l;
                i10 = this.f9571m;
                obj = this.f9567i;
                cls = this.f9568j;
                aVar = this.f9569k;
                priority = this.f9572n;
                List<g<R>> list = this.f9574p;
                size = list != null ? list.size() : 0;
            }
            j jVar = (j) eVar;
            synchronized (jVar.f9562d) {
                i11 = jVar.f9570l;
                i12 = jVar.f9571m;
                obj2 = jVar.f9567i;
                cls2 = jVar.f9568j;
                aVar2 = jVar.f9569k;
                priority2 = jVar.f9572n;
                List<g<R>> list2 = jVar.f9574p;
                size2 = list2 != null ? list2.size() : 0;
            }
            return i4 == i11 && i10 == i12 && com.bumptech.glide.util.o.c(obj, obj2) && cls.equals(cls2) && aVar.equals(aVar2) && priority == priority2 && size == size2;
        }
        return false;
    }

    @Override // com.bumptech.glide.request.e
    public void i() {
        synchronized (this.f9562d) {
            j();
            this.f9561c.c();
            this.f9579u = com.bumptech.glide.util.i.b();
            Object obj = this.f9567i;
            if (obj == null) {
                if (com.bumptech.glide.util.o.w(this.f9570l, this.f9571m)) {
                    this.A = this.f9570l;
                    this.B = this.f9571m;
                }
                z(new GlideException("Received null model"), q() == null ? 5 : 3);
                return;
            }
            a aVar = this.f9581w;
            a aVar2 = a.RUNNING;
            if (aVar != aVar2) {
                if (aVar == a.COMPLETE) {
                    b(this.f9577s, DataSource.MEMORY_CACHE, false);
                    return;
                }
                o(obj);
                this.f9559a = com.bumptech.glide.util.pool.b.b(E);
                a aVar3 = a.WAITING_FOR_SIZE;
                this.f9581w = aVar3;
                if (com.bumptech.glide.util.o.w(this.f9570l, this.f9571m)) {
                    d(this.f9570l, this.f9571m);
                } else {
                    this.f9573o.u(this);
                }
                a aVar4 = this.f9581w;
                if ((aVar4 == aVar2 || aVar4 == aVar3) && l()) {
                    this.f9573o.j(r());
                }
                if (G) {
                    u("finished run method in " + com.bumptech.glide.util.i.a(this.f9579u));
                }
                return;
            }
            throw new IllegalArgumentException("Cannot restart a running request");
        }
    }

    @Override // com.bumptech.glide.request.e
    public boolean isRunning() {
        boolean z9;
        synchronized (this.f9562d) {
            a aVar = this.f9581w;
            z9 = aVar == a.RUNNING || aVar == a.WAITING_FOR_SIZE;
        }
        return z9;
    }

    @Override // com.bumptech.glide.request.e
    public void pause() {
        synchronized (this.f9562d) {
            if (isRunning()) {
                clear();
            }
        }
    }

    public String toString() {
        Object obj;
        Class<R> cls;
        synchronized (this.f9562d) {
            obj = this.f9567i;
            cls = this.f9568j;
        }
        return super.toString() + "[model=" + obj + ", transcodeClass=" + cls + "]";
    }
}
