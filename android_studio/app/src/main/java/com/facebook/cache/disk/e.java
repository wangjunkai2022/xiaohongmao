package com.facebook.cache.disk;

import androidx.annotation.VisibleForTesting;
import com.facebook.cache.common.CacheErrorLogger;
import com.facebook.cache.common.CacheEventListener;
import com.facebook.cache.disk.d;
import com.facebook.common.statfs.StatFsHelper;
import com.facebook.infer.annotation.Nullsafe;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* compiled from: DiskStorageCache.java */
@s7.d
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class e implements i, m0.a {

    /* renamed from: s  reason: collision with root package name */
    public static final int f10898s = 1;

    /* renamed from: v  reason: collision with root package name */
    private static final double f10901v = 0.02d;

    /* renamed from: w  reason: collision with root package name */
    private static final long f10902w = -1;

    /* renamed from: a  reason: collision with root package name */
    private final long f10903a;

    /* renamed from: b  reason: collision with root package name */
    private final long f10904b;

    /* renamed from: c  reason: collision with root package name */
    private final CountDownLatch f10905c;

    /* renamed from: d  reason: collision with root package name */
    private long f10906d;

    /* renamed from: e  reason: collision with root package name */
    private final CacheEventListener f10907e;
    @VisibleForTesting
    @s7.a("mLock")

    /* renamed from: f  reason: collision with root package name */
    final Set<String> f10908f;

    /* renamed from: g  reason: collision with root package name */
    private long f10909g;

    /* renamed from: h  reason: collision with root package name */
    private final long f10910h;

    /* renamed from: i  reason: collision with root package name */
    private final StatFsHelper f10911i;

    /* renamed from: j  reason: collision with root package name */
    private final d f10912j;

    /* renamed from: k  reason: collision with root package name */
    private final h f10913k;

    /* renamed from: l  reason: collision with root package name */
    private final CacheErrorLogger f10914l;

    /* renamed from: m  reason: collision with root package name */
    private final boolean f10915m;

    /* renamed from: n  reason: collision with root package name */
    private final b f10916n;

    /* renamed from: o  reason: collision with root package name */
    private final s0.a f10917o;

    /* renamed from: p  reason: collision with root package name */
    private final Object f10918p = new Object();

    /* renamed from: q  reason: collision with root package name */
    private boolean f10919q;

    /* renamed from: r  reason: collision with root package name */
    private static final Class<?> f10897r = e.class;

    /* renamed from: t  reason: collision with root package name */
    private static final long f10899t = TimeUnit.HOURS.toMillis(2);

    /* renamed from: u  reason: collision with root package name */
    private static final long f10900u = TimeUnit.MINUTES.toMillis(30);

    /* compiled from: DiskStorageCache.java */
    /* loaded from: classes.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (e.this.f10918p) {
                e.this.v();
            }
            e.this.f10919q = true;
            e.this.f10905c.countDown();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DiskStorageCache.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private boolean f10921a = false;

        /* renamed from: b  reason: collision with root package name */
        private long f10922b = -1;

        /* renamed from: c  reason: collision with root package name */
        private long f10923c = -1;

        b() {
        }

        public synchronized long a() {
            return this.f10923c;
        }

        public synchronized long b() {
            return this.f10922b;
        }

        public synchronized void c(long sizeIncrement, long countIncrement) {
            if (this.f10921a) {
                this.f10922b += sizeIncrement;
                this.f10923c += countIncrement;
            }
        }

        public synchronized boolean d() {
            return this.f10921a;
        }

        public synchronized void e() {
            this.f10921a = false;
            this.f10923c = -1L;
            this.f10922b = -1L;
        }

        public synchronized void f(long size, long count) {
            this.f10923c = count;
            this.f10922b = size;
            this.f10921a = true;
        }
    }

    /* compiled from: DiskStorageCache.java */
    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        public final long f10924a;

        /* renamed from: b  reason: collision with root package name */
        public final long f10925b;

        /* renamed from: c  reason: collision with root package name */
        public final long f10926c;

        public c(long cacheSizeLimitMinimum, long lowDiskSpaceCacheSizeLimit, long defaultCacheSizeLimit) {
            this.f10924a = cacheSizeLimitMinimum;
            this.f10925b = lowDiskSpaceCacheSizeLimit;
            this.f10926c = defaultCacheSizeLimit;
        }
    }

    public e(d diskStorage, h entryEvictionComparatorSupplier, c params, CacheEventListener cacheEventListener, CacheErrorLogger cacheErrorLogger, @r7.h m0.b diskTrimmableRegistry, final Executor executorForBackgrountInit, boolean indexPopulateAtStartupEnabled) {
        this.f10903a = params.f10925b;
        long j4 = params.f10926c;
        this.f10904b = j4;
        this.f10906d = j4;
        this.f10911i = StatFsHelper.e();
        this.f10912j = diskStorage;
        this.f10913k = entryEvictionComparatorSupplier;
        this.f10909g = -1L;
        this.f10907e = cacheEventListener;
        this.f10910h = params.f10924a;
        this.f10914l = cacheErrorLogger;
        this.f10916n = new b();
        this.f10917o = s0.e.a();
        this.f10915m = indexPopulateAtStartupEnabled;
        this.f10908f = new HashSet();
        if (diskTrimmableRegistry != null) {
            diskTrimmableRegistry.a(this);
        }
        if (indexPopulateAtStartupEnabled) {
            this.f10905c = new CountDownLatch(1);
            executorForBackgrountInit.execute(new a());
            return;
        }
        this.f10905c = new CountDownLatch(0);
    }

    private k0.a q(final d.InterfaceC0079d inserter, final com.facebook.cache.common.c key, String resourceId) throws IOException {
        k0.a e4;
        synchronized (this.f10918p) {
            e4 = inserter.e(key);
            this.f10908f.add(resourceId);
            this.f10916n.c(e4.size(), 1L);
        }
        return e4;
    }

    @s7.a("mLock")
    private void r(long desiredSize, CacheEventListener.EvictionReason reason) throws IOException {
        try {
            Collection<d.c> s9 = s(this.f10912j.j());
            long b10 = this.f10916n.b();
            long j4 = b10 - desiredSize;
            int i4 = 0;
            long j10 = 0;
            for (d.c cVar : s9) {
                if (j10 > j4) {
                    break;
                }
                long f10 = this.f10912j.f(cVar);
                this.f10908f.remove(cVar.getId());
                if (f10 > 0) {
                    i4++;
                    j10 += f10;
                    k k10 = k.g().p(cVar.getId()).m(reason).o(f10).l(b10 - j10).k(desiredSize);
                    this.f10907e.f(k10);
                    k10.h();
                }
            }
            this.f10916n.c(-j10, -i4);
            this.f10912j.d();
        } catch (IOException e4) {
            CacheErrorLogger cacheErrorLogger = this.f10914l;
            CacheErrorLogger.CacheErrorCategory cacheErrorCategory = CacheErrorLogger.CacheErrorCategory.EVICTION;
            Class<?> cls = f10897r;
            cacheErrorLogger.a(cacheErrorCategory, cls, "evictAboveSize: " + e4.getMessage(), e4);
            throw e4;
        }
    }

    private Collection<d.c> s(Collection<d.c> allEntries) {
        long now = this.f10917o.now() + f10899t;
        ArrayList arrayList = new ArrayList(allEntries.size());
        ArrayList arrayList2 = new ArrayList(allEntries.size());
        for (d.c cVar : allEntries) {
            if (cVar.b() > now) {
                arrayList.add(cVar);
            } else {
                arrayList2.add(cVar);
            }
        }
        Collections.sort(arrayList2, this.f10913k.get());
        arrayList.addAll(arrayList2);
        return arrayList;
    }

    private void u() throws IOException {
        synchronized (this.f10918p) {
            boolean v9 = v();
            z();
            long b10 = this.f10916n.b();
            if (b10 > this.f10906d && !v9) {
                this.f10916n.e();
                v();
            }
            long j4 = this.f10906d;
            if (b10 > j4) {
                r((j4 * 9) / 10, CacheEventListener.EvictionReason.CACHE_FULL);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @s7.a("mLock")
    public boolean v() {
        long now = this.f10917o.now();
        if (this.f10916n.d()) {
            long j4 = this.f10909g;
            if (j4 != -1 && now - j4 <= f10900u) {
                return false;
            }
        }
        return w();
    }

    @s7.a("mLock")
    private boolean w() {
        Set<String> hashSet;
        long j4;
        long now = this.f10917o.now();
        long j10 = f10899t + now;
        if (this.f10915m && this.f10908f.isEmpty()) {
            hashSet = this.f10908f;
        } else {
            hashSet = this.f10915m ? new HashSet<>() : null;
        }
        try {
            long j11 = 0;
            long j12 = -1;
            int i4 = 0;
            boolean z9 = false;
            int i10 = 0;
            int i11 = 0;
            for (d.c cVar : this.f10912j.j()) {
                i10++;
                j11 += cVar.getSize();
                if (cVar.b() > j10) {
                    i11++;
                    i4 = (int) (i4 + cVar.getSize());
                    j4 = j10;
                    j12 = Math.max(cVar.b() - now, j12);
                    z9 = true;
                } else {
                    j4 = j10;
                    if (this.f10915m) {
                        com.facebook.common.internal.j.i(hashSet);
                        hashSet.add(cVar.getId());
                    }
                }
                j10 = j4;
            }
            if (z9) {
                this.f10914l.a(CacheErrorLogger.CacheErrorCategory.READ_INVALID_ENTRY, f10897r, "Future timestamp found in " + i11 + " files , with a total size of " + i4 + " bytes, and a maximum time delta of " + j12 + "ms", null);
            }
            long j13 = i10;
            if (this.f10916n.a() != j13 || this.f10916n.b() != j11) {
                if (this.f10915m && this.f10908f != hashSet) {
                    com.facebook.common.internal.j.i(hashSet);
                    this.f10908f.clear();
                    this.f10908f.addAll(hashSet);
                }
                this.f10916n.f(j11, j13);
            }
            this.f10909g = now;
            return true;
        } catch (IOException e4) {
            this.f10914l.a(CacheErrorLogger.CacheErrorCategory.GENERIC_IO, f10897r, "calcFileCacheSize: " + e4.getMessage(), e4);
            return false;
        }
    }

    private d.InterfaceC0079d x(final String resourceId, final com.facebook.cache.common.c key) throws IOException {
        u();
        return this.f10912j.g(resourceId, key);
    }

    private void y(final double trimRatio) {
        synchronized (this.f10918p) {
            try {
                this.f10916n.e();
                v();
                long b10 = this.f10916n.b();
                r(b10 - ((long) (trimRatio * b10)), CacheEventListener.EvictionReason.CACHE_MANAGER_TRIMMED);
            } catch (IOException e4) {
                CacheErrorLogger cacheErrorLogger = this.f10914l;
                CacheErrorLogger.CacheErrorCategory cacheErrorCategory = CacheErrorLogger.CacheErrorCategory.EVICTION;
                Class<?> cls = f10897r;
                cacheErrorLogger.a(cacheErrorCategory, cls, "trimBy: " + e4.getMessage(), e4);
            }
        }
    }

    @s7.a("mLock")
    private void z() {
        if (this.f10911i.l(this.f10912j.isExternal() ? StatFsHelper.StorageType.EXTERNAL : StatFsHelper.StorageType.INTERNAL, this.f10904b - this.f10916n.b())) {
            this.f10906d = this.f10903a;
        } else {
            this.f10906d = this.f10904b;
        }
    }

    @Override // com.facebook.cache.disk.i
    public void a() {
        synchronized (this.f10918p) {
            try {
                this.f10912j.a();
                this.f10908f.clear();
                this.f10907e.a();
            } catch (IOException | NullPointerException e4) {
                CacheErrorLogger cacheErrorLogger = this.f10914l;
                CacheErrorLogger.CacheErrorCategory cacheErrorCategory = CacheErrorLogger.CacheErrorCategory.EVICTION;
                Class<?> cls = f10897r;
                cacheErrorLogger.a(cacheErrorCategory, cls, "clearAll: " + e4.getMessage(), e4);
            }
            this.f10916n.e();
        }
    }

    @Override // com.facebook.cache.disk.i
    public d.a b() throws IOException {
        return this.f10912j.b();
    }

    @Override // com.facebook.cache.disk.i
    public boolean c(final com.facebook.cache.common.c key) {
        String str;
        IOException e4;
        String str2 = null;
        try {
            try {
                synchronized (this.f10918p) {
                    try {
                        List<String> b10 = com.facebook.cache.common.d.b(key);
                        int i4 = 0;
                        while (i4 < b10.size()) {
                            String str3 = b10.get(i4);
                            if (this.f10912j.e(str3, key)) {
                                this.f10908f.add(str3);
                                return true;
                            }
                            i4++;
                            str2 = str3;
                        }
                        return false;
                    } catch (Throwable th) {
                        str = str2;
                        th = th;
                        try {
                            throw th;
                        } catch (IOException e10) {
                            e4 = e10;
                            k n9 = k.g().j(key).p(str).n(e4);
                            this.f10907e.d(n9);
                            n9.h();
                            return false;
                        }
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e11) {
            str = null;
            e4 = e11;
        }
    }

    @Override // com.facebook.cache.disk.i
    @r7.h
    public k0.a d(final com.facebook.cache.common.c key) {
        k0.a aVar;
        k j4 = k.g().j(key);
        try {
            synchronized (this.f10918p) {
                List<String> b10 = com.facebook.cache.common.d.b(key);
                String str = null;
                aVar = null;
                for (int i4 = 0; i4 < b10.size(); i4++) {
                    str = b10.get(i4);
                    j4.p(str);
                    aVar = this.f10912j.i(str, key);
                    if (aVar != null) {
                        break;
                    }
                }
                if (aVar == null) {
                    this.f10907e.b(j4);
                    this.f10908f.remove(str);
                } else {
                    com.facebook.common.internal.j.i(str);
                    this.f10907e.h(j4);
                    this.f10908f.add(str);
                }
            }
            return aVar;
        } catch (IOException e4) {
            this.f10914l.a(CacheErrorLogger.CacheErrorCategory.GENERIC_IO, f10897r, "getResource", e4);
            j4.n(e4);
            this.f10907e.d(j4);
            return null;
        } finally {
            j4.h();
        }
    }

    @Override // m0.a
    public void e() {
        a();
    }

    @Override // com.facebook.cache.disk.i
    public long f(long cacheExpirationMs) {
        long j4;
        long j10;
        synchronized (this.f10918p) {
            try {
                long now = this.f10917o.now();
                Collection<d.c> j11 = this.f10912j.j();
                long b10 = this.f10916n.b();
                int i4 = 0;
                long j12 = 0;
                j10 = 0;
                for (d.c cVar : j11) {
                    try {
                        long j13 = now;
                        long max = Math.max(1L, Math.abs(now - cVar.b()));
                        if (max >= cacheExpirationMs) {
                            long f10 = this.f10912j.f(cVar);
                            this.f10908f.remove(cVar.getId());
                            if (f10 > 0) {
                                i4++;
                                j12 += f10;
                                k l10 = k.g().p(cVar.getId()).m(CacheEventListener.EvictionReason.CONTENT_STALE).o(f10).l(b10 - j12);
                                this.f10907e.f(l10);
                                l10.h();
                            }
                        } else {
                            j10 = Math.max(j10, max);
                        }
                        now = j13;
                    } catch (IOException e4) {
                        e = e4;
                        j4 = j10;
                        this.f10914l.a(CacheErrorLogger.CacheErrorCategory.EVICTION, f10897r, "clearOldEntries: " + e.getMessage(), e);
                        j10 = j4;
                        return j10;
                    }
                }
                this.f10912j.d();
                if (i4 > 0) {
                    v();
                    this.f10916n.c(-j12, -i4);
                }
            } catch (IOException e10) {
                e = e10;
                j4 = 0;
            }
        }
        return j10;
    }

    @Override // com.facebook.cache.disk.i
    public boolean g(com.facebook.cache.common.c key) {
        synchronized (this.f10918p) {
            List<String> b10 = com.facebook.cache.common.d.b(key);
            for (int i4 = 0; i4 < b10.size(); i4++) {
                if (this.f10908f.contains(b10.get(i4))) {
                    return true;
                }
            }
            return false;
        }
    }

    @Override // com.facebook.cache.disk.i
    public long getCount() {
        return this.f10916n.a();
    }

    @Override // com.facebook.cache.disk.i
    public long getSize() {
        return this.f10916n.b();
    }

    @Override // m0.a
    public void h() {
        synchronized (this.f10918p) {
            v();
            long b10 = this.f10916n.b();
            long j4 = this.f10910h;
            if (j4 > 0 && b10 > 0 && b10 >= j4) {
                double d4 = 1.0d - (j4 / b10);
                if (d4 > f10901v) {
                    y(d4);
                }
            }
        }
    }

    @Override // com.facebook.cache.disk.i
    public void i(com.facebook.cache.common.c key) {
        synchronized (this.f10918p) {
            try {
                List<String> b10 = com.facebook.cache.common.d.b(key);
                for (int i4 = 0; i4 < b10.size(); i4++) {
                    String str = b10.get(i4);
                    this.f10912j.c(str);
                    this.f10908f.remove(str);
                }
            } catch (IOException e4) {
                CacheErrorLogger cacheErrorLogger = this.f10914l;
                CacheErrorLogger.CacheErrorCategory cacheErrorCategory = CacheErrorLogger.CacheErrorCategory.DELETE_FILE;
                Class<?> cls = f10897r;
                cacheErrorLogger.a(cacheErrorCategory, cls, "delete: " + e4.getMessage(), e4);
            }
        }
    }

    @Override // com.facebook.cache.disk.i
    public boolean isEnabled() {
        return this.f10912j.isEnabled();
    }

    @Override // com.facebook.cache.disk.i
    public boolean j(final com.facebook.cache.common.c key) {
        synchronized (this.f10918p) {
            if (g(key)) {
                return true;
            }
            try {
                List<String> b10 = com.facebook.cache.common.d.b(key);
                for (int i4 = 0; i4 < b10.size(); i4++) {
                    String str = b10.get(i4);
                    if (this.f10912j.h(str, key)) {
                        this.f10908f.add(str);
                        return true;
                    }
                }
                return false;
            } catch (IOException unused) {
                return false;
            }
        }
    }

    @Override // com.facebook.cache.disk.i
    public k0.a k(com.facebook.cache.common.c key, com.facebook.cache.common.k callback) throws IOException {
        String a10;
        k j4 = k.g().j(key);
        this.f10907e.e(j4);
        synchronized (this.f10918p) {
            a10 = com.facebook.cache.common.d.a(key);
        }
        j4.p(a10);
        try {
            try {
                d.InterfaceC0079d x9 = x(a10, key);
                try {
                    x9.d(callback, key);
                    k0.a q9 = q(x9, key, a10);
                    j4.o(q9.size()).l(this.f10916n.b());
                    this.f10907e.c(j4);
                    return q9;
                } finally {
                    if (!x9.c()) {
                        p0.a.q(f10897r, "Failed to delete temp file");
                    }
                }
            } catch (IOException e4) {
                j4.n(e4);
                this.f10907e.g(j4);
                p0.a.r(f10897r, "Failed inserting a file into the cache", e4);
                throw e4;
            }
        } finally {
            j4.h();
        }
    }

    @VisibleForTesting
    protected void p() {
        try {
            this.f10905c.await();
        } catch (InterruptedException unused) {
            p0.a.q(f10897r, "Memory Index is not ready yet. ");
        }
    }

    public boolean t() {
        return this.f10919q || !this.f10915m;
    }
}
