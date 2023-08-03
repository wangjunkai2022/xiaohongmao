package com.google.common.util.concurrent;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.d3;
import com.google.common.collect.w2;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* compiled from: Striped.java */
@h3.c
@h3.a
/* loaded from: classes2.dex */
public abstract class h1<L> {

    /* renamed from: a  reason: collision with root package name */
    private static final int f35172a = 1024;

    /* renamed from: b  reason: collision with root package name */
    private static final com.google.common.base.i0<ReadWriteLock> f35173b = new e();

    /* renamed from: c  reason: collision with root package name */
    private static final com.google.common.base.i0<ReadWriteLock> f35174c = new f();

    /* renamed from: d  reason: collision with root package name */
    private static final int f35175d = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Striped.java */
    /* loaded from: classes2.dex */
    public static class a implements com.google.common.base.i0<Lock> {
        a() {
        }

        @Override // com.google.common.base.i0
        /* renamed from: a */
        public Lock get() {
            return new i();
        }
    }

    /* compiled from: Striped.java */
    /* loaded from: classes2.dex */
    static class b implements com.google.common.base.i0<Lock> {
        b() {
        }

        @Override // com.google.common.base.i0
        /* renamed from: a */
        public Lock get() {
            return new ReentrantLock(false);
        }
    }

    /* compiled from: Striped.java */
    /* loaded from: classes2.dex */
    static class c implements com.google.common.base.i0<Semaphore> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f35176a;

        c(int i4) {
            this.f35176a = i4;
        }

        @Override // com.google.common.base.i0
        /* renamed from: a */
        public Semaphore get() {
            return new j(this.f35176a);
        }
    }

    /* compiled from: Striped.java */
    /* loaded from: classes2.dex */
    static class d implements com.google.common.base.i0<Semaphore> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f35177a;

        d(int i4) {
            this.f35177a = i4;
        }

        @Override // com.google.common.base.i0
        /* renamed from: a */
        public Semaphore get() {
            return new Semaphore(this.f35177a, false);
        }
    }

    /* compiled from: Striped.java */
    /* loaded from: classes2.dex */
    static class e implements com.google.common.base.i0<ReadWriteLock> {
        e() {
        }

        @Override // com.google.common.base.i0
        /* renamed from: a */
        public ReadWriteLock get() {
            return new ReentrantReadWriteLock();
        }
    }

    /* compiled from: Striped.java */
    /* loaded from: classes2.dex */
    static class f implements com.google.common.base.i0<ReadWriteLock> {
        f() {
        }

        @Override // com.google.common.base.i0
        /* renamed from: a */
        public ReadWriteLock get() {
            return new o();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Striped.java */
    /* loaded from: classes2.dex */
    public static class g<L> extends k<L> {

        /* renamed from: f  reason: collision with root package name */
        private final Object[] f35178f;

        /* synthetic */ g(int i4, com.google.common.base.i0 i0Var, a aVar) {
            this(i4, i0Var);
        }

        @Override // com.google.common.util.concurrent.h1
        public L g(int i4) {
            return (L) this.f35178f[i4];
        }

        @Override // com.google.common.util.concurrent.h1
        public int p() {
            return this.f35178f.length;
        }

        private g(int i4, com.google.common.base.i0<L> i0Var) {
            super(i4);
            int i10 = 0;
            com.google.common.base.a0.e(i4 <= 1073741824, "Stripes must be <= 2^30)");
            this.f35178f = new Object[this.f35188e + 1];
            while (true) {
                Object[] objArr = this.f35178f;
                if (i10 >= objArr.length) {
                    return;
                }
                objArr[i10] = i0Var.get();
                i10++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Striped.java */
    @h3.d
    /* loaded from: classes2.dex */
    public static class h<L> extends k<L> {

        /* renamed from: f  reason: collision with root package name */
        final ConcurrentMap<Integer, L> f35179f;

        /* renamed from: g  reason: collision with root package name */
        final com.google.common.base.i0<L> f35180g;

        /* renamed from: h  reason: collision with root package name */
        final int f35181h;

        h(int i4, com.google.common.base.i0<L> i0Var) {
            super(i4);
            int i10 = this.f35188e;
            this.f35181h = i10 == -1 ? Integer.MAX_VALUE : i10 + 1;
            this.f35180g = i0Var;
            this.f35179f = new d3().m().i();
        }

        @Override // com.google.common.util.concurrent.h1
        public L g(int i4) {
            if (this.f35181h != Integer.MAX_VALUE) {
                com.google.common.base.a0.C(i4, p());
            }
            L l10 = this.f35179f.get(Integer.valueOf(i4));
            if (l10 != null) {
                return l10;
            }
            L l11 = this.f35180g.get();
            return (L) com.google.common.base.v.a(this.f35179f.putIfAbsent(Integer.valueOf(i4), l11), l11);
        }

        @Override // com.google.common.util.concurrent.h1
        public int p() {
            return this.f35181h;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Striped.java */
    /* loaded from: classes2.dex */
    public static class i extends ReentrantLock {

        /* renamed from: a  reason: collision with root package name */
        long f35182a;

        /* renamed from: b  reason: collision with root package name */
        long f35183b;

        /* renamed from: c  reason: collision with root package name */
        long f35184c;

        i() {
            super(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Striped.java */
    /* loaded from: classes2.dex */
    public static class j extends Semaphore {

        /* renamed from: a  reason: collision with root package name */
        long f35185a;

        /* renamed from: b  reason: collision with root package name */
        long f35186b;

        /* renamed from: c  reason: collision with root package name */
        long f35187c;

        j(int i4) {
            super(i4, false);
        }
    }

    /* compiled from: Striped.java */
    /* loaded from: classes2.dex */
    private static abstract class k<L> extends h1<L> {

        /* renamed from: e  reason: collision with root package name */
        final int f35188e;

        k(int i4) {
            super(null);
            com.google.common.base.a0.e(i4 > 0, "Stripes must be positive");
            this.f35188e = i4 > 1073741824 ? -1 : h1.d(i4) - 1;
        }

        @Override // com.google.common.util.concurrent.h1
        public final L f(Object obj) {
            return g(h(obj));
        }

        @Override // com.google.common.util.concurrent.h1
        final int h(Object obj) {
            return h1.q(obj.hashCode()) & this.f35188e;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Striped.java */
    @h3.d
    /* loaded from: classes2.dex */
    public static class l<L> extends k<L> {

        /* renamed from: f  reason: collision with root package name */
        final AtomicReferenceArray<a<? extends L>> f35189f;

        /* renamed from: g  reason: collision with root package name */
        final com.google.common.base.i0<L> f35190g;

        /* renamed from: h  reason: collision with root package name */
        final int f35191h;

        /* renamed from: i  reason: collision with root package name */
        final ReferenceQueue<L> f35192i;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: Striped.java */
        /* loaded from: classes2.dex */
        public static final class a<L> extends WeakReference<L> {

            /* renamed from: a  reason: collision with root package name */
            final int f35193a;

            a(L l10, int i4, ReferenceQueue<L> referenceQueue) {
                super(l10, referenceQueue);
                this.f35193a = i4;
            }
        }

        l(int i4, com.google.common.base.i0<L> i0Var) {
            super(i4);
            this.f35192i = new ReferenceQueue<>();
            int i10 = this.f35188e;
            int i11 = i10 == -1 ? Integer.MAX_VALUE : i10 + 1;
            this.f35191h = i11;
            this.f35189f = new AtomicReferenceArray<>(i11);
            this.f35190g = i0Var;
        }

        private void r() {
            while (true) {
                Reference<? extends L> poll = this.f35192i.poll();
                if (poll == null) {
                    return;
                }
                a<? extends L> aVar = (a) poll;
                this.f35189f.compareAndSet(aVar.f35193a, aVar, null);
            }
        }

        @Override // com.google.common.util.concurrent.h1
        public L g(int i4) {
            L l10;
            if (this.f35191h != Integer.MAX_VALUE) {
                com.google.common.base.a0.C(i4, p());
            }
            a<? extends L> aVar = this.f35189f.get(i4);
            L l11 = aVar == null ? null : aVar.get();
            if (l11 != null) {
                return l11;
            }
            L l12 = this.f35190g.get();
            a<? extends L> aVar2 = new a<>(l12, i4, this.f35192i);
            while (!this.f35189f.compareAndSet(i4, aVar, aVar2)) {
                aVar = this.f35189f.get(i4);
                if (aVar == null) {
                    l10 = null;
                    continue;
                } else {
                    l10 = aVar.get();
                    continue;
                }
                if (l10 != null) {
                    return l10;
                }
            }
            r();
            return l12;
        }

        @Override // com.google.common.util.concurrent.h1
        public int p() {
            return this.f35191h;
        }
    }

    /* compiled from: Striped.java */
    /* loaded from: classes2.dex */
    private static final class m extends b0 {

        /* renamed from: a  reason: collision with root package name */
        private final Condition f35194a;

        /* renamed from: b  reason: collision with root package name */
        private final o f35195b;

        m(Condition condition, o oVar) {
            this.f35194a = condition;
            this.f35195b = oVar;
        }

        @Override // com.google.common.util.concurrent.b0
        Condition a() {
            return this.f35194a;
        }
    }

    /* compiled from: Striped.java */
    /* loaded from: classes2.dex */
    private static final class n extends h0 {

        /* renamed from: a  reason: collision with root package name */
        private final Lock f35196a;

        /* renamed from: b  reason: collision with root package name */
        private final o f35197b;

        n(Lock lock, o oVar) {
            this.f35196a = lock;
            this.f35197b = oVar;
        }

        @Override // com.google.common.util.concurrent.h0
        Lock a() {
            return this.f35196a;
        }

        @Override // com.google.common.util.concurrent.h0, java.util.concurrent.locks.Lock
        public Condition newCondition() {
            return new m(this.f35196a.newCondition(), this.f35197b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Striped.java */
    /* loaded from: classes2.dex */
    public static final class o implements ReadWriteLock {

        /* renamed from: a  reason: collision with root package name */
        private final ReadWriteLock f35198a = new ReentrantReadWriteLock();

        o() {
        }

        @Override // java.util.concurrent.locks.ReadWriteLock
        public Lock readLock() {
            return new n(this.f35198a.readLock(), this);
        }

        @Override // java.util.concurrent.locks.ReadWriteLock
        public Lock writeLock() {
            return new n(this.f35198a.writeLock(), this);
        }
    }

    /* synthetic */ h1(a aVar) {
        this();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int d(int i4) {
        return 1 << com.google.common.math.d.p(i4, RoundingMode.CEILING);
    }

    static <L> h1<L> e(int i4, com.google.common.base.i0<L> i0Var) {
        return new g(i4, i0Var, null);
    }

    private static <L> h1<L> i(int i4, com.google.common.base.i0<L> i0Var) {
        return i4 < 1024 ? new l(i4, i0Var) : new h(i4, i0Var);
    }

    public static h1<Lock> j(int i4) {
        return i(i4, new b());
    }

    public static h1<ReadWriteLock> k(int i4) {
        return i(i4, f35174c);
    }

    public static h1<Semaphore> l(int i4, int i10) {
        return i(i4, new d(i10));
    }

    public static h1<Lock> m(int i4) {
        return e(i4, new a());
    }

    public static h1<ReadWriteLock> n(int i4) {
        return e(i4, f35173b);
    }

    public static h1<Semaphore> o(int i4, int i10) {
        return e(i4, new c(i10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int q(int i4) {
        int i10 = i4 ^ ((i4 >>> 20) ^ (i4 >>> 12));
        return (i10 >>> 4) ^ ((i10 >>> 7) ^ i10);
    }

    public Iterable<L> c(Iterable<?> iterable) {
        Object[] Q = w2.Q(iterable, Object.class);
        if (Q.length == 0) {
            return ImmutableList.of();
        }
        int[] iArr = new int[Q.length];
        for (int i4 = 0; i4 < Q.length; i4++) {
            iArr[i4] = h(Q[i4]);
        }
        Arrays.sort(iArr);
        int i10 = iArr[0];
        Q[0] = g(i10);
        for (int i11 = 1; i11 < Q.length; i11++) {
            int i12 = iArr[i11];
            if (i12 == i10) {
                Q[i11] = Q[i11 - 1];
            } else {
                Q[i11] = g(i12);
                i10 = i12;
            }
        }
        return Collections.unmodifiableList(Arrays.asList(Q));
    }

    public abstract L f(Object obj);

    public abstract L g(int i4);

    abstract int h(Object obj);

    public abstract int p();

    private h1() {
    }
}
