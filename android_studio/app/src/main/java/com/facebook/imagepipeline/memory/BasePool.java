package com.facebook.imagepipeline.memory;

import android.annotation.SuppressLint;
import android.util.SparseArray;
import android.util.SparseIntArray;
import androidx.annotation.VisibleForTesting;
import com.facebook.common.memory.MemoryTrimType;
import com.facebook.infer.annotation.Nullsafe;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public abstract class BasePool<V> implements com.facebook.common.memory.e<V> {

    /* renamed from: a  reason: collision with root package name */
    private final Class<?> f12531a;

    /* renamed from: b  reason: collision with root package name */
    final com.facebook.common.memory.c f12532b;

    /* renamed from: c  reason: collision with root package name */
    final f0 f12533c;
    @VisibleForTesting

    /* renamed from: d  reason: collision with root package name */
    final SparseArray<h<V>> f12534d;
    @VisibleForTesting

    /* renamed from: e  reason: collision with root package name */
    final Set<V> f12535e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f12536f;
    @VisibleForTesting
    @s7.a("this")

    /* renamed from: g  reason: collision with root package name */
    final a f12537g;
    @VisibleForTesting
    @s7.a("this")

    /* renamed from: h  reason: collision with root package name */
    final a f12538h;

    /* renamed from: i  reason: collision with root package name */
    private final g0 f12539i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f12540j;

    /* loaded from: classes.dex */
    public static class InvalidSizeException extends RuntimeException {
        public InvalidSizeException(Object size) {
            super("Invalid size: " + size.toString());
        }
    }

    /* loaded from: classes.dex */
    public static class InvalidValueException extends RuntimeException {
        public InvalidValueException(Object value) {
            super("Invalid value: " + value.toString());
        }
    }

    /* loaded from: classes.dex */
    public static class PoolSizeViolationException extends RuntimeException {
        public PoolSizeViolationException(int hardCap, int usedBytes, int freeBytes, int allocSize) {
            super("Pool hard cap violation? Hard cap = " + hardCap + " Used size = " + usedBytes + " Free size = " + freeBytes + " Request size = " + allocSize);
        }
    }

    /* loaded from: classes.dex */
    public static class SizeTooLargeException extends InvalidSizeException {
        public SizeTooLargeException(Object size) {
            super(size);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @s7.c
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: c  reason: collision with root package name */
        private static final String f12541c = "com.facebook.imagepipeline.memory.BasePool.Counter";

        /* renamed from: a  reason: collision with root package name */
        int f12542a;

        /* renamed from: b  reason: collision with root package name */
        int f12543b;

        a() {
        }

        public void a(int numBytes) {
            int i4;
            int i10 = this.f12543b;
            if (i10 >= numBytes && (i4 = this.f12542a) > 0) {
                this.f12542a = i4 - 1;
                this.f12543b = i10 - numBytes;
                return;
            }
            p0.a.y0(f12541c, "Unexpected decrement of %d. Current numBytes = %d, count = %d", Integer.valueOf(numBytes), Integer.valueOf(this.f12543b), Integer.valueOf(this.f12542a));
        }

        public void b(int numBytes) {
            this.f12542a++;
            this.f12543b += numBytes;
        }

        public void c() {
            this.f12542a = 0;
            this.f12543b = 0;
        }
    }

    public BasePool(com.facebook.common.memory.c memoryTrimmableRegistry, f0 poolParams, g0 poolStatsTracker) {
        this.f12531a = getClass();
        this.f12532b = (com.facebook.common.memory.c) com.facebook.common.internal.j.i(memoryTrimmableRegistry);
        f0 f0Var = (f0) com.facebook.common.internal.j.i(poolParams);
        this.f12533c = f0Var;
        this.f12539i = (g0) com.facebook.common.internal.j.i(poolStatsTracker);
        this.f12534d = new SparseArray<>();
        if (f0Var.f12615f) {
            C();
        } else {
            G(new SparseIntArray(0));
        }
        this.f12535e = com.facebook.common.internal.l.g();
        this.f12538h = new a();
        this.f12537g = new a();
    }

    private synchronized void C() {
        SparseIntArray sparseIntArray = this.f12533c.f12612c;
        if (sparseIntArray != null) {
            t(sparseIntArray);
            this.f12536f = false;
        } else {
            this.f12536f = true;
        }
    }

    private synchronized void G(SparseIntArray inUseCounts) {
        com.facebook.common.internal.j.i(inUseCounts);
        this.f12534d.clear();
        SparseIntArray sparseIntArray = this.f12533c.f12612c;
        if (sparseIntArray != null) {
            for (int i4 = 0; i4 < sparseIntArray.size(); i4++) {
                int keyAt = sparseIntArray.keyAt(i4);
                this.f12534d.put(keyAt, new h<>(z(keyAt), sparseIntArray.valueAt(i4), inUseCounts.get(keyAt, 0), this.f12533c.f12615f));
            }
            this.f12536f = false;
        } else {
            this.f12536f = true;
        }
    }

    @SuppressLint({"InvalidAccessToGuardedField"})
    private void H() {
        if (p0.a.R(2)) {
            p0.a.Y(this.f12531a, "Used = (%d, %d); Free = (%d, %d)", Integer.valueOf(this.f12537g.f12542a), Integer.valueOf(this.f12537g.f12543b), Integer.valueOf(this.f12538h.f12542a), Integer.valueOf(this.f12538h.f12543b));
        }
    }

    private List<h<V>> K() {
        ArrayList arrayList = new ArrayList(this.f12534d.size());
        int size = this.f12534d.size();
        for (int i4 = 0; i4 < size; i4++) {
            h hVar = (h) com.facebook.common.internal.j.i(this.f12534d.valueAt(i4));
            int i10 = hVar.f12630a;
            int i11 = hVar.f12631b;
            int e4 = hVar.e();
            if (hVar.d() > 0) {
                arrayList.add(hVar);
            }
            this.f12534d.setValueAt(i4, new h<>(z(i10), i11, e4, this.f12533c.f12615f));
        }
        return arrayList;
    }

    private synchronized void s() {
        boolean z9;
        if (E() && this.f12538h.f12543b != 0) {
            z9 = false;
            com.facebook.common.internal.j.o(z9);
        }
        z9 = true;
        com.facebook.common.internal.j.o(z9);
    }

    private void t(SparseIntArray bucketSizes) {
        this.f12534d.clear();
        for (int i4 = 0; i4 < bucketSizes.size(); i4++) {
            int keyAt = bucketSizes.keyAt(i4);
            this.f12534d.put(keyAt, new h<>(z(keyAt), bucketSizes.valueAt(i4), 0, this.f12533c.f12615f));
        }
    }

    @r7.h
    private synchronized h<V> w(int bucketedSize) {
        return this.f12534d.get(bucketedSize);
    }

    public synchronized Map<String, Integer> A() {
        HashMap hashMap;
        hashMap = new HashMap();
        for (int i4 = 0; i4 < this.f12534d.size(); i4++) {
            int keyAt = this.f12534d.keyAt(i4);
            hashMap.put(g0.f12622a + z(keyAt), Integer.valueOf(((h) com.facebook.common.internal.j.i(this.f12534d.valueAt(i4))).e()));
        }
        hashMap.put(g0.f12627f, Integer.valueOf(this.f12533c.f12611b));
        hashMap.put(g0.f12628g, Integer.valueOf(this.f12533c.f12610a));
        hashMap.put(g0.f12623b, Integer.valueOf(this.f12537g.f12542a));
        hashMap.put(g0.f12624c, Integer.valueOf(this.f12537g.f12543b));
        hashMap.put(g0.f12625d, Integer.valueOf(this.f12538h.f12542a));
        hashMap.put(g0.f12626e, Integer.valueOf(this.f12538h.f12543b));
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @r7.h
    public synchronized V B(h<V> bucket) {
        return bucket.c();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void D() {
        this.f12532b.a(this);
        this.f12539i.f(this);
    }

    @VisibleForTesting
    synchronized boolean E() {
        boolean z9;
        z9 = this.f12537g.f12543b + this.f12538h.f12543b > this.f12533c.f12611b;
        if (z9) {
            this.f12539i.a();
        }
        return z9;
    }

    protected boolean F(V value) {
        com.facebook.common.internal.j.i(value);
        return true;
    }

    h<V> I(int bucketedSize) {
        return new h<>(z(bucketedSize), Integer.MAX_VALUE, 0, this.f12533c.f12615f);
    }

    protected void J() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @VisibleForTesting
    void L() {
        int i4;
        List arrayList;
        synchronized (this) {
            if (this.f12533c.f12615f) {
                arrayList = K();
            } else {
                arrayList = new ArrayList(this.f12534d.size());
                SparseIntArray sparseIntArray = new SparseIntArray();
                for (int i10 = 0; i10 < this.f12534d.size(); i10++) {
                    h hVar = (h) com.facebook.common.internal.j.i(this.f12534d.valueAt(i10));
                    if (hVar.d() > 0) {
                        arrayList.add(hVar);
                    }
                    sparseIntArray.put(this.f12534d.keyAt(i10), hVar.e());
                }
                G(sparseIntArray);
            }
            this.f12538h.c();
            H();
        }
        J();
        for (i4 = 0; i4 < arrayList.size(); i4++) {
            h hVar2 = (h) arrayList.get(i4);
            while (true) {
                Object h4 = hVar2.h();
                if (h4 == null) {
                    break;
                }
                u(h4);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @VisibleForTesting
    synchronized void M(int targetSize) {
        int i4 = this.f12537g.f12543b;
        int i10 = this.f12538h.f12543b;
        int min = Math.min((i4 + i10) - targetSize, i10);
        if (min <= 0) {
            return;
        }
        if (p0.a.R(2)) {
            p0.a.X(this.f12531a, "trimToSize: TargetSize = %d; Initial Size = %d; Bytes to free = %d", Integer.valueOf(targetSize), Integer.valueOf(this.f12537g.f12543b + this.f12538h.f12543b), Integer.valueOf(min));
        }
        H();
        for (int i11 = 0; i11 < this.f12534d.size() && min > 0; i11++) {
            h hVar = (h) com.facebook.common.internal.j.i(this.f12534d.valueAt(i11));
            while (min > 0) {
                Object h4 = hVar.h();
                if (h4 == null) {
                    break;
                }
                u(h4);
                int i12 = hVar.f12630a;
                min -= i12;
                this.f12538h.a(i12);
            }
        }
        H();
        if (p0.a.R(2)) {
            p0.a.W(this.f12531a, "trimToSize: TargetSize = %d; Final Size = %d", Integer.valueOf(targetSize), Integer.valueOf(this.f12537g.f12543b + this.f12538h.f12543b));
        }
    }

    @VisibleForTesting
    synchronized void N() {
        if (E()) {
            M(this.f12533c.f12611b);
        }
    }

    @Override // com.facebook.common.memory.e
    public V get(int size) {
        V B;
        s();
        int x9 = x(size);
        synchronized (this) {
            h<V> v9 = v(x9);
            if (v9 != null && (B = B(v9)) != null) {
                com.facebook.common.internal.j.o(this.f12535e.add(B));
                int y9 = y(B);
                int z9 = z(y9);
                this.f12537g.b(z9);
                this.f12538h.a(z9);
                this.f12539i.e(z9);
                H();
                if (p0.a.R(2)) {
                    p0.a.W(this.f12531a, "get (reuse) (object, size) = (%x, %s)", Integer.valueOf(System.identityHashCode(B)), Integer.valueOf(y9));
                }
                return B;
            }
            int z10 = z(x9);
            if (r(z10)) {
                this.f12537g.b(z10);
                if (v9 != null) {
                    v9.f();
                }
                V v10 = null;
                try {
                    v10 = i(x9);
                } catch (Throwable th) {
                    synchronized (this) {
                        this.f12537g.a(z10);
                        h<V> v11 = v(x9);
                        if (v11 != null) {
                            v11.b();
                        }
                        com.facebook.common.internal.o.f(th);
                    }
                }
                synchronized (this) {
                    com.facebook.common.internal.j.o(this.f12535e.add(v10));
                    N();
                    this.f12539i.d(z10);
                    H();
                    if (p0.a.R(2)) {
                        p0.a.W(this.f12531a, "get (alloc) (object, size) = (%x, %s)", Integer.valueOf(System.identityHashCode(v10)), Integer.valueOf(x9));
                    }
                }
                return v10;
            }
            throw new PoolSizeViolationException(this.f12533c.f12610a, this.f12537g.f12543b, this.f12538h.f12543b, z10);
        }
    }

    protected abstract V i(int bucketedSize);

    @Override // com.facebook.common.memory.b
    public void m(MemoryTrimType memoryTrimType) {
        L();
    }

    @VisibleForTesting
    synchronized boolean r(int sizeInBytes) {
        if (this.f12540j) {
            return true;
        }
        f0 f0Var = this.f12533c;
        int i4 = f0Var.f12610a;
        int i10 = this.f12537g.f12543b;
        if (sizeInBytes > i4 - i10) {
            this.f12539i.g();
            return false;
        }
        int i11 = f0Var.f12611b;
        if (sizeInBytes > i11 - (i10 + this.f12538h.f12543b)) {
            M(i11 - sizeInBytes);
        }
        if (sizeInBytes > i4 - (this.f12537g.f12543b + this.f12538h.f12543b)) {
            this.f12539i.g();
            return false;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0080, code lost:
        r2.b();
     */
    @Override // com.facebook.common.memory.e, com.facebook.common.references.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void release(V r8) {
        /*
            r7 = this;
            com.facebook.common.internal.j.i(r8)
            int r0 = r7.y(r8)
            int r1 = r7.z(r0)
            monitor-enter(r7)
            com.facebook.imagepipeline.memory.h r2 = r7.w(r0)     // Catch: java.lang.Throwable -> Lae
            java.util.Set<V> r3 = r7.f12535e     // Catch: java.lang.Throwable -> Lae
            boolean r3 = r3.remove(r8)     // Catch: java.lang.Throwable -> Lae
            r4 = 2
            if (r3 != 0) goto L3d
            java.lang.Class<?> r2 = r7.f12531a     // Catch: java.lang.Throwable -> Lae
            java.lang.String r3 = "release (free, value unrecognized) (object, size) = (%x, %s)"
            java.lang.Object[] r4 = new java.lang.Object[r4]     // Catch: java.lang.Throwable -> Lae
            r5 = 0
            int r6 = java.lang.System.identityHashCode(r8)     // Catch: java.lang.Throwable -> Lae
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)     // Catch: java.lang.Throwable -> Lae
            r4[r5] = r6     // Catch: java.lang.Throwable -> Lae
            r5 = 1
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)     // Catch: java.lang.Throwable -> Lae
            r4[r5] = r0     // Catch: java.lang.Throwable -> Lae
            p0.a.s(r2, r3, r4)     // Catch: java.lang.Throwable -> Lae
            r7.u(r8)     // Catch: java.lang.Throwable -> Lae
            com.facebook.imagepipeline.memory.g0 r8 = r7.f12539i     // Catch: java.lang.Throwable -> Lae
            r8.b(r1)     // Catch: java.lang.Throwable -> Lae
            goto La9
        L3d:
            if (r2 == 0) goto L7e
            boolean r3 = r2.g()     // Catch: java.lang.Throwable -> Lae
            if (r3 != 0) goto L7e
            boolean r3 = r7.E()     // Catch: java.lang.Throwable -> Lae
            if (r3 != 0) goto L7e
            boolean r3 = r7.F(r8)     // Catch: java.lang.Throwable -> Lae
            if (r3 != 0) goto L52
            goto L7e
        L52:
            r2.i(r8)     // Catch: java.lang.Throwable -> Lae
            com.facebook.imagepipeline.memory.BasePool$a r2 = r7.f12538h     // Catch: java.lang.Throwable -> Lae
            r2.b(r1)     // Catch: java.lang.Throwable -> Lae
            com.facebook.imagepipeline.memory.BasePool$a r2 = r7.f12537g     // Catch: java.lang.Throwable -> Lae
            r2.a(r1)     // Catch: java.lang.Throwable -> Lae
            com.facebook.imagepipeline.memory.g0 r2 = r7.f12539i     // Catch: java.lang.Throwable -> Lae
            r2.c(r1)     // Catch: java.lang.Throwable -> Lae
            boolean r1 = p0.a.R(r4)     // Catch: java.lang.Throwable -> Lae
            if (r1 == 0) goto La9
            java.lang.Class<?> r1 = r7.f12531a     // Catch: java.lang.Throwable -> Lae
            java.lang.String r2 = "release (reuse) (object, size) = (%x, %s)"
            int r8 = java.lang.System.identityHashCode(r8)     // Catch: java.lang.Throwable -> Lae
            java.lang.Integer r8 = java.lang.Integer.valueOf(r8)     // Catch: java.lang.Throwable -> Lae
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)     // Catch: java.lang.Throwable -> Lae
            p0.a.W(r1, r2, r8, r0)     // Catch: java.lang.Throwable -> Lae
            goto La9
        L7e:
            if (r2 == 0) goto L83
            r2.b()     // Catch: java.lang.Throwable -> Lae
        L83:
            boolean r2 = p0.a.R(r4)     // Catch: java.lang.Throwable -> Lae
            if (r2 == 0) goto L9c
            java.lang.Class<?> r2 = r7.f12531a     // Catch: java.lang.Throwable -> Lae
            java.lang.String r3 = "release (free) (object, size) = (%x, %s)"
            int r4 = java.lang.System.identityHashCode(r8)     // Catch: java.lang.Throwable -> Lae
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)     // Catch: java.lang.Throwable -> Lae
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)     // Catch: java.lang.Throwable -> Lae
            p0.a.W(r2, r3, r4, r0)     // Catch: java.lang.Throwable -> Lae
        L9c:
            r7.u(r8)     // Catch: java.lang.Throwable -> Lae
            com.facebook.imagepipeline.memory.BasePool$a r8 = r7.f12537g     // Catch: java.lang.Throwable -> Lae
            r8.a(r1)     // Catch: java.lang.Throwable -> Lae
            com.facebook.imagepipeline.memory.g0 r8 = r7.f12539i     // Catch: java.lang.Throwable -> Lae
            r8.b(r1)     // Catch: java.lang.Throwable -> Lae
        La9:
            r7.H()     // Catch: java.lang.Throwable -> Lae
            monitor-exit(r7)     // Catch: java.lang.Throwable -> Lae
            return
        Lae:
            r8 = move-exception
            monitor-exit(r7)     // Catch: java.lang.Throwable -> Lae
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.imagepipeline.memory.BasePool.release(java.lang.Object):void");
    }

    @VisibleForTesting
    protected abstract void u(V value);

    @r7.h
    @VisibleForTesting
    synchronized h<V> v(int bucketedSize) {
        h<V> hVar = this.f12534d.get(bucketedSize);
        if (hVar == null && this.f12536f) {
            if (p0.a.R(2)) {
                p0.a.V(this.f12531a, "creating new bucket %s", Integer.valueOf(bucketedSize));
            }
            h<V> I = I(bucketedSize);
            this.f12534d.put(bucketedSize, I);
            return I;
        }
        return hVar;
    }

    protected abstract int x(int requestSize);

    protected abstract int y(V value);

    protected abstract int z(int bucketedSize);

    public BasePool(com.facebook.common.memory.c memoryTrimmableRegistry, f0 poolParams, g0 poolStatsTracker, boolean ignoreHardCap) {
        this(memoryTrimmableRegistry, poolParams, poolStatsTracker);
        this.f12540j = ignoreHardCap;
    }
}
