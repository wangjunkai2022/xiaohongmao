package com.facebook.imagepipeline.cache;

import android.graphics.Bitmap;
import android.os.SystemClock;
import androidx.annotation.VisibleForTesting;
import com.facebook.common.memory.MemoryTrimType;
import com.facebook.imagepipeline.cache.j;
import com.facebook.imagepipeline.cache.u;
import com.facebook.infer.annotation.Nullsafe;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* compiled from: LruCountingMemoryCache.java */
@s7.d
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class t<K, V> implements j<K, V>, u<K, V>, com.facebook.cache.common.f {
    @r7.h

    /* renamed from: a  reason: collision with root package name */
    private final j.b<K> f12142a;
    @VisibleForTesting
    @s7.a("this")

    /* renamed from: b  reason: collision with root package name */
    final i<K, j.a<K, V>> f12143b;
    @VisibleForTesting
    @s7.a("this")

    /* renamed from: c  reason: collision with root package name */
    final i<K, j.a<K, V>> f12144c;

    /* renamed from: e  reason: collision with root package name */
    private final a0<V> f12146e;

    /* renamed from: f  reason: collision with root package name */
    private final u.a f12147f;

    /* renamed from: g  reason: collision with root package name */
    private final com.facebook.common.internal.m<v> f12148g;
    @s7.a("this")

    /* renamed from: h  reason: collision with root package name */
    protected v f12149h;

    /* renamed from: j  reason: collision with root package name */
    private final boolean f12151j;

    /* renamed from: k  reason: collision with root package name */
    private final boolean f12152k;
    @VisibleForTesting
    @s7.a("this")

    /* renamed from: d  reason: collision with root package name */
    final Map<Bitmap, Object> f12145d = new WeakHashMap();
    @s7.a("this")

    /* renamed from: i  reason: collision with root package name */
    private long f12150i = SystemClock.uptimeMillis();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LruCountingMemoryCache.java */
    /* loaded from: classes.dex */
    public class a implements a0<j.a<K, V>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ a0 f12153a;

        a(final a0 val$evictableValueDescriptor) {
            this.f12153a = val$evictableValueDescriptor;
        }

        @Override // com.facebook.imagepipeline.cache.a0
        /* renamed from: b */
        public int a(j.a<K, V> entry) {
            if (t.this.f12151j) {
                return entry.f12116g;
            }
            return this.f12153a.a(entry.f12111b.q());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LruCountingMemoryCache.java */
    /* loaded from: classes.dex */
    public class b implements com.facebook.common.references.h<V> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ j.a f12155a;

        b(final j.a val$entry) {
            this.f12155a = val$entry;
        }

        @Override // com.facebook.common.references.h
        public void release(V unused) {
            t.this.H(this.f12155a);
        }
    }

    public t(a0<V> valueDescriptor, u.a cacheTrimStrategy, com.facebook.common.internal.m<v> memoryCacheParamsSupplier, @r7.h j.b<K> entryStateObserver, boolean storeEntrySize, boolean ignoreSizeMismatch) {
        this.f12146e = valueDescriptor;
        this.f12143b = new i<>(J(valueDescriptor));
        this.f12144c = new i<>(J(valueDescriptor));
        this.f12147f = cacheTrimStrategy;
        this.f12148g = memoryCacheParamsSupplier;
        this.f12149h = (v) com.facebook.common.internal.j.j(memoryCacheParamsSupplier.get(), "mMemoryCacheParamsSupplier returned null");
        this.f12142a = entryStateObserver;
        this.f12151j = storeEntrySize;
        this.f12152k = ignoreSizeMismatch;
    }

    private void A(@r7.h ArrayList<j.a<K, V>> oldEntries) {
        if (oldEntries != null) {
            Iterator<j.a<K, V>> it = oldEntries.iterator();
            while (it.hasNext()) {
                com.facebook.common.references.a.k(G(it.next()));
            }
        }
    }

    private static <K, V> void B(@r7.h j.a<K, V> entry) {
        j.b<K> bVar;
        if (entry == null || (bVar = entry.f12114e) == null) {
            return;
        }
        bVar.a(entry.f12110a, true);
    }

    private static <K, V> void C(@r7.h j.a<K, V> entry) {
        j.b<K> bVar;
        if (entry == null || (bVar = entry.f12114e) == null) {
            return;
        }
        bVar.a(entry.f12110a, false);
    }

    private void D(@r7.h ArrayList<j.a<K, V>> entries) {
        if (entries != null) {
            Iterator<j.a<K, V>> it = entries.iterator();
            while (it.hasNext()) {
                C(it.next());
            }
        }
    }

    private synchronized void E() {
        if (this.f12150i + this.f12149h.f12162f > SystemClock.uptimeMillis()) {
            return;
        }
        this.f12150i = SystemClock.uptimeMillis();
        this.f12149h = (v) com.facebook.common.internal.j.j(this.f12148g.get(), "mMemoryCacheParamsSupplier returned null");
    }

    private synchronized com.facebook.common.references.a<V> F(final j.a<K, V> entry) {
        w(entry);
        return com.facebook.common.references.a.G(entry.f12111b.q(), new b(entry));
    }

    @r7.h
    private synchronized com.facebook.common.references.a<V> G(j.a<K, V> entry) {
        com.facebook.common.internal.j.i(entry);
        return (entry.f12113d && entry.f12112c == 0) ? entry.f12111b : null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H(final j.a<K, V> entry) {
        boolean z9;
        com.facebook.common.references.a<V> G;
        com.facebook.common.internal.j.i(entry);
        synchronized (this) {
            u(entry);
            z9 = z(entry);
            G = G(entry);
        }
        com.facebook.common.references.a.k(G);
        if (!z9) {
            entry = null;
        }
        B(entry);
        E();
        p();
    }

    @r7.h
    private synchronized ArrayList<j.a<K, V>> I(int count, int size) {
        int max = Math.max(count, 0);
        int max2 = Math.max(size, 0);
        if (this.f12143b.d() > max || this.f12143b.h() > max2) {
            ArrayList<j.a<K, V>> arrayList = new ArrayList<>();
            while (true) {
                if (this.f12143b.d() <= max && this.f12143b.h() <= max2) {
                    break;
                }
                K e4 = this.f12143b.e();
                if (e4 == null) {
                    if (this.f12152k) {
                        this.f12143b.n();
                    } else {
                        throw new IllegalStateException(String.format("key is null, but exclusiveEntries count: %d, size: %d", Integer.valueOf(this.f12143b.d()), Integer.valueOf(this.f12143b.h())));
                    }
                } else {
                    this.f12143b.l(e4);
                    arrayList.add(this.f12144c.l(e4));
                }
            }
            return arrayList;
        }
        return null;
    }

    private a0<j.a<K, V>> J(final a0<V> evictableValueDescriptor) {
        return new a(evictableValueDescriptor);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001c, code lost:
        if (o() <= (r3.f12149h.f12157a - r4)) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private synchronized boolean t(int r4) {
        /*
            r3 = this;
            monitor-enter(r3)
            com.facebook.imagepipeline.cache.v r0 = r3.f12149h     // Catch: java.lang.Throwable -> L22
            int r0 = r0.f12161e     // Catch: java.lang.Throwable -> L22
            r1 = 1
            if (r4 > r0) goto L1f
            int r0 = r3.v()     // Catch: java.lang.Throwable -> L22
            com.facebook.imagepipeline.cache.v r2 = r3.f12149h     // Catch: java.lang.Throwable -> L22
            int r2 = r2.f12158b     // Catch: java.lang.Throwable -> L22
            int r2 = r2 - r1
            if (r0 > r2) goto L1f
            int r0 = r3.o()     // Catch: java.lang.Throwable -> L22
            com.facebook.imagepipeline.cache.v r2 = r3.f12149h     // Catch: java.lang.Throwable -> L22
            int r2 = r2.f12157a     // Catch: java.lang.Throwable -> L22
            int r2 = r2 - r4
            if (r0 > r2) goto L1f
            goto L20
        L1f:
            r1 = 0
        L20:
            monitor-exit(r3)
            return r1
        L22:
            r4 = move-exception
            monitor-exit(r3)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.imagepipeline.cache.t.t(int):boolean");
    }

    private synchronized void u(j.a<K, V> entry) {
        com.facebook.common.internal.j.i(entry);
        com.facebook.common.internal.j.o(entry.f12112c > 0);
        entry.f12112c--;
    }

    private synchronized void w(j.a<K, V> entry) {
        com.facebook.common.internal.j.i(entry);
        com.facebook.common.internal.j.o(!entry.f12113d);
        entry.f12112c++;
    }

    private synchronized void x(j.a<K, V> entry) {
        com.facebook.common.internal.j.i(entry);
        com.facebook.common.internal.j.o(!entry.f12113d);
        entry.f12113d = true;
    }

    private synchronized void y(@r7.h ArrayList<j.a<K, V>> oldEntries) {
        if (oldEntries != null) {
            Iterator<j.a<K, V>> it = oldEntries.iterator();
            while (it.hasNext()) {
                x(it.next());
            }
        }
    }

    private synchronized boolean z(j.a<K, V> entry) {
        if (entry.f12113d || entry.f12112c != 0) {
            return false;
        }
        this.f12143b.k(entry.f12110a, entry);
        return true;
    }

    @Override // com.facebook.imagepipeline.cache.u
    public void a(final K key) {
        com.facebook.common.internal.j.i(key);
        synchronized (this) {
            j.a<K, V> l10 = this.f12143b.l(key);
            if (l10 != null) {
                this.f12143b.k(key, l10);
            }
        }
    }

    @Override // com.facebook.imagepipeline.cache.u
    public synchronized int b() {
        return this.f12144c.h();
    }

    @Override // com.facebook.imagepipeline.cache.u
    @r7.h
    public com.facebook.common.references.a<V> c(final K key, final com.facebook.common.references.a<V> valueRef) {
        return j(key, valueRef, this.f12142a);
    }

    @Override // com.facebook.imagepipeline.cache.j
    public void clear() {
        ArrayList<j.a<K, V>> a10;
        ArrayList<j.a<K, V>> a11;
        synchronized (this) {
            a10 = this.f12143b.a();
            a11 = this.f12144c.a();
            y(a11);
        }
        A(a11);
        D(a10);
        E();
    }

    @Override // com.facebook.imagepipeline.cache.u
    public synchronized boolean contains(K key) {
        return this.f12144c.b(key);
    }

    @Override // com.facebook.imagepipeline.cache.u
    @r7.h
    public synchronized V d(final K key) {
        j.a<K, V> c10 = this.f12144c.c(key);
        if (c10 == null) {
            return null;
        }
        return c10.f12111b.q();
    }

    @Override // com.facebook.imagepipeline.cache.j
    public i<K, j.a<K, V>> e() {
        return this.f12144c;
    }

    @Override // com.facebook.imagepipeline.cache.j
    public synchronized int f() {
        return this.f12143b.h();
    }

    @Override // com.facebook.imagepipeline.cache.j
    public Map<Bitmap, Object> g() {
        return this.f12145d;
    }

    @Override // com.facebook.imagepipeline.cache.u
    @r7.h
    public com.facebook.common.references.a<V> get(final K key) {
        j.a<K, V> l10;
        com.facebook.common.references.a<V> F;
        com.facebook.common.internal.j.i(key);
        synchronized (this) {
            l10 = this.f12143b.l(key);
            j.a<K, V> c10 = this.f12144c.c(key);
            F = c10 != null ? F(c10) : null;
        }
        C(l10);
        E();
        p();
        return F;
    }

    @Override // com.facebook.imagepipeline.cache.u
    public synchronized int getCount() {
        return this.f12144c.d();
    }

    @Override // com.facebook.imagepipeline.cache.j
    public v h() {
        return this.f12149h;
    }

    @Override // com.facebook.cache.common.f
    @r7.h
    public synchronized String i() {
        return com.facebook.common.internal.i.f("CountingMemoryCache").d("cached_entries_count", this.f12144c.d()).d("cached_entries_size_bytes", this.f12144c.h()).d("exclusive_entries_count", this.f12143b.d()).d("exclusive_entries_size_bytes", this.f12143b.h()).toString();
    }

    @Override // com.facebook.imagepipeline.cache.j
    @r7.h
    public com.facebook.common.references.a<V> j(final K key, final com.facebook.common.references.a<V> valueRef, @r7.h final j.b<K> observer) {
        j.a<K, V> l10;
        com.facebook.common.references.a<V> aVar;
        com.facebook.common.references.a<V> aVar2;
        j.a<K, V> b10;
        com.facebook.common.internal.j.i(key);
        com.facebook.common.internal.j.i(valueRef);
        E();
        synchronized (this) {
            l10 = this.f12143b.l(key);
            j.a<K, V> l11 = this.f12144c.l(key);
            aVar = null;
            if (l11 != null) {
                x(l11);
                aVar2 = G(l11);
            } else {
                aVar2 = null;
            }
            int a10 = this.f12146e.a(valueRef.q());
            if (t(a10)) {
                if (this.f12151j) {
                    b10 = j.a.a(key, valueRef, a10, observer);
                } else {
                    b10 = j.a.b(key, valueRef, observer);
                }
                this.f12144c.k(key, b10);
                aVar = F(b10);
            }
        }
        com.facebook.common.references.a.k(aVar2);
        C(l10);
        p();
        return aVar;
    }

    @Override // com.facebook.imagepipeline.cache.u
    public int k(com.facebook.common.internal.k<K> predicate) {
        ArrayList<j.a<K, V>> m9;
        ArrayList<j.a<K, V>> m10;
        synchronized (this) {
            m9 = this.f12143b.m(predicate);
            m10 = this.f12144c.m(predicate);
            y(m10);
        }
        A(m10);
        D(m9);
        E();
        p();
        return m10.size();
    }

    @Override // com.facebook.imagepipeline.cache.u
    public synchronized boolean l(com.facebook.common.internal.k<K> predicate) {
        return !this.f12144c.g(predicate).isEmpty();
    }

    @Override // com.facebook.common.memory.b
    public void m(MemoryTrimType trimType) {
        ArrayList<j.a<K, V>> I;
        double a10 = this.f12147f.a(trimType);
        synchronized (this) {
            I = I(Integer.MAX_VALUE, Math.max(0, ((int) (this.f12144c.h() * (1.0d - a10))) - o()));
            y(I);
        }
        A(I);
        D(I);
        E();
        p();
    }

    @Override // com.facebook.imagepipeline.cache.j
    @r7.h
    public com.facebook.common.references.a<V> n(K key) {
        j.a<K, V> l10;
        boolean z9;
        com.facebook.common.references.a<V> aVar;
        com.facebook.common.internal.j.i(key);
        synchronized (this) {
            l10 = this.f12143b.l(key);
            z9 = true;
            if (l10 != null) {
                j.a<K, V> l11 = this.f12144c.l(key);
                com.facebook.common.internal.j.i(l11);
                com.facebook.common.internal.j.o(l11.f12112c == 0);
                aVar = l11.f12111b;
            } else {
                aVar = null;
                z9 = false;
            }
        }
        if (z9) {
            C(l10);
        }
        return aVar;
    }

    @Override // com.facebook.imagepipeline.cache.j
    public synchronized int o() {
        return this.f12144c.h() - this.f12143b.h();
    }

    @Override // com.facebook.imagepipeline.cache.j
    public void p() {
        ArrayList<j.a<K, V>> I;
        synchronized (this) {
            v vVar = this.f12149h;
            int min = Math.min(vVar.f12160d, vVar.f12158b - v());
            v vVar2 = this.f12149h;
            I = I(min, Math.min(vVar2.f12159c, vVar2.f12157a - o()));
            y(I);
        }
        A(I);
        D(I);
    }

    @Override // com.facebook.imagepipeline.cache.j
    public synchronized int q() {
        return this.f12143b.d();
    }

    public synchronized int v() {
        return this.f12144c.d() - this.f12143b.d();
    }
}
