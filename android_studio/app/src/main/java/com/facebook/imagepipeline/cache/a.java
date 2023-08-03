package com.facebook.imagepipeline.cache;

import android.graphics.Bitmap;
import android.os.SystemClock;
import androidx.annotation.VisibleForTesting;
import com.facebook.common.memory.MemoryTrimType;
import com.facebook.imagepipeline.cache.j;
import com.facebook.imagepipeline.cache.u;
import com.facebook.infer.annotation.Nullsafe;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;

/* compiled from: AbstractAdaptiveCountingMemoryCache.java */
@s7.d
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public abstract class a<K, V> implements j<K, V> {

    /* renamed from: o  reason: collision with root package name */
    private static final String f12033o = "AbstractArcCountingMemoryCache";

    /* renamed from: p  reason: collision with root package name */
    static final int f12034p = 500;

    /* renamed from: q  reason: collision with root package name */
    static final int f12035q = 1000;
    @VisibleForTesting

    /* renamed from: r  reason: collision with root package name */
    static final int f12036r = 100;

    /* renamed from: s  reason: collision with root package name */
    static final int f12037s = 900;

    /* renamed from: t  reason: collision with root package name */
    static final int f12038t = 10;
    @VisibleForTesting
    @s7.a("this")

    /* renamed from: a  reason: collision with root package name */
    final i<K, j.a<K, V>> f12039a;
    @VisibleForTesting
    @s7.a("this")

    /* renamed from: b  reason: collision with root package name */
    final i<K, j.a<K, V>> f12040b;
    @VisibleForTesting
    @s7.a("this")

    /* renamed from: c  reason: collision with root package name */
    final i<K, j.a<K, V>> f12041c;

    /* renamed from: d  reason: collision with root package name */
    private final a0<V> f12042d;

    /* renamed from: e  reason: collision with root package name */
    private final u.a f12043e;

    /* renamed from: f  reason: collision with root package name */
    private final com.facebook.common.internal.m<v> f12044f;
    @VisibleForTesting
    @s7.a("this")

    /* renamed from: g  reason: collision with root package name */
    int f12045g;

    /* renamed from: h  reason: collision with root package name */
    private final int f12046h;
    @VisibleForTesting
    @s7.a("this")

    /* renamed from: i  reason: collision with root package name */
    final int f12047i;
    @VisibleForTesting
    @s7.a("this")

    /* renamed from: j  reason: collision with root package name */
    final a<K, V>.d<K> f12048j;
    @VisibleForTesting
    @s7.a("this")

    /* renamed from: k  reason: collision with root package name */
    final ArrayList<K> f12049k;
    @VisibleForTesting
    @s7.a("this")

    /* renamed from: l  reason: collision with root package name */
    final int f12050l;
    @s7.a("this")

    /* renamed from: m  reason: collision with root package name */
    protected v f12051m;
    @s7.a("this")

    /* renamed from: n  reason: collision with root package name */
    private long f12052n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractAdaptiveCountingMemoryCache.java */
    /* renamed from: com.facebook.imagepipeline.cache.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0098a implements a0<j.a<K, V>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ a0 f12053a;

        C0098a(final a0 val$evictableValueDescriptor) {
            this.f12053a = val$evictableValueDescriptor;
        }

        @Override // com.facebook.imagepipeline.cache.a0
        /* renamed from: b */
        public int a(j.a<K, V> entry) {
            return this.f12053a.a(entry.f12111b.q());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractAdaptiveCountingMemoryCache.java */
    /* loaded from: classes.dex */
    public class b implements com.facebook.common.references.h<V> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ j.a f12055a;

        b(final j.a val$entry) {
            this.f12055a = val$entry;
        }

        @Override // com.facebook.common.references.h
        public void release(V unused) {
            a.this.P(this.f12055a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractAdaptiveCountingMemoryCache.java */
    /* loaded from: classes.dex */
    public enum c {
        LFU,
        MFU
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractAdaptiveCountingMemoryCache.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public class d<E> {

        /* renamed from: a  reason: collision with root package name */
        private final ArrayList<E> f12060a;

        /* renamed from: b  reason: collision with root package name */
        private final ArrayList<Integer> f12061b;

        /* renamed from: c  reason: collision with root package name */
        private final int f12062c;

        public d(int maxCapacity) {
            this.f12060a = new ArrayList<>(maxCapacity);
            this.f12061b = new ArrayList<>(maxCapacity);
            this.f12062c = maxCapacity;
        }

        public void a(E element, Integer second) {
            if (this.f12060a.size() == this.f12062c) {
                this.f12060a.remove(0);
                this.f12061b.remove(0);
            }
            this.f12060a.add(element);
            this.f12061b.add(second);
        }

        public boolean b(E element) {
            return this.f12060a.contains(element);
        }

        @r7.h
        public Integer c(E element) {
            int indexOf = this.f12060a.indexOf(element);
            if (indexOf < 0) {
                return null;
            }
            return this.f12061b.get(indexOf);
        }

        public void d(E element) {
            int indexOf = this.f12060a.indexOf(element);
            if (indexOf < 0) {
                return;
            }
            Integer valueOf = Integer.valueOf(this.f12061b.get(indexOf).intValue() + 1);
            int i4 = this.f12062c;
            if (indexOf == i4 - 1) {
                this.f12061b.set(i4 - 1, valueOf);
                return;
            }
            this.f12060a.remove(indexOf);
            this.f12061b.remove(indexOf);
            this.f12060a.add(element);
            this.f12061b.add(valueOf);
        }

        public int e() {
            return this.f12060a.size();
        }
    }

    public a(com.facebook.common.internal.m<v> memoryCacheParamsSupplier, u.a cacheTrimStrategy, a0<V> valueDescriptor, int adaptiveRatePromil, int frequentlyUsedThreshold, int ghostListMaxSize, int lfuFractionPromil) {
        p0.a.i(f12033o, "Create Adaptive Replacement Cache");
        this.f12042d = valueDescriptor;
        this.f12039a = new i<>(S(valueDescriptor));
        this.f12040b = new i<>(S(valueDescriptor));
        this.f12041c = new i<>(S(valueDescriptor));
        this.f12043e = cacheTrimStrategy;
        this.f12044f = memoryCacheParamsSupplier;
        this.f12051m = (v) com.facebook.common.internal.j.j(memoryCacheParamsSupplier.get(), "mMemoryCacheParamsSupplier returned null");
        this.f12052n = SystemClock.uptimeMillis();
        this.f12046h = frequentlyUsedThreshold;
        this.f12050l = ghostListMaxSize;
        this.f12048j = new d<>(ghostListMaxSize);
        this.f12049k = new ArrayList<>(ghostListMaxSize);
        if (lfuFractionPromil >= 100 && lfuFractionPromil <= 900) {
            this.f12045g = lfuFractionPromil;
        } else {
            this.f12045g = 500;
            z();
        }
        if (adaptiveRatePromil > 0 && adaptiveRatePromil < 1000) {
            this.f12047i = adaptiveRatePromil;
            return;
        }
        this.f12047i = 10;
        y();
    }

    private synchronized void A(j.a<K, V> entry) {
        com.facebook.common.internal.j.i(entry);
        com.facebook.common.internal.j.o(!entry.f12113d);
        entry.f12113d = true;
    }

    private synchronized void B(@r7.h ArrayList<j.a<K, V>> oldEntries) {
        if (oldEntries != null) {
            Iterator<j.a<K, V>> it = oldEntries.iterator();
            while (it.hasNext()) {
                A(it.next());
            }
        }
    }

    private synchronized void C(@r7.h ArrayList<j.a<K, V>> oldEntries1, @r7.h ArrayList<j.a<K, V>> oldEntries2) {
        B(oldEntries1);
        B(oldEntries2);
    }

    private synchronized boolean D(j.a<K, V> entry) {
        if (entry.f12113d || entry.f12112c != 0) {
            return false;
        }
        if (entry.f12115f > this.f12046h) {
            this.f12040b.k(entry.f12110a, entry);
        } else {
            this.f12039a.k(entry.f12110a, entry);
        }
        return true;
    }

    private void E(@r7.h ArrayList<j.a<K, V>> oldEntries) {
        if (oldEntries != null) {
            Iterator<j.a<K, V>> it = oldEntries.iterator();
            while (it.hasNext()) {
                com.facebook.common.references.a.k(O(it.next()));
            }
        }
    }

    private void F(@r7.h ArrayList<j.a<K, V>> oldEntries1, @r7.h ArrayList<j.a<K, V>> oldEntries2) {
        E(oldEntries1);
        E(oldEntries2);
    }

    private void G(@r7.h ArrayList<j.a<K, V>> entries1, @r7.h ArrayList<j.a<K, V>> entries2) {
        K(entries1);
        K(entries2);
    }

    private static <K, V> void H(@r7.h j.a<K, V> entry) {
        j.b<K> bVar;
        if (entry == null || (bVar = entry.f12114e) == null) {
            return;
        }
        bVar.a(entry.f12110a, true);
    }

    private static <K, V> void I(@r7.h j.a<K, V> entry) {
        j.b<K> bVar;
        if (entry == null || (bVar = entry.f12114e) == null) {
            return;
        }
        bVar.a(entry.f12110a, false);
    }

    private void J(@r7.h j.a<K, V> entry1, @r7.h j.a<K, V> entry2) {
        I(entry1);
        I(entry2);
    }

    private void K(@r7.h ArrayList<j.a<K, V>> entries) {
        if (entries != null) {
            Iterator<j.a<K, V>> it = entries.iterator();
            while (it.hasNext()) {
                I(it.next());
            }
        }
    }

    private synchronized void L(K key) {
        if (this.f12048j.b(key)) {
            int i4 = this.f12045g;
            int i10 = this.f12047i;
            if (i4 + i10 <= 900) {
                this.f12045g = i4 + i10;
            }
            this.f12048j.d(key);
        } else if (this.f12045g - this.f12047i >= 100 && this.f12049k.contains(key)) {
            this.f12045g -= this.f12047i;
        }
    }

    private synchronized void M() {
        if (this.f12052n + this.f12051m.f12162f > SystemClock.uptimeMillis()) {
            return;
        }
        this.f12052n = SystemClock.uptimeMillis();
        this.f12051m = (v) com.facebook.common.internal.j.j(this.f12044f.get(), "mMemoryCacheParamsSupplier returned null");
    }

    private synchronized com.facebook.common.references.a<V> N(final j.a<K, V> entry) {
        x(entry);
        return com.facebook.common.references.a.G(entry.f12111b.q(), new b(entry));
    }

    @r7.h
    private synchronized com.facebook.common.references.a<V> O(j.a<K, V> entry) {
        com.facebook.common.internal.j.i(entry);
        return (entry.f12113d && entry.f12112c == 0) ? entry.f12111b : null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P(final j.a<K, V> entry) {
        boolean D;
        com.facebook.common.references.a<V> O;
        com.facebook.common.internal.j.i(entry);
        synchronized (this) {
            u(entry);
            D = D(entry);
            O = O(entry);
        }
        com.facebook.common.references.a.k(O);
        if (!D) {
            entry = null;
        }
        H(entry);
        M();
        p();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @r7.h
    private synchronized ArrayList<j.a<K, V>> R(int count, int size, i<K, j.a<K, V>> ExclusixeEntries, c evictionType) {
        int max = Math.max(count, 0);
        int max2 = Math.max(size, 0);
        if (ExclusixeEntries.d() <= max && ExclusixeEntries.h() <= max2) {
            return null;
        }
        ArrayList<j.a<K, V>> arrayList = new ArrayList<>();
        while (true) {
            if (ExclusixeEntries.d() <= max && ExclusixeEntries.h() <= max2) {
                return arrayList;
            }
            Object i4 = com.facebook.common.internal.j.i(ExclusixeEntries.e());
            s(i4, ((j.a) com.facebook.common.internal.j.i(ExclusixeEntries.c(i4))).f12115f, evictionType);
            ExclusixeEntries.l(i4);
            arrayList.add(this.f12041c.l(i4));
        }
    }

    private a0<j.a<K, V>> S(final a0<V> evictableValueDescriptor) {
        return new C0098a(evictableValueDescriptor);
    }

    private synchronized void s(K key, int accessCount, c evictionType) {
        if (evictionType == c.LFU) {
            this.f12048j.a(key, Integer.valueOf(accessCount));
        } else {
            if (this.f12049k.size() == this.f12050l) {
                this.f12049k.remove(0);
            }
            this.f12049k.add(key);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0022, code lost:
        if (o() <= (r3.f12051m.f12157a - r4)) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private synchronized boolean t(V r4) {
        /*
            r3 = this;
            monitor-enter(r3)
            com.facebook.imagepipeline.cache.a0<V> r0 = r3.f12042d     // Catch: java.lang.Throwable -> L28
            int r4 = r0.a(r4)     // Catch: java.lang.Throwable -> L28
            com.facebook.imagepipeline.cache.v r0 = r3.f12051m     // Catch: java.lang.Throwable -> L28
            int r0 = r0.f12161e     // Catch: java.lang.Throwable -> L28
            r1 = 1
            if (r4 > r0) goto L25
            int r0 = r3.v()     // Catch: java.lang.Throwable -> L28
            com.facebook.imagepipeline.cache.v r2 = r3.f12051m     // Catch: java.lang.Throwable -> L28
            int r2 = r2.f12158b     // Catch: java.lang.Throwable -> L28
            int r2 = r2 - r1
            if (r0 > r2) goto L25
            int r0 = r3.o()     // Catch: java.lang.Throwable -> L28
            com.facebook.imagepipeline.cache.v r2 = r3.f12051m     // Catch: java.lang.Throwable -> L28
            int r2 = r2.f12157a     // Catch: java.lang.Throwable -> L28
            int r2 = r2 - r4
            if (r0 > r2) goto L25
            goto L26
        L25:
            r1 = 0
        L26:
            monitor-exit(r3)
            return r1
        L28:
            r4 = move-exception
            monitor-exit(r3)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.imagepipeline.cache.a.t(java.lang.Object):boolean");
    }

    private synchronized void u(j.a<K, V> entry) {
        com.facebook.common.internal.j.i(entry);
        com.facebook.common.internal.j.o(entry.f12112c > 0);
        entry.f12112c--;
    }

    private synchronized void w(j.a<K, V> entry) {
        com.facebook.common.internal.j.i(entry);
        com.facebook.common.internal.j.o(!entry.f12113d);
        entry.f12115f++;
    }

    private synchronized void x(j.a<K, V> entry) {
        com.facebook.common.internal.j.i(entry);
        com.facebook.common.internal.j.o(!entry.f12113d);
        entry.f12112c++;
        w(entry);
    }

    public String Q() {
        return com.facebook.common.internal.i.f("CountingMemoryCache").d("cached_entries_count:", this.f12041c.d()).d("exclusive_entries_count", q()).toString();
    }

    @Override // com.facebook.imagepipeline.cache.u
    public void a(K key) {
        com.facebook.common.internal.j.i(key);
        synchronized (this) {
            j.a<K, V> l10 = this.f12039a.l(key);
            if (l10 == null) {
                l10 = this.f12040b.l(key);
            }
            if (l10 != null) {
                w(l10);
                D(l10);
            }
        }
    }

    @Override // com.facebook.imagepipeline.cache.u
    public synchronized int b() {
        return this.f12041c.h();
    }

    @Override // com.facebook.imagepipeline.cache.u
    @r7.h
    public com.facebook.common.references.a<V> c(final K key, final com.facebook.common.references.a<V> valueRef) {
        return j(key, valueRef, null);
    }

    @Override // com.facebook.imagepipeline.cache.j
    public void clear() {
        ArrayList<j.a<K, V>> a10;
        ArrayList<j.a<K, V>> a11;
        ArrayList<j.a<K, V>> a12;
        synchronized (this) {
            a10 = this.f12039a.a();
            a11 = this.f12040b.a();
            a12 = this.f12041c.a();
            B(a12);
        }
        E(a12);
        G(a10, a11);
        M();
    }

    @Override // com.facebook.imagepipeline.cache.u
    public synchronized boolean contains(K key) {
        return this.f12041c.b(key);
    }

    @Override // com.facebook.imagepipeline.cache.u
    @r7.h
    public V d(K key) {
        return null;
    }

    @Override // com.facebook.imagepipeline.cache.j
    public i e() {
        return this.f12041c;
    }

    @Override // com.facebook.imagepipeline.cache.j
    public synchronized int f() {
        return this.f12039a.h() + this.f12040b.h();
    }

    @Override // com.facebook.imagepipeline.cache.j
    public Map<Bitmap, Object> g() {
        return Collections.emptyMap();
    }

    @Override // com.facebook.imagepipeline.cache.u
    @r7.h
    public com.facebook.common.references.a<V> get(final K key) {
        j.a<K, V> l10;
        j.a<K, V> l11;
        com.facebook.common.references.a<V> aVar;
        com.facebook.common.internal.j.i(key);
        synchronized (this) {
            l10 = this.f12039a.l(key);
            l11 = this.f12040b.l(key);
            j.a<K, V> c10 = this.f12041c.c(key);
            if (c10 != null) {
                aVar = N(c10);
            } else {
                L(key);
                aVar = null;
            }
        }
        J(l10, l11);
        M();
        p();
        return aVar;
    }

    @Override // com.facebook.imagepipeline.cache.u
    public synchronized int getCount() {
        return this.f12041c.d();
    }

    @Override // com.facebook.imagepipeline.cache.j
    public v h() {
        return this.f12051m;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0031 A[Catch: all -> 0x006a, TryCatch #0 {, blocks: (B:4:0x000a, B:10:0x0023, B:12:0x0031, B:14:0x003a, B:16:0x0044, B:18:0x0050, B:19:0x0054, B:20:0x005f), top: B:26:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0044 A[Catch: all -> 0x006a, TryCatch #0 {, blocks: (B:4:0x000a, B:10:0x0023, B:12:0x0031, B:14:0x003a, B:16:0x0044, B:18:0x0050, B:19:0x0054, B:20:0x005f), top: B:26:0x000a }] */
    @Override // com.facebook.imagepipeline.cache.j
    @r7.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.facebook.common.references.a<V> j(final K r7, final com.facebook.common.references.a<V> r8, @r7.h final com.facebook.imagepipeline.cache.j.b<K> r9) {
        /*
            r6 = this;
            com.facebook.common.internal.j.i(r7)
            com.facebook.common.internal.j.i(r8)
            r6.M()
            monitor-enter(r6)
            com.facebook.imagepipeline.cache.i<K, com.facebook.imagepipeline.cache.j$a<K, V>> r0 = r6.f12039a     // Catch: java.lang.Throwable -> L6a
            java.lang.Object r0 = r0.l(r7)     // Catch: java.lang.Throwable -> L6a
            com.facebook.imagepipeline.cache.j$a r0 = (com.facebook.imagepipeline.cache.j.a) r0     // Catch: java.lang.Throwable -> L6a
            com.facebook.imagepipeline.cache.i<K, com.facebook.imagepipeline.cache.j$a<K, V>> r1 = r6.f12040b     // Catch: java.lang.Throwable -> L6a
            java.lang.Object r1 = r1.l(r7)     // Catch: java.lang.Throwable -> L6a
            com.facebook.imagepipeline.cache.j$a r1 = (com.facebook.imagepipeline.cache.j.a) r1     // Catch: java.lang.Throwable -> L6a
            r2 = 0
            if (r0 == 0) goto L22
            if (r1 != 0) goto L20
            goto L22
        L20:
            r3 = 0
            goto L23
        L22:
            r3 = 1
        L23:
            com.facebook.common.internal.j.o(r3)     // Catch: java.lang.Throwable -> L6a
            com.facebook.imagepipeline.cache.i<K, com.facebook.imagepipeline.cache.j$a<K, V>> r3 = r6.f12041c     // Catch: java.lang.Throwable -> L6a
            java.lang.Object r3 = r3.l(r7)     // Catch: java.lang.Throwable -> L6a
            com.facebook.imagepipeline.cache.j$a r3 = (com.facebook.imagepipeline.cache.j.a) r3     // Catch: java.lang.Throwable -> L6a
            r4 = 0
            if (r3 == 0) goto L39
            r6.A(r3)     // Catch: java.lang.Throwable -> L6a
            com.facebook.common.references.a r3 = r6.O(r3)     // Catch: java.lang.Throwable -> L6a
            goto L3a
        L39:
            r3 = r4
        L3a:
            java.lang.Object r5 = r8.q()     // Catch: java.lang.Throwable -> L6a
            boolean r5 = r6.t(r5)     // Catch: java.lang.Throwable -> L6a
            if (r5 == 0) goto L5f
            com.facebook.imagepipeline.cache.j$a r8 = com.facebook.imagepipeline.cache.j.a.b(r7, r8, r9)     // Catch: java.lang.Throwable -> L6a
            com.facebook.imagepipeline.cache.a<K, V>$d<K> r9 = r6.f12048j     // Catch: java.lang.Throwable -> L6a
            java.lang.Integer r9 = r9.c(r7)     // Catch: java.lang.Throwable -> L6a
            if (r9 == 0) goto L54
            int r2 = r9.intValue()     // Catch: java.lang.Throwable -> L6a
        L54:
            r8.f12115f = r2     // Catch: java.lang.Throwable -> L6a
            com.facebook.imagepipeline.cache.i<K, com.facebook.imagepipeline.cache.j$a<K, V>> r9 = r6.f12041c     // Catch: java.lang.Throwable -> L6a
            r9.k(r7, r8)     // Catch: java.lang.Throwable -> L6a
            com.facebook.common.references.a r4 = r6.N(r8)     // Catch: java.lang.Throwable -> L6a
        L5f:
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L6a
            com.facebook.common.references.a.k(r3)
            r6.J(r0, r1)
            r6.p()
            return r4
        L6a:
            r7 = move-exception
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L6a
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.imagepipeline.cache.a.j(java.lang.Object, com.facebook.common.references.a, com.facebook.imagepipeline.cache.j$b):com.facebook.common.references.a");
    }

    @Override // com.facebook.imagepipeline.cache.u
    public int k(com.facebook.common.internal.k<K> predicate) {
        ArrayList<j.a<K, V>> m9;
        ArrayList<j.a<K, V>> m10;
        ArrayList<j.a<K, V>> m11;
        synchronized (this) {
            m9 = this.f12039a.m(predicate);
            m10 = this.f12040b.m(predicate);
            m11 = this.f12041c.m(predicate);
            B(m11);
        }
        E(m11);
        G(m9, m10);
        M();
        p();
        return m11.size();
    }

    @Override // com.facebook.imagepipeline.cache.u
    public synchronized boolean l(com.facebook.common.internal.k<K> predicate) {
        return !this.f12041c.g(predicate).isEmpty();
    }

    @Override // com.facebook.common.memory.b
    public void m(MemoryTrimType trimType) {
        ArrayList<j.a<K, V>> R;
        ArrayList<j.a<K, V>> R2;
        double a10 = this.f12043e.a(trimType);
        synchronized (this) {
            int h4 = ((int) (this.f12041c.h() * (1.0d - a10))) - o();
            int i4 = 0;
            int max = Math.max(0, h4);
            int h10 = this.f12040b.h();
            int max2 = Math.max(0, max - h10);
            if (max > h10) {
                max = h10;
                i4 = max2;
            }
            R = R(Integer.MAX_VALUE, i4, this.f12039a, c.LFU);
            R2 = R(Integer.MAX_VALUE, max, this.f12040b, c.MFU);
            C(R, R2);
        }
        F(R, R2);
        G(R, R2);
        M();
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
            l10 = this.f12039a.l(key);
            if (l10 == null) {
                l10 = this.f12040b.l(key);
            }
            z9 = true;
            if (l10 != null) {
                j.a<K, V> l11 = this.f12041c.l(key);
                com.facebook.common.internal.j.i(l11);
                com.facebook.common.internal.j.o(l11.f12112c == 0);
                aVar = l11.f12111b;
            } else {
                aVar = null;
                z9 = false;
            }
        }
        if (z9) {
            I(l10);
        }
        return aVar;
    }

    @Override // com.facebook.imagepipeline.cache.j
    public synchronized int o() {
        return (this.f12041c.h() - this.f12039a.h()) - this.f12040b.h();
    }

    @Override // com.facebook.imagepipeline.cache.j
    public void p() {
        ArrayList<j.a<K, V>> R;
        ArrayList<j.a<K, V>> R2;
        synchronized (this) {
            v vVar = this.f12051m;
            int min = Math.min(vVar.f12160d, vVar.f12158b - v());
            v vVar2 = this.f12051m;
            int min2 = Math.min(vVar2.f12159c, vVar2.f12157a - o());
            int i4 = this.f12045g;
            int i10 = (int) ((min * i4) / 1000);
            int i11 = (int) ((min2 * i4) / 1000);
            R = R(i10, i11, this.f12039a, c.LFU);
            R2 = R(min - i10, min2 - i11, this.f12040b, c.MFU);
            C(R, R2);
        }
        F(R, R2);
        G(R, R2);
    }

    @Override // com.facebook.imagepipeline.cache.j
    public synchronized int q() {
        return this.f12039a.d() + this.f12040b.d();
    }

    public synchronized int v() {
        return (this.f12041c.d() - this.f12039a.d()) - this.f12040b.d();
    }

    protected abstract void y();

    protected abstract void z();
}
