package com.google.android.exoplayer2.upstream.cache;

import android.os.ConditionVariable;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.exoplayer2.database.DatabaseIOException;
import com.google.android.exoplayer2.upstream.cache.Cache;
import com.google.android.exoplayer2.util.z0;
import java.io.File;
import java.io.IOException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableSet;
import java.util.Random;
import java.util.Set;
import java.util.TreeSet;

/* compiled from: SimpleCache.java */
/* loaded from: classes2.dex */
public final class v implements Cache {

    /* renamed from: m  reason: collision with root package name */
    private static final String f27186m = "SimpleCache";

    /* renamed from: n  reason: collision with root package name */
    private static final int f27187n = 10;

    /* renamed from: o  reason: collision with root package name */
    private static final String f27188o = ".uid";

    /* renamed from: p  reason: collision with root package name */
    private static final HashSet<File> f27189p = new HashSet<>();

    /* renamed from: b  reason: collision with root package name */
    private final File f27190b;

    /* renamed from: c  reason: collision with root package name */
    private final d f27191c;

    /* renamed from: d  reason: collision with root package name */
    private final m f27192d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final f f27193e;

    /* renamed from: f  reason: collision with root package name */
    private final HashMap<String, ArrayList<Cache.a>> f27194f;

    /* renamed from: g  reason: collision with root package name */
    private final Random f27195g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f27196h;

    /* renamed from: i  reason: collision with root package name */
    private long f27197i;

    /* renamed from: j  reason: collision with root package name */
    private long f27198j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f27199k;

    /* renamed from: l  reason: collision with root package name */
    private Cache.CacheException f27200l;

    /* compiled from: SimpleCache.java */
    /* loaded from: classes2.dex */
    class a extends Thread {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ConditionVariable f27201a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String str, ConditionVariable conditionVariable) {
            super(str);
            this.f27201a = conditionVariable;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            synchronized (v.this) {
                this.f27201a.open();
                v.this.z();
                v.this.f27191c.f();
            }
        }
    }

    @Deprecated
    public v(File file, d dVar) {
        this(file, dVar, (byte[]) null, false);
    }

    public static synchronized boolean A(File file) {
        boolean contains;
        synchronized (v.class) {
            contains = f27189p.contains(file.getAbsoluteFile());
        }
        return contains;
    }

    private void B(File file, boolean z9, @Nullable File[] fileArr, @Nullable Map<String, e> map) {
        if (fileArr == null || fileArr.length == 0) {
            if (z9) {
                return;
            }
            file.delete();
            return;
        }
        for (File file2 : fileArr) {
            String name = file2.getName();
            if (z9 && name.indexOf(46) == -1) {
                B(file2, false, file2.listFiles(), map);
            } else if (!z9 || (!m.q(name) && !name.endsWith(f27188o))) {
                long j4 = -1;
                long j10 = com.google.android.exoplayer2.i.f23649b;
                e remove = map != null ? map.remove(name) : null;
                if (remove != null) {
                    j4 = remove.f27088a;
                    j10 = remove.f27089b;
                }
                w e4 = w.e(file2, j4, j10, this.f27192d);
                if (e4 != null) {
                    t(e4);
                } else {
                    file2.delete();
                }
            }
        }
    }

    private static long C(File[] fileArr) {
        int length = fileArr.length;
        for (int i4 = 0; i4 < length; i4++) {
            File file = fileArr[i4];
            String name = file.getName();
            if (name.endsWith(f27188o)) {
                try {
                    return H(name);
                } catch (NumberFormatException unused) {
                    String valueOf = String.valueOf(file);
                    StringBuilder sb = new StringBuilder(valueOf.length() + 20);
                    sb.append("Malformed UID file: ");
                    sb.append(valueOf);
                    com.google.android.exoplayer2.util.w.d(f27186m, sb.toString());
                    file.delete();
                }
            }
        }
        return -1L;
    }

    private static synchronized boolean D(File file) {
        boolean add;
        synchronized (v.class) {
            add = f27189p.add(file.getAbsoluteFile());
        }
        return add;
    }

    private void E(w wVar) {
        ArrayList<Cache.a> arrayList = this.f27194f.get(wVar.f27105a);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                arrayList.get(size).a(this, wVar);
            }
        }
        this.f27191c.a(this, wVar);
    }

    private void F(j jVar) {
        ArrayList<Cache.a> arrayList = this.f27194f.get(jVar.f27105a);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                arrayList.get(size).d(this, jVar);
            }
        }
        this.f27191c.d(this, jVar);
    }

    private void G(w wVar, j jVar) {
        ArrayList<Cache.a> arrayList = this.f27194f.get(wVar.f27105a);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                arrayList.get(size).e(this, wVar, jVar);
            }
        }
        this.f27191c.e(this, wVar, jVar);
    }

    private static long H(String str) {
        return Long.parseLong(str.substring(0, str.indexOf(46)), 16);
    }

    private void I(j jVar) {
        l h4 = this.f27192d.h(jVar.f27105a);
        if (h4 == null || !h4.k(jVar)) {
            return;
        }
        this.f27198j -= jVar.f27107c;
        if (this.f27193e != null) {
            String name = jVar.f27109e.getName();
            try {
                this.f27193e.g(name);
            } catch (IOException unused) {
                String valueOf = String.valueOf(name);
                com.google.android.exoplayer2.util.w.n(f27186m, valueOf.length() != 0 ? "Failed to remove file index entry for: ".concat(valueOf) : new String("Failed to remove file index entry for: "));
            }
        }
        this.f27192d.r(h4.f27124b);
        F(jVar);
    }

    private void J() {
        ArrayList arrayList = new ArrayList();
        for (l lVar : this.f27192d.i()) {
            Iterator<w> it = lVar.f().iterator();
            while (it.hasNext()) {
                w next = it.next();
                if (next.f27109e.length() != next.f27107c) {
                    arrayList.add(next);
                }
            }
        }
        for (int i4 = 0; i4 < arrayList.size(); i4++) {
            I((j) arrayList.get(i4));
        }
    }

    private w K(String str, w wVar) {
        if (this.f27196h) {
            String name = ((File) com.google.android.exoplayer2.util.a.g(wVar.f27109e)).getName();
            long j4 = wVar.f27107c;
            long currentTimeMillis = System.currentTimeMillis();
            boolean z9 = false;
            f fVar = this.f27193e;
            if (fVar != null) {
                try {
                    fVar.i(name, j4, currentTimeMillis);
                } catch (IOException unused) {
                    com.google.android.exoplayer2.util.w.n(f27186m, "Failed to update index with new touch timestamp.");
                }
            } else {
                z9 = true;
            }
            w l10 = this.f27192d.h(str).l(wVar, currentTimeMillis, z9);
            G(wVar, l10);
            return l10;
        }
        return wVar;
    }

    private static synchronized void L(File file) {
        synchronized (v.class) {
            f27189p.remove(file.getAbsoluteFile());
        }
    }

    private void t(w wVar) {
        this.f27192d.o(wVar.f27105a).a(wVar);
        this.f27198j += wVar.f27107c;
        E(wVar);
    }

    private static void v(File file) throws Cache.CacheException {
        if (file.mkdirs() || file.isDirectory()) {
            return;
        }
        String valueOf = String.valueOf(file);
        StringBuilder sb = new StringBuilder(valueOf.length() + 34);
        sb.append("Failed to create cache directory: ");
        sb.append(valueOf);
        String sb2 = sb.toString();
        com.google.android.exoplayer2.util.w.d(f27186m, sb2);
        throw new Cache.CacheException(sb2);
    }

    private static long w(File file) throws IOException {
        long nextLong = new SecureRandom().nextLong();
        long abs = nextLong == Long.MIN_VALUE ? 0L : Math.abs(nextLong);
        String valueOf = String.valueOf(Long.toString(abs, 16));
        File file2 = new File(file, f27188o.length() != 0 ? valueOf.concat(f27188o) : new String(valueOf));
        if (file2.createNewFile()) {
            return abs;
        }
        String valueOf2 = String.valueOf(file2);
        StringBuilder sb = new StringBuilder(valueOf2.length() + 27);
        sb.append("Failed to create UID file: ");
        sb.append(valueOf2);
        throw new IOException(sb.toString());
    }

    @WorkerThread
    public static void x(File file, @Nullable com.google.android.exoplayer2.database.a aVar) {
        if (file.exists()) {
            File[] listFiles = file.listFiles();
            if (listFiles == null) {
                file.delete();
                return;
            }
            if (aVar != null) {
                long C = C(listFiles);
                if (C != -1) {
                    try {
                        f.a(aVar, C);
                    } catch (DatabaseIOException unused) {
                        StringBuilder sb = new StringBuilder(52);
                        sb.append("Failed to delete file metadata: ");
                        sb.append(C);
                        com.google.android.exoplayer2.util.w.n(f27186m, sb.toString());
                    }
                    try {
                        m.g(aVar, C);
                    } catch (DatabaseIOException unused2) {
                        StringBuilder sb2 = new StringBuilder(52);
                        sb2.append("Failed to delete file metadata: ");
                        sb2.append(C);
                        com.google.android.exoplayer2.util.w.n(f27186m, sb2.toString());
                    }
                }
            }
            z0.c1(file);
        }
    }

    private w y(String str, long j4, long j10) {
        w e4;
        l h4 = this.f27192d.h(str);
        if (h4 == null) {
            return w.g(str, j4, j10);
        }
        while (true) {
            e4 = h4.e(j4, j10);
            if (!e4.f27108d || e4.f27109e.length() == e4.f27107c) {
                break;
            }
            J();
        }
        return e4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z() {
        if (!this.f27190b.exists()) {
            try {
                v(this.f27190b);
            } catch (Cache.CacheException e4) {
                this.f27200l = e4;
                return;
            }
        }
        File[] listFiles = this.f27190b.listFiles();
        if (listFiles == null) {
            String valueOf = String.valueOf(this.f27190b);
            StringBuilder sb = new StringBuilder(valueOf.length() + 38);
            sb.append("Failed to list cache directory files: ");
            sb.append(valueOf);
            String sb2 = sb.toString();
            com.google.android.exoplayer2.util.w.d(f27186m, sb2);
            this.f27200l = new Cache.CacheException(sb2);
            return;
        }
        long C = C(listFiles);
        this.f27197i = C;
        if (C == -1) {
            try {
                this.f27197i = w(this.f27190b);
            } catch (IOException e10) {
                String valueOf2 = String.valueOf(this.f27190b);
                StringBuilder sb3 = new StringBuilder(valueOf2.length() + 28);
                sb3.append("Failed to create cache UID: ");
                sb3.append(valueOf2);
                String sb4 = sb3.toString();
                com.google.android.exoplayer2.util.w.e(f27186m, sb4, e10);
                this.f27200l = new Cache.CacheException(sb4, e10);
                return;
            }
        }
        try {
            this.f27192d.p(this.f27197i);
            f fVar = this.f27193e;
            if (fVar != null) {
                fVar.f(this.f27197i);
                Map<String, e> c10 = this.f27193e.c();
                B(this.f27190b, true, listFiles, c10);
                this.f27193e.h(c10.keySet());
            } else {
                B(this.f27190b, true, listFiles, null);
            }
            this.f27192d.t();
            try {
                this.f27192d.u();
            } catch (IOException e11) {
                com.google.android.exoplayer2.util.w.e(f27186m, "Storing index file failed", e11);
            }
        } catch (IOException e12) {
            String valueOf3 = String.valueOf(this.f27190b);
            StringBuilder sb5 = new StringBuilder(valueOf3.length() + 36);
            sb5.append("Failed to initialize cache indices: ");
            sb5.append(valueOf3);
            String sb6 = sb5.toString();
            com.google.android.exoplayer2.util.w.e(f27186m, sb6, e12);
            this.f27200l = new Cache.CacheException(sb6, e12);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized File a(String str, long j4, long j10) throws Cache.CacheException {
        l h4;
        File file;
        com.google.android.exoplayer2.util.a.i(!this.f27199k);
        u();
        h4 = this.f27192d.h(str);
        com.google.android.exoplayer2.util.a.g(h4);
        com.google.android.exoplayer2.util.a.i(h4.h(j4, j10));
        if (!this.f27190b.exists()) {
            v(this.f27190b);
            J();
        }
        this.f27191c.c(this, str, j4, j10);
        file = new File(this.f27190b, Integer.toString(this.f27195g.nextInt(10)));
        if (!file.exists()) {
            v(file);
        }
        return w.i(file, h4.f27123a, j4, System.currentTimeMillis());
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized p b(String str) {
        com.google.android.exoplayer2.util.a.i(!this.f27199k);
        return this.f27192d.k(str);
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized void c(String str, q qVar) throws Cache.CacheException {
        com.google.android.exoplayer2.util.a.i(!this.f27199k);
        u();
        this.f27192d.e(str, qVar);
        try {
            this.f27192d.u();
        } catch (IOException e4) {
            throw new Cache.CacheException(e4);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized long d(String str, long j4, long j10) {
        long j11;
        long j12 = j10 == -1 ? Long.MAX_VALUE : j10 + j4;
        long j13 = j12 >= 0 ? j12 : Long.MAX_VALUE;
        j11 = 0;
        while (j4 < j13) {
            long f10 = f(str, j4, j13 - j4);
            if (f10 > 0) {
                j11 += f10;
            } else {
                f10 = -f10;
            }
            j4 += f10;
        }
        return j11;
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    @Nullable
    public synchronized j e(String str, long j4, long j10) throws Cache.CacheException {
        com.google.android.exoplayer2.util.a.i(!this.f27199k);
        u();
        w y9 = y(str, j4, j10);
        if (y9.f27108d) {
            return K(str, y9);
        } else if (this.f27192d.o(str).j(j4, y9.f27107c)) {
            return y9;
        } else {
            return null;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized long f(String str, long j4, long j10) {
        l h4;
        com.google.android.exoplayer2.util.a.i(!this.f27199k);
        if (j10 == -1) {
            j10 = Long.MAX_VALUE;
        }
        h4 = this.f27192d.h(str);
        return h4 != null ? h4.c(j4, j10) : -j10;
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized Set<String> g() {
        com.google.android.exoplayer2.util.a.i(!this.f27199k);
        return new HashSet(this.f27192d.m());
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized long getUid() {
        return this.f27197i;
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized long h() {
        com.google.android.exoplayer2.util.a.i(!this.f27199k);
        return this.f27198j;
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized void i(j jVar) {
        com.google.android.exoplayer2.util.a.i(!this.f27199k);
        l lVar = (l) com.google.android.exoplayer2.util.a.g(this.f27192d.h(jVar.f27105a));
        lVar.m(jVar.f27106b);
        this.f27192d.r(lVar.f27124b);
        notifyAll();
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized void j(j jVar) {
        com.google.android.exoplayer2.util.a.i(!this.f27199k);
        I(jVar);
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized j k(String str, long j4, long j10) throws InterruptedException, Cache.CacheException {
        j e4;
        com.google.android.exoplayer2.util.a.i(!this.f27199k);
        u();
        while (true) {
            e4 = e(str, j4, j10);
            if (e4 == null) {
                wait();
            }
        }
        return e4;
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized void l(File file, long j4) throws Cache.CacheException {
        boolean z9 = true;
        com.google.android.exoplayer2.util.a.i(!this.f27199k);
        if (file.exists()) {
            if (j4 == 0) {
                file.delete();
                return;
            }
            w wVar = (w) com.google.android.exoplayer2.util.a.g(w.f(file, j4, this.f27192d));
            l lVar = (l) com.google.android.exoplayer2.util.a.g(this.f27192d.h(wVar.f27105a));
            com.google.android.exoplayer2.util.a.i(lVar.h(wVar.f27106b, wVar.f27107c));
            long a10 = o.a(lVar.d());
            if (a10 != -1) {
                if (wVar.f27106b + wVar.f27107c > a10) {
                    z9 = false;
                }
                com.google.android.exoplayer2.util.a.i(z9);
            }
            if (this.f27193e != null) {
                try {
                    this.f27193e.i(file.getName(), wVar.f27107c, wVar.f27110f);
                } catch (IOException e4) {
                    throw new Cache.CacheException(e4);
                }
            }
            t(wVar);
            try {
                this.f27192d.u();
                notifyAll();
            } catch (IOException e10) {
                throw new Cache.CacheException(e10);
            }
        }
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized void m(String str) {
        com.google.android.exoplayer2.util.a.i(!this.f27199k);
        for (j jVar : p(str)) {
            I(jVar);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001b, code lost:
        if (r4.c(r5, r7) >= r7) goto L11;
     */
    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized boolean n(java.lang.String r4, long r5, long r7) {
        /*
            r3 = this;
            monitor-enter(r3)
            boolean r0 = r3.f27199k     // Catch: java.lang.Throwable -> L21
            r1 = 1
            r2 = 0
            if (r0 != 0) goto L9
            r0 = 1
            goto La
        L9:
            r0 = 0
        La:
            com.google.android.exoplayer2.util.a.i(r0)     // Catch: java.lang.Throwable -> L21
            com.google.android.exoplayer2.upstream.cache.m r0 = r3.f27192d     // Catch: java.lang.Throwable -> L21
            com.google.android.exoplayer2.upstream.cache.l r4 = r0.h(r4)     // Catch: java.lang.Throwable -> L21
            if (r4 == 0) goto L1e
            long r4 = r4.c(r5, r7)     // Catch: java.lang.Throwable -> L21
            int r6 = (r4 > r7 ? 1 : (r4 == r7 ? 0 : -1))
            if (r6 < 0) goto L1e
            goto L1f
        L1e:
            r1 = 0
        L1f:
            monitor-exit(r3)
            return r1
        L21:
            r4 = move-exception
            monitor-exit(r3)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.upstream.cache.v.n(java.lang.String, long, long):boolean");
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized NavigableSet<j> o(String str, Cache.a aVar) {
        com.google.android.exoplayer2.util.a.i(!this.f27199k);
        com.google.android.exoplayer2.util.a.g(str);
        com.google.android.exoplayer2.util.a.g(aVar);
        ArrayList<Cache.a> arrayList = this.f27194f.get(str);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.f27194f.put(str, arrayList);
        }
        arrayList.add(aVar);
        return p(str);
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized NavigableSet<j> p(String str) {
        TreeSet treeSet;
        com.google.android.exoplayer2.util.a.i(!this.f27199k);
        l h4 = this.f27192d.h(str);
        if (h4 != null && !h4.g()) {
            treeSet = new TreeSet((Collection) h4.f());
        }
        treeSet = new TreeSet();
        return treeSet;
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized void q(String str, Cache.a aVar) {
        if (this.f27199k) {
            return;
        }
        ArrayList<Cache.a> arrayList = this.f27194f.get(str);
        if (arrayList != null) {
            arrayList.remove(aVar);
            if (arrayList.isEmpty()) {
                this.f27194f.remove(str);
            }
        }
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized void release() {
        if (this.f27199k) {
            return;
        }
        this.f27194f.clear();
        J();
        try {
            this.f27192d.u();
            L(this.f27190b);
        } catch (IOException e4) {
            com.google.android.exoplayer2.util.w.e(f27186m, "Storing index file failed", e4);
            L(this.f27190b);
        }
        this.f27199k = true;
    }

    public synchronized void u() throws Cache.CacheException {
        Cache.CacheException cacheException = this.f27200l;
        if (cacheException != null) {
            throw cacheException;
        }
    }

    @Deprecated
    public v(File file, d dVar, @Nullable byte[] bArr) {
        this(file, dVar, bArr, bArr != null);
    }

    @Deprecated
    public v(File file, d dVar, @Nullable byte[] bArr, boolean z9) {
        this(file, dVar, null, bArr, z9, true);
    }

    public v(File file, d dVar, com.google.android.exoplayer2.database.a aVar) {
        this(file, dVar, aVar, null, false, false);
    }

    public v(File file, d dVar, @Nullable com.google.android.exoplayer2.database.a aVar, @Nullable byte[] bArr, boolean z9, boolean z10) {
        this(file, dVar, new m(aVar, file, bArr, z9, z10), (aVar == null || z10) ? null : new f(aVar));
    }

    v(File file, d dVar, m mVar, @Nullable f fVar) {
        if (D(file)) {
            this.f27190b = file;
            this.f27191c = dVar;
            this.f27192d = mVar;
            this.f27193e = fVar;
            this.f27194f = new HashMap<>();
            this.f27195g = new Random();
            this.f27196h = dVar.b();
            this.f27197i = -1L;
            ConditionVariable conditionVariable = new ConditionVariable();
            new a("ExoPlayer:SimpleCacheInit", conditionVariable).start();
            conditionVariable.block();
            return;
        }
        String valueOf = String.valueOf(file);
        StringBuilder sb = new StringBuilder(valueOf.length() + 46);
        sb.append("Another SimpleCache instance uses the folder: ");
        sb.append(valueOf);
        throw new IllegalStateException(sb.toString());
    }
}
