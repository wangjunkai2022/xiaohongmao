package com.bumptech.glide.load.engine;

import android.os.Build;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import com.bumptech.glide.Priority;
import com.bumptech.glide.Registry;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.EncodeStrategy;
import com.bumptech.glide.load.engine.f;
import com.bumptech.glide.load.engine.i;
import com.bumptech.glide.util.pool.a;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* compiled from: DecodeJob.java */
/* loaded from: classes.dex */
class h<R> implements f.a, Runnable, Comparable<h<?>>, a.f {
    private static final String G = "DecodeJob";
    private DataSource A;
    private com.bumptech.glide.load.data.d<?> B;
    private volatile com.bumptech.glide.load.engine.f C;
    private volatile boolean D;
    private volatile boolean E;
    private boolean F;

    /* renamed from: d  reason: collision with root package name */
    private final e f8809d;

    /* renamed from: e  reason: collision with root package name */
    private final Pools.Pool<h<?>> f8810e;

    /* renamed from: h  reason: collision with root package name */
    private com.bumptech.glide.e f8813h;

    /* renamed from: i  reason: collision with root package name */
    private com.bumptech.glide.load.c f8814i;

    /* renamed from: j  reason: collision with root package name */
    private Priority f8815j;

    /* renamed from: k  reason: collision with root package name */
    private n f8816k;

    /* renamed from: l  reason: collision with root package name */
    private int f8817l;

    /* renamed from: m  reason: collision with root package name */
    private int f8818m;

    /* renamed from: n  reason: collision with root package name */
    private j f8819n;

    /* renamed from: o  reason: collision with root package name */
    private com.bumptech.glide.load.f f8820o;

    /* renamed from: p  reason: collision with root package name */
    private b<R> f8821p;

    /* renamed from: q  reason: collision with root package name */
    private int f8822q;

    /* renamed from: r  reason: collision with root package name */
    private EnumC0053h f8823r;

    /* renamed from: s  reason: collision with root package name */
    private g f8824s;

    /* renamed from: t  reason: collision with root package name */
    private long f8825t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f8826u;

    /* renamed from: v  reason: collision with root package name */
    private Object f8827v;

    /* renamed from: w  reason: collision with root package name */
    private Thread f8828w;

    /* renamed from: x  reason: collision with root package name */
    private com.bumptech.glide.load.c f8829x;

    /* renamed from: y  reason: collision with root package name */
    private com.bumptech.glide.load.c f8830y;

    /* renamed from: z  reason: collision with root package name */
    private Object f8831z;

    /* renamed from: a  reason: collision with root package name */
    private final com.bumptech.glide.load.engine.g<R> f8806a = new com.bumptech.glide.load.engine.g<>();

    /* renamed from: b  reason: collision with root package name */
    private final List<Throwable> f8807b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private final com.bumptech.glide.util.pool.c f8808c = com.bumptech.glide.util.pool.c.a();

    /* renamed from: f  reason: collision with root package name */
    private final d<?> f8811f = new d<>();

    /* renamed from: g  reason: collision with root package name */
    private final f f8812g = new f();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DecodeJob.java */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f8832a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f8833b;

        /* renamed from: c  reason: collision with root package name */
        static final /* synthetic */ int[] f8834c;

        static {
            int[] iArr = new int[EncodeStrategy.values().length];
            f8834c = iArr;
            try {
                iArr[EncodeStrategy.SOURCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f8834c[EncodeStrategy.TRANSFORMED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[EnumC0053h.values().length];
            f8833b = iArr2;
            try {
                iArr2[EnumC0053h.RESOURCE_CACHE.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f8833b[EnumC0053h.DATA_CACHE.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f8833b[EnumC0053h.SOURCE.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f8833b[EnumC0053h.FINISHED.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f8833b[EnumC0053h.INITIALIZE.ordinal()] = 5;
            } catch (NoSuchFieldError unused7) {
            }
            int[] iArr3 = new int[g.values().length];
            f8832a = iArr3;
            try {
                iArr3[g.INITIALIZE.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f8832a[g.SWITCH_TO_SOURCE_SERVICE.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f8832a[g.DECODE_DATA.ordinal()] = 3;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DecodeJob.java */
    /* loaded from: classes.dex */
    public interface b<R> {
        void b(u<R> uVar, DataSource dataSource, boolean z9);

        void c(GlideException glideException);

        void e(h<?> hVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DecodeJob.java */
    /* loaded from: classes.dex */
    public final class c<Z> implements i.a<Z> {

        /* renamed from: a  reason: collision with root package name */
        private final DataSource f8835a;

        c(DataSource dataSource) {
            this.f8835a = dataSource;
        }

        @Override // com.bumptech.glide.load.engine.i.a
        @NonNull
        public u<Z> a(@NonNull u<Z> uVar) {
            return h.this.v(this.f8835a, uVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DecodeJob.java */
    /* loaded from: classes.dex */
    public static class d<Z> {

        /* renamed from: a  reason: collision with root package name */
        private com.bumptech.glide.load.c f8837a;

        /* renamed from: b  reason: collision with root package name */
        private com.bumptech.glide.load.h<Z> f8838b;

        /* renamed from: c  reason: collision with root package name */
        private t<Z> f8839c;

        d() {
        }

        void a() {
            this.f8837a = null;
            this.f8838b = null;
            this.f8839c = null;
        }

        void b(e eVar, com.bumptech.glide.load.f fVar) {
            com.bumptech.glide.util.pool.b.a("DecodeJob.encode");
            try {
                eVar.a().a(this.f8837a, new com.bumptech.glide.load.engine.e(this.f8838b, this.f8839c, fVar));
            } finally {
                this.f8839c.f();
                com.bumptech.glide.util.pool.b.f();
            }
        }

        boolean c() {
            return this.f8839c != null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        <X> void d(com.bumptech.glide.load.c cVar, com.bumptech.glide.load.h<X> hVar, t<X> tVar) {
            this.f8837a = cVar;
            this.f8838b = hVar;
            this.f8839c = tVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DecodeJob.java */
    /* loaded from: classes.dex */
    public interface e {
        com.bumptech.glide.load.engine.cache.a a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DecodeJob.java */
    /* loaded from: classes.dex */
    public static class f {

        /* renamed from: a  reason: collision with root package name */
        private boolean f8840a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f8841b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f8842c;

        f() {
        }

        private boolean a(boolean z9) {
            return (this.f8842c || z9 || this.f8841b) && this.f8840a;
        }

        synchronized boolean b() {
            this.f8841b = true;
            return a(false);
        }

        synchronized boolean c() {
            this.f8842c = true;
            return a(false);
        }

        synchronized boolean d(boolean z9) {
            this.f8840a = true;
            return a(z9);
        }

        synchronized void e() {
            this.f8841b = false;
            this.f8840a = false;
            this.f8842c = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DecodeJob.java */
    /* loaded from: classes.dex */
    public enum g {
        INITIALIZE,
        SWITCH_TO_SOURCE_SERVICE,
        DECODE_DATA
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DecodeJob.java */
    /* renamed from: com.bumptech.glide.load.engine.h$h  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public enum EnumC0053h {
        INITIALIZE,
        RESOURCE_CACHE,
        DATA_CACHE,
        SOURCE,
        ENCODE,
        FINISHED
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(e eVar, Pools.Pool<h<?>> pool) {
        this.f8809d = eVar;
        this.f8810e = pool;
    }

    private void A() {
        int i4 = a.f8832a[this.f8824s.ordinal()];
        if (i4 == 1) {
            this.f8823r = l(EnumC0053h.INITIALIZE);
            this.C = k();
            y();
        } else if (i4 == 2) {
            y();
        } else if (i4 == 3) {
            i();
        } else {
            throw new IllegalStateException("Unrecognized run reason: " + this.f8824s);
        }
    }

    private void B() {
        Throwable th;
        this.f8808c.c();
        if (this.D) {
            if (this.f8807b.isEmpty()) {
                th = null;
            } else {
                List<Throwable> list = this.f8807b;
                th = list.get(list.size() - 1);
            }
            throw new IllegalStateException("Already notified", th);
        }
        this.D = true;
    }

    private <Data> u<R> g(com.bumptech.glide.load.data.d<?> dVar, Data data, DataSource dataSource) throws GlideException {
        if (data == null) {
            return null;
        }
        try {
            long b10 = com.bumptech.glide.util.i.b();
            u<R> h4 = h(data, dataSource);
            if (Log.isLoggable(G, 2)) {
                o("Decoded result " + h4, b10);
            }
            return h4;
        } finally {
            dVar.b();
        }
    }

    private int getPriority() {
        return this.f8815j.ordinal();
    }

    private <Data> u<R> h(Data data, DataSource dataSource) throws GlideException {
        return z(data, dataSource, (s<Data, ?, R>) this.f8806a.h(data.getClass()));
    }

    private void i() {
        if (Log.isLoggable(G, 2)) {
            long j4 = this.f8825t;
            p("Retrieved data", j4, "data: " + this.f8831z + ", cache key: " + this.f8829x + ", fetcher: " + this.B);
        }
        u<R> uVar = null;
        try {
            uVar = g(this.B, this.f8831z, this.A);
        } catch (GlideException e4) {
            e4.h(this.f8830y, this.A);
            this.f8807b.add(e4);
        }
        if (uVar != null) {
            r(uVar, this.A, this.F);
        } else {
            y();
        }
    }

    private com.bumptech.glide.load.engine.f k() {
        int i4 = a.f8833b[this.f8823r.ordinal()];
        if (i4 != 1) {
            if (i4 != 2) {
                if (i4 != 3) {
                    if (i4 == 4) {
                        return null;
                    }
                    throw new IllegalStateException("Unrecognized stage: " + this.f8823r);
                }
                return new y(this.f8806a, this);
            }
            return new com.bumptech.glide.load.engine.c(this.f8806a, this);
        }
        return new v(this.f8806a, this);
    }

    private EnumC0053h l(EnumC0053h enumC0053h) {
        int i4 = a.f8833b[enumC0053h.ordinal()];
        if (i4 == 1) {
            if (this.f8819n.a()) {
                return EnumC0053h.DATA_CACHE;
            }
            return l(EnumC0053h.DATA_CACHE);
        } else if (i4 == 2) {
            return this.f8826u ? EnumC0053h.FINISHED : EnumC0053h.SOURCE;
        } else if (i4 == 3 || i4 == 4) {
            return EnumC0053h.FINISHED;
        } else {
            if (i4 == 5) {
                if (this.f8819n.b()) {
                    return EnumC0053h.RESOURCE_CACHE;
                }
                return l(EnumC0053h.RESOURCE_CACHE);
            }
            throw new IllegalArgumentException("Unrecognized stage: " + enumC0053h);
        }
    }

    @NonNull
    private com.bumptech.glide.load.f m(DataSource dataSource) {
        com.bumptech.glide.load.f fVar = this.f8820o;
        if (Build.VERSION.SDK_INT < 26) {
            return fVar;
        }
        boolean z9 = dataSource == DataSource.RESOURCE_DISK_CACHE || this.f8806a.x();
        com.bumptech.glide.load.e<Boolean> eVar = com.bumptech.glide.load.resource.bitmap.o.f9266k;
        Boolean bool = (Boolean) fVar.c(eVar);
        if (bool == null || (bool.booleanValue() && !z9)) {
            com.bumptech.glide.load.f fVar2 = new com.bumptech.glide.load.f();
            fVar2.d(this.f8820o);
            fVar2.e(eVar, Boolean.valueOf(z9));
            return fVar2;
        }
        return fVar;
    }

    private void o(String str, long j4) {
        p(str, j4, null);
    }

    private void p(String str, long j4, String str2) {
        String str3;
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(" in ");
        sb.append(com.bumptech.glide.util.i.a(j4));
        sb.append(", load key: ");
        sb.append(this.f8816k);
        if (str2 != null) {
            str3 = ", " + str2;
        } else {
            str3 = "";
        }
        sb.append(str3);
        sb.append(", thread: ");
        sb.append(Thread.currentThread().getName());
        Log.v(G, sb.toString());
    }

    private void q(u<R> uVar, DataSource dataSource, boolean z9) {
        B();
        this.f8821p.b(uVar, dataSource, z9);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void r(u<R> uVar, DataSource dataSource, boolean z9) {
        com.bumptech.glide.util.pool.b.a("DecodeJob.notifyEncodeAndRelease");
        try {
            if (uVar instanceof q) {
                ((q) uVar).initialize();
            }
            t tVar = 0;
            if (this.f8811f.c()) {
                uVar = t.c(uVar);
                tVar = uVar;
            }
            q(uVar, dataSource, z9);
            this.f8823r = EnumC0053h.ENCODE;
            if (this.f8811f.c()) {
                this.f8811f.b(this.f8809d, this.f8820o);
            }
            if (tVar != 0) {
                tVar.f();
            }
            t();
        } finally {
            com.bumptech.glide.util.pool.b.f();
        }
    }

    private void s() {
        B();
        this.f8821p.c(new GlideException("Failed to load resource", new ArrayList(this.f8807b)));
        u();
    }

    private void t() {
        if (this.f8812g.b()) {
            x();
        }
    }

    private void u() {
        if (this.f8812g.c()) {
            x();
        }
    }

    private void x() {
        this.f8812g.e();
        this.f8811f.a();
        this.f8806a.a();
        this.D = false;
        this.f8813h = null;
        this.f8814i = null;
        this.f8820o = null;
        this.f8815j = null;
        this.f8816k = null;
        this.f8821p = null;
        this.f8823r = null;
        this.C = null;
        this.f8828w = null;
        this.f8829x = null;
        this.f8831z = null;
        this.A = null;
        this.B = null;
        this.f8825t = 0L;
        this.E = false;
        this.f8827v = null;
        this.f8807b.clear();
        this.f8810e.release(this);
    }

    private void y() {
        this.f8828w = Thread.currentThread();
        this.f8825t = com.bumptech.glide.util.i.b();
        boolean z9 = false;
        while (!this.E && this.C != null && !(z9 = this.C.b())) {
            this.f8823r = l(this.f8823r);
            this.C = k();
            if (this.f8823r == EnumC0053h.SOURCE) {
                c();
                return;
            }
        }
        if ((this.f8823r == EnumC0053h.FINISHED || this.E) && !z9) {
            s();
        }
    }

    private <Data, ResourceType> u<R> z(Data data, DataSource dataSource, s<Data, ResourceType, R> sVar) throws GlideException {
        com.bumptech.glide.load.f m9 = m(dataSource);
        com.bumptech.glide.load.data.e<Data> l10 = this.f8813h.i().l(data);
        try {
            return sVar.b(l10, m9, this.f8817l, this.f8818m, new c(dataSource));
        } finally {
            l10.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean C() {
        EnumC0053h l10 = l(EnumC0053h.INITIALIZE);
        return l10 == EnumC0053h.RESOURCE_CACHE || l10 == EnumC0053h.DATA_CACHE;
    }

    @Override // com.bumptech.glide.load.engine.f.a
    public void a(com.bumptech.glide.load.c cVar, Exception exc, com.bumptech.glide.load.data.d<?> dVar, DataSource dataSource) {
        dVar.b();
        GlideException glideException = new GlideException("Fetching data failed", exc);
        glideException.i(cVar, dataSource, dVar.a());
        this.f8807b.add(glideException);
        if (Thread.currentThread() != this.f8828w) {
            this.f8824s = g.SWITCH_TO_SOURCE_SERVICE;
            this.f8821p.e(this);
            return;
        }
        y();
    }

    public void b() {
        this.E = true;
        com.bumptech.glide.load.engine.f fVar = this.C;
        if (fVar != null) {
            fVar.cancel();
        }
    }

    @Override // com.bumptech.glide.load.engine.f.a
    public void c() {
        this.f8824s = g.SWITCH_TO_SOURCE_SERVICE;
        this.f8821p.e(this);
    }

    @Override // com.bumptech.glide.util.pool.a.f
    @NonNull
    public com.bumptech.glide.util.pool.c d() {
        return this.f8808c;
    }

    @Override // com.bumptech.glide.load.engine.f.a
    public void e(com.bumptech.glide.load.c cVar, Object obj, com.bumptech.glide.load.data.d<?> dVar, DataSource dataSource, com.bumptech.glide.load.c cVar2) {
        this.f8829x = cVar;
        this.f8831z = obj;
        this.B = dVar;
        this.A = dataSource;
        this.f8830y = cVar2;
        this.F = cVar != this.f8806a.c().get(0);
        if (Thread.currentThread() != this.f8828w) {
            this.f8824s = g.DECODE_DATA;
            this.f8821p.e(this);
            return;
        }
        com.bumptech.glide.util.pool.b.a("DecodeJob.decodeFromRetrievedData");
        try {
            i();
        } finally {
            com.bumptech.glide.util.pool.b.f();
        }
    }

    @Override // java.lang.Comparable
    /* renamed from: f */
    public int compareTo(@NonNull h<?> hVar) {
        int priority = getPriority() - hVar.getPriority();
        return priority == 0 ? this.f8822q - hVar.f8822q : priority;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h<R> n(com.bumptech.glide.e eVar, Object obj, n nVar, com.bumptech.glide.load.c cVar, int i4, int i10, Class<?> cls, Class<R> cls2, Priority priority, j jVar, Map<Class<?>, com.bumptech.glide.load.i<?>> map, boolean z9, boolean z10, boolean z11, com.bumptech.glide.load.f fVar, b<R> bVar, int i11) {
        this.f8806a.v(eVar, obj, cVar, i4, i10, jVar, cls, cls2, priority, fVar, map, z9, z10, this.f8809d);
        this.f8813h = eVar;
        this.f8814i = cVar;
        this.f8815j = priority;
        this.f8816k = nVar;
        this.f8817l = i4;
        this.f8818m = i10;
        this.f8819n = jVar;
        this.f8826u = z11;
        this.f8820o = fVar;
        this.f8821p = bVar;
        this.f8822q = i11;
        this.f8824s = g.INITIALIZE;
        this.f8827v = obj;
        return this;
    }

    @Override // java.lang.Runnable
    public void run() {
        com.bumptech.glide.util.pool.b.d("DecodeJob#run(reason=%s, model=%s)", this.f8824s, this.f8827v);
        com.bumptech.glide.load.data.d<?> dVar = this.B;
        try {
            try {
                if (this.E) {
                    s();
                    if (dVar != null) {
                        dVar.b();
                    }
                    com.bumptech.glide.util.pool.b.f();
                    return;
                }
                A();
                if (dVar != null) {
                    dVar.b();
                }
                com.bumptech.glide.util.pool.b.f();
            } catch (com.bumptech.glide.load.engine.b e4) {
                throw e4;
            }
        }
    }

    @NonNull
    <Z> u<Z> v(DataSource dataSource, @NonNull u<Z> uVar) {
        u<Z> uVar2;
        com.bumptech.glide.load.i<Z> iVar;
        EncodeStrategy encodeStrategy;
        com.bumptech.glide.load.c dVar;
        Class<?> cls = uVar.get().getClass();
        com.bumptech.glide.load.h<Z> hVar = null;
        if (dataSource != DataSource.RESOURCE_DISK_CACHE) {
            com.bumptech.glide.load.i<Z> s9 = this.f8806a.s(cls);
            iVar = s9;
            uVar2 = s9.a(this.f8813h, uVar, this.f8817l, this.f8818m);
        } else {
            uVar2 = uVar;
            iVar = null;
        }
        if (!uVar.equals(uVar2)) {
            uVar.recycle();
        }
        if (this.f8806a.w(uVar2)) {
            hVar = this.f8806a.n(uVar2);
            encodeStrategy = hVar.b(this.f8820o);
        } else {
            encodeStrategy = EncodeStrategy.NONE;
        }
        com.bumptech.glide.load.h hVar2 = hVar;
        if (this.f8819n.d(!this.f8806a.y(this.f8829x), dataSource, encodeStrategy)) {
            if (hVar2 != null) {
                int i4 = a.f8834c[encodeStrategy.ordinal()];
                if (i4 == 1) {
                    dVar = new com.bumptech.glide.load.engine.d(this.f8829x, this.f8814i);
                } else if (i4 == 2) {
                    dVar = new w(this.f8806a.b(), this.f8829x, this.f8814i, this.f8817l, this.f8818m, iVar, cls, this.f8820o);
                } else {
                    throw new IllegalArgumentException("Unknown strategy: " + encodeStrategy);
                }
                t c10 = t.c(uVar2);
                this.f8811f.d(dVar, hVar2, c10);
                return c10;
            }
            throw new Registry.NoResultEncoderAvailableException(uVar2.get().getClass());
        }
        return uVar2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void w(boolean z9) {
        if (this.f8812g.d(z9)) {
            x();
        }
    }
}
