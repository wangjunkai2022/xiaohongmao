package com.google.android.exoplayer2.upstream.cache;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.upstream.DataSourceException;
import com.google.android.exoplayer2.upstream.FileDataSource;
import com.google.android.exoplayer2.upstream.cache.Cache;
import com.google.android.exoplayer2.upstream.cache.CacheDataSink;
import com.google.android.exoplayer2.upstream.i0;
import com.google.android.exoplayer2.upstream.k;
import com.google.android.exoplayer2.upstream.m;
import com.google.android.exoplayer2.upstream.n0;
import com.google.android.exoplayer2.upstream.p0;
import com.google.android.exoplayer2.upstream.y;
import com.google.android.exoplayer2.util.PriorityTaskManager;
import com.google.android.exoplayer2.util.z0;
import java.io.File;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* compiled from: CacheDataSource.java */
/* loaded from: classes2.dex */
public final class b implements com.google.android.exoplayer2.upstream.m {
    public static final int A = 0;
    public static final int B = 1;
    private static final long C = 102400;

    /* renamed from: w  reason: collision with root package name */
    public static final int f27046w = 1;

    /* renamed from: x  reason: collision with root package name */
    public static final int f27047x = 2;

    /* renamed from: y  reason: collision with root package name */
    public static final int f27048y = 4;

    /* renamed from: z  reason: collision with root package name */
    private static final int f27049z = -1;

    /* renamed from: b  reason: collision with root package name */
    private final Cache f27050b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.m f27051c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.m f27052d;

    /* renamed from: e  reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.m f27053e;

    /* renamed from: f  reason: collision with root package name */
    private final i f27054f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private final c f27055g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f27056h;

    /* renamed from: i  reason: collision with root package name */
    private final boolean f27057i;

    /* renamed from: j  reason: collision with root package name */
    private final boolean f27058j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private Uri f27059k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private com.google.android.exoplayer2.upstream.o f27060l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private com.google.android.exoplayer2.upstream.o f27061m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private com.google.android.exoplayer2.upstream.m f27062n;

    /* renamed from: o  reason: collision with root package name */
    private long f27063o;

    /* renamed from: p  reason: collision with root package name */
    private long f27064p;

    /* renamed from: q  reason: collision with root package name */
    private long f27065q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private j f27066r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f27067s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f27068t;

    /* renamed from: u  reason: collision with root package name */
    private long f27069u;

    /* renamed from: v  reason: collision with root package name */
    private long f27070v;

    /* compiled from: CacheDataSource.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: com.google.android.exoplayer2.upstream.cache.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public @interface InterfaceC0187b {
    }

    /* compiled from: CacheDataSource.java */
    /* loaded from: classes2.dex */
    public interface c {
        void a(int i4);

        void b(long j4, long j10);
    }

    /* compiled from: CacheDataSource.java */
    /* loaded from: classes2.dex */
    public static final class d implements m.a {

        /* renamed from: a  reason: collision with root package name */
        private Cache f27071a;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private k.a f27073c;

        /* renamed from: e  reason: collision with root package name */
        private boolean f27075e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        private m.a f27076f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        private PriorityTaskManager f27077g;

        /* renamed from: h  reason: collision with root package name */
        private int f27078h;

        /* renamed from: i  reason: collision with root package name */
        private int f27079i;
        @Nullable

        /* renamed from: j  reason: collision with root package name */
        private c f27080j;

        /* renamed from: b  reason: collision with root package name */
        private m.a f27072b = new FileDataSource.a();

        /* renamed from: d  reason: collision with root package name */
        private i f27074d = i.f27104a;

        private b g(@Nullable com.google.android.exoplayer2.upstream.m mVar, int i4, int i10) {
            com.google.android.exoplayer2.upstream.k kVar;
            Cache cache = (Cache) com.google.android.exoplayer2.util.a.g(this.f27071a);
            if (this.f27075e || mVar == null) {
                kVar = null;
            } else {
                k.a aVar = this.f27073c;
                if (aVar != null) {
                    kVar = aVar.a();
                } else {
                    kVar = new CacheDataSink.a().c(cache).a();
                }
            }
            return new b(cache, mVar, this.f27072b.a(), kVar, this.f27074d, i4, this.f27077g, i10, this.f27080j);
        }

        @Override // com.google.android.exoplayer2.upstream.m.a
        /* renamed from: d */
        public b a() {
            m.a aVar = this.f27076f;
            return g(aVar != null ? aVar.a() : null, this.f27079i, this.f27078h);
        }

        public b e() {
            m.a aVar = this.f27076f;
            return g(aVar != null ? aVar.a() : null, this.f27079i | 1, -1000);
        }

        public b f() {
            return g(null, this.f27079i | 1, -1000);
        }

        @Nullable
        public Cache h() {
            return this.f27071a;
        }

        public i i() {
            return this.f27074d;
        }

        @Nullable
        public PriorityTaskManager j() {
            return this.f27077g;
        }

        public d k(Cache cache) {
            this.f27071a = cache;
            return this;
        }

        public d l(i iVar) {
            this.f27074d = iVar;
            return this;
        }

        public d m(m.a aVar) {
            this.f27072b = aVar;
            return this;
        }

        public d n(@Nullable k.a aVar) {
            this.f27073c = aVar;
            this.f27075e = aVar == null;
            return this;
        }

        public d o(@Nullable c cVar) {
            this.f27080j = cVar;
            return this;
        }

        public d p(int i4) {
            this.f27079i = i4;
            return this;
        }

        public d q(@Nullable m.a aVar) {
            this.f27076f = aVar;
            return this;
        }

        public d r(int i4) {
            this.f27078h = i4;
            return this;
        }

        public d s(@Nullable PriorityTaskManager priorityTaskManager) {
            this.f27077g = priorityTaskManager;
            return this;
        }
    }

    /* compiled from: CacheDataSource.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface e {
    }

    private boolean A() {
        return !z();
    }

    private boolean B() {
        return this.f27062n == this.f27052d;
    }

    private void C() {
        c cVar = this.f27055g;
        if (cVar == null || this.f27069u <= 0) {
            return;
        }
        cVar.b(this.f27050b.h(), this.f27069u);
        this.f27069u = 0L;
    }

    private void D(int i4) {
        c cVar = this.f27055g;
        if (cVar != null) {
            cVar.a(i4);
        }
    }

    private void E(com.google.android.exoplayer2.upstream.o oVar, boolean z9) throws IOException {
        j k10;
        long j4;
        com.google.android.exoplayer2.upstream.o a10;
        com.google.android.exoplayer2.upstream.m mVar;
        String str = (String) z0.k(oVar.f27296i);
        if (this.f27068t) {
            k10 = null;
        } else if (this.f27056h) {
            try {
                k10 = this.f27050b.k(str, this.f27064p, this.f27065q);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                throw new InterruptedIOException();
            }
        } else {
            k10 = this.f27050b.e(str, this.f27064p, this.f27065q);
        }
        if (k10 == null) {
            mVar = this.f27053e;
            a10 = oVar.a().i(this.f27064p).h(this.f27065q).a();
        } else if (k10.f27108d) {
            Uri fromFile = Uri.fromFile((File) z0.k(k10.f27109e));
            long j10 = k10.f27106b;
            long j11 = this.f27064p - j10;
            long j12 = k10.f27107c - j11;
            long j13 = this.f27065q;
            if (j13 != -1) {
                j12 = Math.min(j12, j13);
            }
            a10 = oVar.a().j(fromFile).l(j10).i(j11).h(j12).a();
            mVar = this.f27051c;
        } else {
            if (k10.c()) {
                j4 = this.f27065q;
            } else {
                j4 = k10.f27107c;
                long j14 = this.f27065q;
                if (j14 != -1) {
                    j4 = Math.min(j4, j14);
                }
            }
            a10 = oVar.a().i(this.f27064p).h(j4).a();
            mVar = this.f27052d;
            if (mVar == null) {
                mVar = this.f27053e;
                this.f27050b.i(k10);
                k10 = null;
            }
        }
        this.f27070v = (this.f27068t || mVar != this.f27053e) ? Long.MAX_VALUE : this.f27064p + C;
        if (z9) {
            com.google.android.exoplayer2.util.a.i(y());
            if (mVar == this.f27053e) {
                return;
            }
            try {
                t();
            } catch (Throwable th) {
                if (((j) z0.k(k10)).b()) {
                    this.f27050b.i(k10);
                }
                throw th;
            }
        }
        if (k10 != null && k10.b()) {
            this.f27066r = k10;
        }
        this.f27062n = mVar;
        this.f27061m = a10;
        this.f27063o = 0L;
        long a11 = mVar.a(a10);
        q qVar = new q();
        if (a10.f27295h == -1 && a11 != -1) {
            this.f27065q = a11;
            q.h(qVar, this.f27064p + a11);
        }
        if (A()) {
            Uri c10 = mVar.c();
            this.f27059k = c10;
            q.i(qVar, oVar.f27288a.equals(c10) ^ true ? this.f27059k : null);
        }
        if (B()) {
            this.f27050b.c(str, qVar);
        }
    }

    private void F(String str) throws IOException {
        this.f27065q = 0L;
        if (B()) {
            q qVar = new q();
            q.h(qVar, this.f27064p);
            this.f27050b.c(str, qVar);
        }
    }

    private int G(com.google.android.exoplayer2.upstream.o oVar) {
        if (this.f27057i && this.f27067s) {
            return 0;
        }
        return (this.f27058j && oVar.f27295h == -1) ? 1 : -1;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.google.android.exoplayer2.upstream.cache.j, com.google.android.exoplayer2.upstream.m, com.google.android.exoplayer2.upstream.o] */
    private void t() throws IOException {
        com.google.android.exoplayer2.upstream.m mVar = this.f27062n;
        if (mVar == null) {
            return;
        }
        try {
            mVar.close();
        } finally {
            this.f27061m = null;
            this.f27062n = null;
            j jVar = this.f27066r;
            if (jVar != null) {
                this.f27050b.i(jVar);
                this.f27066r = null;
            }
        }
    }

    private static Uri w(Cache cache, String str, Uri uri) {
        Uri b10 = o.b(cache.b(str));
        return b10 != null ? b10 : uri;
    }

    private void x(Throwable th) {
        if (z() || (th instanceof Cache.CacheException)) {
            this.f27067s = true;
        }
    }

    private boolean y() {
        return this.f27062n == this.f27053e;
    }

    private boolean z() {
        return this.f27062n == this.f27051c;
    }

    @Override // com.google.android.exoplayer2.upstream.m
    public long a(com.google.android.exoplayer2.upstream.o oVar) throws IOException {
        try {
            String a10 = this.f27054f.a(oVar);
            com.google.android.exoplayer2.upstream.o a11 = oVar.a().g(a10).a();
            this.f27060l = a11;
            this.f27059k = w(this.f27050b, a10, a11.f27288a);
            this.f27064p = oVar.f27294g;
            int G = G(oVar);
            boolean z9 = G != -1;
            this.f27068t = z9;
            if (z9) {
                D(G);
            }
            if (this.f27068t) {
                this.f27065q = -1L;
            } else {
                long a12 = o.a(this.f27050b.b(a10));
                this.f27065q = a12;
                if (a12 != -1) {
                    long j4 = a12 - oVar.f27294g;
                    this.f27065q = j4;
                    if (j4 < 0) {
                        throw new DataSourceException(0);
                    }
                }
            }
            long j10 = oVar.f27295h;
            if (j10 != -1) {
                long j11 = this.f27065q;
                if (j11 != -1) {
                    j10 = Math.min(j11, j10);
                }
                this.f27065q = j10;
            }
            long j12 = this.f27065q;
            if (j12 > 0 || j12 == -1) {
                E(a11, false);
            }
            long j13 = oVar.f27295h;
            return j13 != -1 ? j13 : this.f27065q;
        } catch (Throwable th) {
            x(th);
            throw th;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.m
    public Map<String, List<String>> b() {
        if (A()) {
            return this.f27053e.b();
        }
        return Collections.emptyMap();
    }

    @Override // com.google.android.exoplayer2.upstream.m
    @Nullable
    public Uri c() {
        return this.f27059k;
    }

    @Override // com.google.android.exoplayer2.upstream.m
    public void close() throws IOException {
        this.f27060l = null;
        this.f27059k = null;
        this.f27064p = 0L;
        C();
        try {
            t();
        } catch (Throwable th) {
            x(th);
            throw th;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.m
    public void e(p0 p0Var) {
        com.google.android.exoplayer2.util.a.g(p0Var);
        this.f27051c.e(p0Var);
        this.f27053e.e(p0Var);
    }

    @Override // com.google.android.exoplayer2.upstream.i
    public int read(byte[] bArr, int i4, int i10) throws IOException {
        com.google.android.exoplayer2.upstream.o oVar = (com.google.android.exoplayer2.upstream.o) com.google.android.exoplayer2.util.a.g(this.f27060l);
        com.google.android.exoplayer2.upstream.o oVar2 = (com.google.android.exoplayer2.upstream.o) com.google.android.exoplayer2.util.a.g(this.f27061m);
        if (i10 == 0) {
            return 0;
        }
        if (this.f27065q == 0) {
            return -1;
        }
        try {
            if (this.f27064p >= this.f27070v) {
                E(oVar, true);
            }
            int read = ((com.google.android.exoplayer2.upstream.m) com.google.android.exoplayer2.util.a.g(this.f27062n)).read(bArr, i4, i10);
            if (read != -1) {
                if (z()) {
                    this.f27069u += read;
                }
                long j4 = read;
                this.f27064p += j4;
                this.f27063o += j4;
                long j10 = this.f27065q;
                if (j10 != -1) {
                    this.f27065q = j10 - j4;
                }
            } else {
                if (A()) {
                    long j11 = oVar2.f27295h;
                    if (j11 == -1 || this.f27063o < j11) {
                        F((String) z0.k(oVar.f27296i));
                    }
                }
                long j12 = this.f27065q;
                if (j12 <= 0) {
                    if (j12 == -1) {
                    }
                }
                t();
                E(oVar, false);
                return read(bArr, i4, i10);
            }
            return read;
        } catch (Throwable th) {
            x(th);
            throw th;
        }
    }

    public Cache u() {
        return this.f27050b;
    }

    public i v() {
        return this.f27054f;
    }

    public b(Cache cache, @Nullable com.google.android.exoplayer2.upstream.m mVar) {
        this(cache, mVar, 0);
    }

    public b(Cache cache, @Nullable com.google.android.exoplayer2.upstream.m mVar, int i4) {
        this(cache, mVar, new FileDataSource(), new CacheDataSink(cache, CacheDataSink.f27026k), i4, null);
    }

    public b(Cache cache, @Nullable com.google.android.exoplayer2.upstream.m mVar, com.google.android.exoplayer2.upstream.m mVar2, @Nullable com.google.android.exoplayer2.upstream.k kVar, int i4, @Nullable c cVar) {
        this(cache, mVar, mVar2, kVar, i4, cVar, null);
    }

    public b(Cache cache, @Nullable com.google.android.exoplayer2.upstream.m mVar, com.google.android.exoplayer2.upstream.m mVar2, @Nullable com.google.android.exoplayer2.upstream.k kVar, int i4, @Nullable c cVar, @Nullable i iVar) {
        this(cache, mVar, mVar2, kVar, iVar, i4, null, 0, cVar);
    }

    private b(Cache cache, @Nullable com.google.android.exoplayer2.upstream.m mVar, com.google.android.exoplayer2.upstream.m mVar2, @Nullable com.google.android.exoplayer2.upstream.k kVar, @Nullable i iVar, int i4, @Nullable PriorityTaskManager priorityTaskManager, int i10, @Nullable c cVar) {
        this.f27050b = cache;
        this.f27051c = mVar2;
        this.f27054f = iVar == null ? i.f27104a : iVar;
        this.f27056h = (i4 & 1) != 0;
        this.f27057i = (i4 & 2) != 0;
        this.f27058j = (i4 & 4) != 0;
        if (mVar != null) {
            mVar = priorityTaskManager != null ? new i0(mVar, priorityTaskManager, i10) : mVar;
            this.f27053e = mVar;
            this.f27052d = kVar != null ? new n0(mVar, kVar) : null;
        } else {
            this.f27053e = y.f27411b;
            this.f27052d = null;
        }
        this.f27055g = cVar;
    }
}
