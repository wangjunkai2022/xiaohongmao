package com.koushikdutta.async.util;

import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes3.dex */
public class LruCache<K, V> {

    /* renamed from: a  reason: collision with root package name */
    private final LinkedHashMap<K, V> f45165a;

    /* renamed from: b  reason: collision with root package name */
    private long f45166b;

    /* renamed from: c  reason: collision with root package name */
    private long f45167c;

    /* renamed from: d  reason: collision with root package name */
    private int f45168d;

    /* renamed from: e  reason: collision with root package name */
    private int f45169e;

    /* renamed from: f  reason: collision with root package name */
    private int f45170f;

    /* renamed from: g  reason: collision with root package name */
    private int f45171g;

    /* renamed from: h  reason: collision with root package name */
    private int f45172h;

    public LruCache(long j4) {
        if (j4 > 0) {
            this.f45167c = j4;
            this.f45165a = new LinkedHashMap<>(0, 0.75f, true);
            return;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    private long m(K k10, V v9) {
        long p9 = p(k10, v9);
        if (p9 >= 0) {
            return p9;
        }
        throw new IllegalStateException("Negative size: " + k10 + "=" + v9);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0078, code lost:
        throw new java.lang.IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void r(long r7) {
        /*
            r6 = this;
        L0:
            monitor-enter(r6)
            long r0 = r6.f45166b     // Catch: java.lang.Throwable -> L79
            r2 = 0
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 < 0) goto L5a
            java.util.LinkedHashMap<K, V> r0 = r6.f45165a     // Catch: java.lang.Throwable -> L79
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L79
            if (r0 == 0) goto L17
            long r0 = r6.f45166b     // Catch: java.lang.Throwable -> L79
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 != 0) goto L5a
        L17:
            long r0 = r6.f45166b     // Catch: java.lang.Throwable -> L79
            int r2 = (r0 > r7 ? 1 : (r0 == r7 ? 0 : -1))
            if (r2 <= 0) goto L58
            java.util.LinkedHashMap<K, V> r0 = r6.f45165a     // Catch: java.lang.Throwable -> L79
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L79
            if (r0 == 0) goto L26
            goto L58
        L26:
            java.util.LinkedHashMap<K, V> r0 = r6.f45165a     // Catch: java.lang.Throwable -> L79
            java.util.Set r0 = r0.entrySet()     // Catch: java.lang.Throwable -> L79
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> L79
            java.lang.Object r0 = r0.next()     // Catch: java.lang.Throwable -> L79
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0     // Catch: java.lang.Throwable -> L79
            java.lang.Object r1 = r0.getKey()     // Catch: java.lang.Throwable -> L79
            java.lang.Object r0 = r0.getValue()     // Catch: java.lang.Throwable -> L79
            java.util.LinkedHashMap<K, V> r2 = r6.f45165a     // Catch: java.lang.Throwable -> L79
            r2.remove(r1)     // Catch: java.lang.Throwable -> L79
            long r2 = r6.f45166b     // Catch: java.lang.Throwable -> L79
            long r4 = r6.m(r1, r0)     // Catch: java.lang.Throwable -> L79
            long r2 = r2 - r4
            r6.f45166b = r2     // Catch: java.lang.Throwable -> L79
            int r2 = r6.f45170f     // Catch: java.lang.Throwable -> L79
            r3 = 1
            int r2 = r2 + r3
            r6.f45170f = r2     // Catch: java.lang.Throwable -> L79
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L79
            r2 = 0
            r6.c(r3, r1, r0, r2)
            goto L0
        L58:
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L79
            return
        L5a:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L79
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L79
            r8.<init>()     // Catch: java.lang.Throwable -> L79
            java.lang.Class r0 = r6.getClass()     // Catch: java.lang.Throwable -> L79
            java.lang.String r0 = r0.getName()     // Catch: java.lang.Throwable -> L79
            r8.append(r0)     // Catch: java.lang.Throwable -> L79
            java.lang.String r0 = ".sizeOf() is reporting inconsistent results!"
            r8.append(r0)     // Catch: java.lang.Throwable -> L79
            java.lang.String r8 = r8.toString()     // Catch: java.lang.Throwable -> L79
            r7.<init>(r8)     // Catch: java.lang.Throwable -> L79
            throw r7     // Catch: java.lang.Throwable -> L79
        L79:
            r7 = move-exception
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L79
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.koushikdutta.async.util.LruCache.r(long):void");
    }

    protected V a(K k10) {
        return null;
    }

    public final synchronized int b() {
        return this.f45169e;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void c(boolean z9, K k10, V v9, V v10) {
    }

    public final void d() {
        r(-1L);
    }

    public final synchronized int e() {
        return this.f45170f;
    }

    public final V f(K k10) {
        V put;
        Objects.requireNonNull(k10, "key == null");
        synchronized (this) {
            V v9 = this.f45165a.get(k10);
            if (v9 != null) {
                this.f45171g++;
                return v9;
            }
            this.f45172h++;
            V a10 = a(k10);
            if (a10 == null) {
                return null;
            }
            synchronized (this) {
                this.f45169e++;
                put = this.f45165a.put(k10, a10);
                if (put != null) {
                    this.f45165a.put(k10, put);
                } else {
                    this.f45166b += m(k10, a10);
                }
            }
            if (put != null) {
                c(false, k10, a10, put);
                return put;
            }
            r(this.f45167c);
            return a10;
        }
    }

    public final synchronized int g() {
        return this.f45171g;
    }

    public final synchronized long h() {
        return this.f45167c;
    }

    public final synchronized int i() {
        return this.f45172h;
    }

    public final V j(K k10, V v9) {
        V put;
        if (k10 != null && v9 != null) {
            synchronized (this) {
                this.f45168d++;
                this.f45166b += m(k10, v9);
                put = this.f45165a.put(k10, v9);
                if (put != null) {
                    this.f45166b -= m(k10, put);
                }
            }
            if (put != null) {
                c(false, k10, put, v9);
            }
            r(this.f45167c);
            return put;
        }
        throw new NullPointerException("key == null || value == null");
    }

    public final synchronized int k() {
        return this.f45168d;
    }

    public final V l(K k10) {
        V remove;
        Objects.requireNonNull(k10, "key == null");
        synchronized (this) {
            remove = this.f45165a.remove(k10);
            if (remove != null) {
                this.f45166b -= m(k10, remove);
            }
        }
        if (remove != null) {
            c(false, k10, remove, null);
        }
        return remove;
    }

    public void n(long j4) {
        this.f45167c = j4;
    }

    public final synchronized long o() {
        return this.f45166b;
    }

    protected long p(K k10, V v9) {
        return 1L;
    }

    public final synchronized Map<K, V> q() {
        return new LinkedHashMap(this.f45165a);
    }

    public final synchronized String toString() {
        int i4;
        int i10;
        i4 = this.f45171g;
        i10 = this.f45172h + i4;
        return String.format(Locale.ENGLISH, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", Long.valueOf(this.f45167c), Integer.valueOf(this.f45171g), Integer.valueOf(this.f45172h), Integer.valueOf(i10 != 0 ? (i4 * 100) / i10 : 0));
    }
}
