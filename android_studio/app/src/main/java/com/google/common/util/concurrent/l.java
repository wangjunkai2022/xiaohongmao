package com.google.common.util.concurrent;

import com.google.common.collect.o4;
import com.google.j2objc.annotations.ReflectionSupport;
import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.logging.Level;
import java.util.logging.Logger;

/* compiled from: AggregateFutureState.java */
@ReflectionSupport(ReflectionSupport.Level.FULL)
@h3.b(emulated = true)
/* loaded from: classes2.dex */
abstract class l {

    /* renamed from: c  reason: collision with root package name */
    private static final b f35281c;

    /* renamed from: d  reason: collision with root package name */
    private static final Logger f35282d = Logger.getLogger(l.class.getName());

    /* renamed from: a  reason: collision with root package name */
    private volatile Set<Throwable> f35283a = null;

    /* renamed from: b  reason: collision with root package name */
    private volatile int f35284b;

    /* compiled from: AggregateFutureState.java */
    /* loaded from: classes2.dex */
    private static abstract class b {
        private b() {
        }

        abstract void a(l lVar, Set<Throwable> set, Set<Throwable> set2);

        abstract int b(l lVar);
    }

    /* compiled from: AggregateFutureState.java */
    /* loaded from: classes2.dex */
    private static final class c extends b {

        /* renamed from: a  reason: collision with root package name */
        final AtomicReferenceFieldUpdater<l, Set<Throwable>> f35285a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicIntegerFieldUpdater<l> f35286b;

        c(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicIntegerFieldUpdater atomicIntegerFieldUpdater) {
            super();
            this.f35285a = atomicReferenceFieldUpdater;
            this.f35286b = atomicIntegerFieldUpdater;
        }

        @Override // com.google.common.util.concurrent.l.b
        void a(l lVar, Set<Throwable> set, Set<Throwable> set2) {
            androidx.concurrent.futures.a.a(this.f35285a, lVar, set, set2);
        }

        @Override // com.google.common.util.concurrent.l.b
        int b(l lVar) {
            return this.f35286b.decrementAndGet(lVar);
        }
    }

    /* compiled from: AggregateFutureState.java */
    /* loaded from: classes2.dex */
    private static final class d extends b {
        private d() {
            super();
        }

        @Override // com.google.common.util.concurrent.l.b
        void a(l lVar, Set<Throwable> set, Set<Throwable> set2) {
            synchronized (lVar) {
                if (lVar.f35283a == set) {
                    lVar.f35283a = set2;
                }
            }
        }

        @Override // com.google.common.util.concurrent.l.b
        int b(l lVar) {
            int i4;
            synchronized (lVar) {
                l.d(lVar);
                i4 = lVar.f35284b;
            }
            return i4;
        }
    }

    static {
        b dVar;
        Throwable th = null;
        try {
            dVar = new c(AtomicReferenceFieldUpdater.newUpdater(l.class, Set.class, "a"), AtomicIntegerFieldUpdater.newUpdater(l.class, "b"));
        } catch (Throwable th2) {
            dVar = new d();
            th = th2;
        }
        f35281c = dVar;
        if (th != null) {
            f35282d.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(int i4) {
        this.f35284b = i4;
    }

    static /* synthetic */ int d(l lVar) {
        int i4 = lVar.f35284b;
        lVar.f35284b = i4 - 1;
        return i4;
    }

    abstract void e(Set<Throwable> set);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int f() {
        return f35281c.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Set<Throwable> g() {
        Set<Throwable> set = this.f35283a;
        if (set == null) {
            Set<Throwable> p9 = o4.p();
            e(p9);
            f35281c.a(this, null, p9);
            return this.f35283a;
        }
        return set;
    }
}
