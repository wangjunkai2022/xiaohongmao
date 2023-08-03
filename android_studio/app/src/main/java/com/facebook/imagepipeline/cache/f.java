package com.facebook.imagepipeline.cache;

import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.infer.annotation.Nullsafe;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: BufferedDiskCache.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class f {

    /* renamed from: h  reason: collision with root package name */
    private static final Class<?> f12077h = f.class;

    /* renamed from: a  reason: collision with root package name */
    private final com.facebook.cache.disk.i f12078a;

    /* renamed from: b  reason: collision with root package name */
    private final com.facebook.common.memory.g f12079b;

    /* renamed from: c  reason: collision with root package name */
    private final com.facebook.common.memory.j f12080c;

    /* renamed from: d  reason: collision with root package name */
    private final Executor f12081d;

    /* renamed from: e  reason: collision with root package name */
    private final Executor f12082e;

    /* renamed from: f  reason: collision with root package name */
    private final z f12083f = z.d();

    /* renamed from: g  reason: collision with root package name */
    private final q f12084g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BufferedDiskCache.java */
    /* loaded from: classes.dex */
    public class a implements Callable<Boolean> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f12085a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.facebook.cache.common.c f12086b;

        a(final Object val$key, final com.facebook.cache.common.c val$token) {
            this.f12085a = val$key;
            this.f12086b = val$token;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public Boolean call() throws Exception {
            Object e4 = p1.a.e(this.f12085a, null);
            try {
                return Boolean.valueOf(f.this.j(this.f12086b));
            } finally {
            }
        }
    }

    /* compiled from: BufferedDiskCache.java */
    /* loaded from: classes.dex */
    class b implements Callable<Void> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f12088a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.facebook.cache.common.c f12089b;

        b(final Object val$key, final com.facebook.cache.common.c val$token) {
            this.f12088a = val$key;
            this.f12089b = val$token;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public Void call() throws Exception {
            Object e4 = p1.a.e(this.f12088a, null);
            try {
                f.this.f12078a.c(this.f12089b);
                return null;
            } finally {
                p1.a.f(e4);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BufferedDiskCache.java */
    /* loaded from: classes.dex */
    public class c implements Callable<com.facebook.imagepipeline.image.e> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f12091a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ AtomicBoolean f12092b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ com.facebook.cache.common.c f12093c;

        c(final Object val$key, final AtomicBoolean val$isCancelled, final com.facebook.cache.common.c val$token) {
            this.f12091a = val$key;
            this.f12092b = val$isCancelled;
            this.f12093c = val$token;
        }

        @Override // java.util.concurrent.Callable
        @r7.h
        /* renamed from: a */
        public com.facebook.imagepipeline.image.e call() throws Exception {
            Object e4 = p1.a.e(this.f12091a, null);
            try {
                if (!this.f12092b.get()) {
                    com.facebook.imagepipeline.image.e c10 = f.this.f12083f.c(this.f12093c);
                    if (c10 != null) {
                        p0.a.V(f.f12077h, "Found image for %s in staging area", this.f12093c.a());
                        f.this.f12084g.f(this.f12093c);
                    } else {
                        p0.a.V(f.f12077h, "Did not find image for %s in staging area", this.f12093c.a());
                        f.this.f12084g.l(this.f12093c);
                        try {
                            PooledByteBuffer v9 = f.this.v(this.f12093c);
                            if (v9 == null) {
                                return null;
                            }
                            com.facebook.common.references.a D = com.facebook.common.references.a.D(v9);
                            try {
                                c10 = new com.facebook.imagepipeline.image.e(D);
                            } finally {
                                com.facebook.common.references.a.k(D);
                            }
                        } catch (Exception unused) {
                            return null;
                        }
                    }
                    if (Thread.interrupted()) {
                        p0.a.U(f.f12077h, "Host thread was interrupted, decreasing reference count");
                        c10.close();
                        throw new InterruptedException();
                    }
                    return c10;
                }
                throw new CancellationException();
            } catch (Throwable th) {
                try {
                    p1.a.c(this.f12091a, th);
                    throw th;
                } finally {
                    p1.a.f(e4);
                }
            }
        }
    }

    /* compiled from: BufferedDiskCache.java */
    /* loaded from: classes.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f12095a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.facebook.cache.common.c f12096b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ com.facebook.imagepipeline.image.e f12097c;

        d(final Object val$finalEncodedImage, final com.facebook.cache.common.c val$key, final com.facebook.imagepipeline.image.e val$token) {
            this.f12095a = val$finalEncodedImage;
            this.f12096b = val$key;
            this.f12097c = val$token;
        }

        @Override // java.lang.Runnable
        public void run() {
            Object e4 = p1.a.e(this.f12095a, null);
            try {
                f.this.x(this.f12096b, this.f12097c);
            } finally {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BufferedDiskCache.java */
    /* loaded from: classes.dex */
    public class e implements Callable<Void> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f12099a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.facebook.cache.common.c f12100b;

        e(final Object val$key, final com.facebook.cache.common.c val$token) {
            this.f12099a = val$key;
            this.f12100b = val$token;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public Void call() throws Exception {
            Object e4 = p1.a.e(this.f12099a, null);
            try {
                f.this.f12083f.g(this.f12100b);
                f.this.f12078a.i(this.f12100b);
                return null;
            } finally {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BufferedDiskCache.java */
    /* renamed from: com.facebook.imagepipeline.cache.f$f  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class CallableC0099f implements Callable<Void> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f12102a;

        CallableC0099f(final Object val$token) {
            this.f12102a = val$token;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public Void call() throws Exception {
            Object e4 = p1.a.e(this.f12102a, null);
            try {
                f.this.f12083f.a();
                f.this.f12078a.a();
                return null;
            } finally {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BufferedDiskCache.java */
    /* loaded from: classes.dex */
    public class g implements com.facebook.cache.common.k {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.facebook.imagepipeline.image.e f12104a;

        g(final com.facebook.imagepipeline.image.e val$encodedImage) {
            this.f12104a = val$encodedImage;
        }

        @Override // com.facebook.cache.common.k
        public void a(OutputStream os) throws IOException {
            InputStream A = this.f12104a.A();
            com.facebook.common.internal.j.i(A);
            f.this.f12080c.a(A, os);
        }
    }

    public f(com.facebook.cache.disk.i fileCache, com.facebook.common.memory.g pooledByteBufferFactory, com.facebook.common.memory.j pooledByteStreams, Executor readExecutor, Executor writeExecutor, q imageCacheStatsTracker) {
        this.f12078a = fileCache;
        this.f12079b = pooledByteBufferFactory;
        this.f12080c = pooledByteStreams;
        this.f12081d = readExecutor;
        this.f12082e = writeExecutor;
        this.f12084g = imageCacheStatsTracker;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean j(final com.facebook.cache.common.c key) {
        com.facebook.imagepipeline.image.e c10 = this.f12083f.c(key);
        if (c10 != null) {
            c10.close();
            p0.a.V(f12077h, "Found image for %s in staging area", key.a());
            this.f12084g.f(key);
            return true;
        }
        p0.a.V(f12077h, "Did not find image for %s in staging area", key.a());
        this.f12084g.l(key);
        try {
            return this.f12078a.j(key);
        } catch (Exception unused) {
            return false;
        }
    }

    private bolts.h<Boolean> m(final com.facebook.cache.common.c key) {
        try {
            return bolts.h.e(new a(p1.a.d("BufferedDiskCache_containsAsync"), key), this.f12081d);
        } catch (Exception e4) {
            p0.a.n0(f12077h, e4, "Failed to schedule disk-cache read for %s", key.a());
            return bolts.h.C(e4);
        }
    }

    private bolts.h<com.facebook.imagepipeline.image.e> p(com.facebook.cache.common.c key, com.facebook.imagepipeline.image.e pinnedImage) {
        p0.a.V(f12077h, "Found image for %s in staging area", key.a());
        this.f12084g.f(key);
        return bolts.h.D(pinnedImage);
    }

    private bolts.h<com.facebook.imagepipeline.image.e> r(final com.facebook.cache.common.c key, final AtomicBoolean isCancelled) {
        try {
            return bolts.h.e(new c(p1.a.d("BufferedDiskCache_getAsync"), isCancelled, key), this.f12081d);
        } catch (Exception e4) {
            p0.a.n0(f12077h, e4, "Failed to schedule disk-cache read for %s", key.a());
            return bolts.h.C(e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @r7.h
    public PooledByteBuffer v(final com.facebook.cache.common.c key) throws IOException {
        try {
            Class<?> cls = f12077h;
            p0.a.V(cls, "Disk cache read for %s", key.a());
            k0.a d4 = this.f12078a.d(key);
            if (d4 == null) {
                p0.a.V(cls, "Disk cache miss for %s", key.a());
                this.f12084g.c(key);
                return null;
            }
            p0.a.V(cls, "Found entry in disk cache for %s", key.a());
            this.f12084g.i(key);
            InputStream a10 = d4.a();
            PooledByteBuffer b10 = this.f12079b.b(a10, (int) d4.size());
            a10.close();
            p0.a.V(cls, "Successful read from disk cache for %s", key.a());
            return b10;
        } catch (IOException e4) {
            p0.a.n0(f12077h, e4, "Exception reading from cache for %s", key.a());
            this.f12084g.n(key);
            throw e4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x(final com.facebook.cache.common.c key, final com.facebook.imagepipeline.image.e encodedImage) {
        Class<?> cls = f12077h;
        p0.a.V(cls, "About to write to disk-cache for key %s", key.a());
        try {
            this.f12078a.k(key, new g(encodedImage));
            this.f12084g.d(key);
            p0.a.V(cls, "Successful disk-cache write for key %s", key.a());
        } catch (IOException e4) {
            p0.a.n0(f12077h, e4, "Failed to write to disk-cache for key %s", key.a());
        }
    }

    public void i(final com.facebook.cache.common.c key) {
        com.facebook.common.internal.j.i(key);
        this.f12078a.c(key);
    }

    public bolts.h<Void> k() {
        this.f12083f.a();
        try {
            return bolts.h.e(new CallableC0099f(p1.a.d("BufferedDiskCache_clearAll")), this.f12082e);
        } catch (Exception e4) {
            p0.a.n0(f12077h, e4, "Failed to schedule disk-cache clear", new Object[0]);
            return bolts.h.C(e4);
        }
    }

    public bolts.h<Boolean> l(final com.facebook.cache.common.c key) {
        if (n(key)) {
            return bolts.h.D(Boolean.TRUE);
        }
        return m(key);
    }

    public boolean n(com.facebook.cache.common.c key) {
        return this.f12083f.b(key) || this.f12078a.g(key);
    }

    public boolean o(final com.facebook.cache.common.c key) {
        if (n(key)) {
            return true;
        }
        return j(key);
    }

    public bolts.h<com.facebook.imagepipeline.image.e> q(com.facebook.cache.common.c key, AtomicBoolean isCancelled) {
        try {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("BufferedDiskCache#get");
            }
            com.facebook.imagepipeline.image.e c10 = this.f12083f.c(key);
            if (c10 != null) {
                return p(key, c10);
            }
            bolts.h<com.facebook.imagepipeline.image.e> r9 = r(key, isCancelled);
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
            return r9;
        } finally {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
    }

    public long s() {
        return this.f12078a.getSize();
    }

    public bolts.h<Void> t(final com.facebook.cache.common.c key) {
        com.facebook.common.internal.j.i(key);
        try {
            return bolts.h.e(new b(p1.a.d("BufferedDiskCache_probe"), key), this.f12082e);
        } catch (Exception e4) {
            p0.a.n0(f12077h, e4, "Failed to schedule disk-cache probe for %s", key.a());
            return bolts.h.C(e4);
        }
    }

    public void u(final com.facebook.cache.common.c key, com.facebook.imagepipeline.image.e encodedImage) {
        try {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("BufferedDiskCache#put");
            }
            com.facebook.common.internal.j.i(key);
            com.facebook.common.internal.j.d(Boolean.valueOf(com.facebook.imagepipeline.image.e.b0(encodedImage)));
            this.f12083f.f(key, encodedImage);
            com.facebook.imagepipeline.image.e b10 = com.facebook.imagepipeline.image.e.b(encodedImage);
            try {
                this.f12082e.execute(new d(p1.a.d("BufferedDiskCache_putAsync"), key, b10));
            } catch (Exception e4) {
                p0.a.n0(f12077h, e4, "Failed to schedule disk-cache write for %s", key.a());
                this.f12083f.h(key, encodedImage);
                com.facebook.imagepipeline.image.e.d(b10);
            }
        } finally {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
    }

    public bolts.h<Void> w(final com.facebook.cache.common.c key) {
        com.facebook.common.internal.j.i(key);
        this.f12083f.g(key);
        try {
            return bolts.h.e(new e(p1.a.d("BufferedDiskCache_remove"), key), this.f12082e);
        } catch (Exception e4) {
            p0.a.n0(f12077h, e4, "Failed to schedule disk-cache remove for %s", key.a());
            return bolts.h.C(e4);
        }
    }
}
