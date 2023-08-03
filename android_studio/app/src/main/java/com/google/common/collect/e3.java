package com.google.common.collect;

import com.google.common.base.Equivalence;
import com.google.common.collect.d3;
import com.google.common.collect.e3.j;
import com.google.common.collect.e3.o;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.concurrent.GuardedBy;
import com.google.j2objc.annotations.Weak;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.ReentrantLock;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MapMakerInternalMap.java */
@h3.c
/* loaded from: classes2.dex */
public class e3<K, V, E extends j<K, V, E>, S extends o<K, V, E, S>> extends AbstractMap<K, V> implements ConcurrentMap<K, V>, Serializable {

    /* renamed from: j  reason: collision with root package name */
    static final int f33314j = 1073741824;

    /* renamed from: k  reason: collision with root package name */
    static final int f33315k = 65536;

    /* renamed from: l  reason: collision with root package name */
    static final int f33316l = 3;

    /* renamed from: m  reason: collision with root package name */
    static final int f33317m = 63;

    /* renamed from: n  reason: collision with root package name */
    static final int f33318n = 16;

    /* renamed from: o  reason: collision with root package name */
    static final long f33319o = 60;

    /* renamed from: p  reason: collision with root package name */
    static final h0<Object, Object, f> f33320p = new a();

    /* renamed from: q  reason: collision with root package name */
    private static final long f33321q = 5;

    /* renamed from: a  reason: collision with root package name */
    final transient int f33322a;

    /* renamed from: b  reason: collision with root package name */
    final transient int f33323b;

    /* renamed from: c  reason: collision with root package name */
    final transient o<K, V, E, S>[] f33324c;

    /* renamed from: d  reason: collision with root package name */
    final int f33325d;

    /* renamed from: e  reason: collision with root package name */
    final Equivalence<Object> f33326e;

    /* renamed from: f  reason: collision with root package name */
    final transient k<K, V, E, S> f33327f;
    @MonotonicNonNullDecl

    /* renamed from: g  reason: collision with root package name */
    transient Set<K> f33328g;
    @MonotonicNonNullDecl

    /* renamed from: h  reason: collision with root package name */
    transient Collection<V> f33329h;
    @MonotonicNonNullDecl

    /* renamed from: i  reason: collision with root package name */
    transient Set<Map.Entry<K, V>> f33330i;

    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes2.dex */
    static class a implements h0<Object, Object, f> {
        a() {
        }

        @Override // com.google.common.collect.e3.h0
        /* renamed from: b */
        public h0<Object, Object, f> a(ReferenceQueue<Object> referenceQueue, f fVar) {
            return this;
        }

        @Override // com.google.common.collect.e3.h0
        public void clear() {
        }

        @Override // com.google.common.collect.e3.h0
        /* renamed from: d */
        public f c() {
            return null;
        }

        @Override // com.google.common.collect.e3.h0
        public Object get() {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes2.dex */
    public static final class a0<K> extends d<K, d3.a, a0<K>> implements x<K, d3.a, a0<K>> {

        /* compiled from: MapMakerInternalMap.java */
        /* loaded from: classes2.dex */
        static final class a<K> implements k<K, d3.a, a0<K>, b0<K>> {

            /* renamed from: a  reason: collision with root package name */
            private static final a<?> f33331a = new a<>();

            a() {
            }

            static <K> a<K> h() {
                return (a<K>) f33331a;
            }

            @Override // com.google.common.collect.e3.k
            public q b() {
                return q.f33377a;
            }

            @Override // com.google.common.collect.e3.k
            public q e() {
                return q.f33378b;
            }

            @Override // com.google.common.collect.e3.k
            /* renamed from: g */
            public a0<K> a(b0<K> b0Var, a0<K> a0Var, @NullableDecl a0<K> a0Var2) {
                if (a0Var.getKey() == null) {
                    return null;
                }
                return a0Var.e(((b0) b0Var).f33339h, a0Var2);
            }

            @Override // com.google.common.collect.e3.k
            /* renamed from: i */
            public a0<K> d(b0<K> b0Var, K k10, int i4, @NullableDecl a0<K> a0Var) {
                return new a0<>(((b0) b0Var).f33339h, k10, i4, a0Var);
            }

            @Override // com.google.common.collect.e3.k
            /* renamed from: j */
            public b0<K> f(e3<K, d3.a, a0<K>, b0<K>> e3Var, int i4, int i10) {
                return new b0<>(e3Var, i4, i10);
            }

            @Override // com.google.common.collect.e3.k
            /* renamed from: k */
            public void c(b0<K> b0Var, a0<K> a0Var, d3.a aVar) {
            }
        }

        a0(ReferenceQueue<K> referenceQueue, K k10, int i4, @NullableDecl a0<K> a0Var) {
            super(referenceQueue, k10, i4, a0Var);
        }

        a0<K> e(ReferenceQueue<K> referenceQueue, a0<K> a0Var) {
            return new a0<>(referenceQueue, getKey(), this.f33345a, a0Var);
        }

        @Override // com.google.common.collect.e3.j
        /* renamed from: f */
        public d3.a getValue() {
            return d3.a.VALUE;
        }

        void g(d3.a aVar) {
        }
    }

    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes2.dex */
    static abstract class b<K, V> extends f1<K, V> implements Serializable {

        /* renamed from: g  reason: collision with root package name */
        private static final long f33332g = 3;

        /* renamed from: a  reason: collision with root package name */
        final q f33333a;

        /* renamed from: b  reason: collision with root package name */
        final q f33334b;

        /* renamed from: c  reason: collision with root package name */
        final Equivalence<Object> f33335c;

        /* renamed from: d  reason: collision with root package name */
        final Equivalence<Object> f33336d;

        /* renamed from: e  reason: collision with root package name */
        final int f33337e;

        /* renamed from: f  reason: collision with root package name */
        transient ConcurrentMap<K, V> f33338f;

        b(q qVar, q qVar2, Equivalence<Object> equivalence, Equivalence<Object> equivalence2, int i4, ConcurrentMap<K, V> concurrentMap) {
            this.f33333a = qVar;
            this.f33334b = qVar2;
            this.f33335c = equivalence;
            this.f33336d = equivalence2;
            this.f33337e = i4;
            this.f33338f = concurrentMap;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.f1, com.google.common.collect.p1
        /* renamed from: W */
        public ConcurrentMap<K, V> M() {
            return this.f33338f;
        }

        /* JADX WARN: Multi-variable type inference failed */
        void X(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            while (true) {
                Object readObject = objectInputStream.readObject();
                if (readObject == null) {
                    return;
                }
                this.f33338f.put(readObject, objectInputStream.readObject());
            }
        }

        d3 Y(ObjectInputStream objectInputStream) throws IOException {
            return new d3().g(objectInputStream.readInt()).j(this.f33333a).k(this.f33334b).h(this.f33335c).a(this.f33337e);
        }

        void Z(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.writeInt(this.f33338f.size());
            for (Map.Entry<K, V> entry : this.f33338f.entrySet()) {
                objectOutputStream.writeObject(entry.getKey());
                objectOutputStream.writeObject(entry.getValue());
            }
            objectOutputStream.writeObject(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes2.dex */
    public static final class b0<K> extends o<K, d3.a, a0<K>, b0<K>> {

        /* renamed from: h  reason: collision with root package name */
        private final ReferenceQueue<K> f33339h;

        b0(e3<K, d3.a, a0<K>, b0<K>> e3Var, int i4, int i10) {
            super(e3Var, i4, i10);
            this.f33339h = new ReferenceQueue<>();
        }

        @Override // com.google.common.collect.e3.o
        /* renamed from: Z */
        public a0<K> a(j<K, d3.a, ?> jVar) {
            return (a0) jVar;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.e3.o
        /* renamed from: a0 */
        public b0<K> S() {
            return this;
        }

        @Override // com.google.common.collect.e3.o
        ReferenceQueue<K> q() {
            return this.f33339h;
        }

        @Override // com.google.common.collect.e3.o
        void y() {
            c((ReferenceQueue<K>) this.f33339h);
        }

        @Override // com.google.common.collect.e3.o
        void z() {
            k(this.f33339h);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes2.dex */
    public static abstract class c<K, V, E extends j<K, V, E>> implements j<K, V, E> {

        /* renamed from: a  reason: collision with root package name */
        final K f33340a;

        /* renamed from: b  reason: collision with root package name */
        final int f33341b;
        @NullableDecl

        /* renamed from: c  reason: collision with root package name */
        final E f33342c;

        c(K k10, int i4, @NullableDecl E e4) {
            this.f33340a = k10;
            this.f33341b = i4;
            this.f33342c = e4;
        }

        @Override // com.google.common.collect.e3.j
        public int b() {
            return this.f33341b;
        }

        @Override // com.google.common.collect.e3.j
        public E c() {
            return this.f33342c;
        }

        @Override // com.google.common.collect.e3.j
        public K getKey() {
            return this.f33340a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes2.dex */
    public static final class c0<K, V> extends d<K, V, c0<K, V>> implements x<K, V, c0<K, V>> {
        @NullableDecl

        /* renamed from: c  reason: collision with root package name */
        private volatile V f33343c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: MapMakerInternalMap.java */
        /* loaded from: classes2.dex */
        public static final class a<K, V> implements k<K, V, c0<K, V>, d0<K, V>> {

            /* renamed from: a  reason: collision with root package name */
            private static final a<?, ?> f33344a = new a<>();

            a() {
            }

            static <K, V> a<K, V> h() {
                return (a<K, V>) f33344a;
            }

            @Override // com.google.common.collect.e3.k
            public q b() {
                return q.f33377a;
            }

            @Override // com.google.common.collect.e3.k
            public q e() {
                return q.f33378b;
            }

            @Override // com.google.common.collect.e3.k
            /* renamed from: g */
            public c0<K, V> a(d0<K, V> d0Var, c0<K, V> c0Var, @NullableDecl c0<K, V> c0Var2) {
                if (c0Var.getKey() == null) {
                    return null;
                }
                return c0Var.e(((d0) d0Var).f33347h, c0Var2);
            }

            @Override // com.google.common.collect.e3.k
            /* renamed from: i */
            public c0<K, V> d(d0<K, V> d0Var, K k10, int i4, @NullableDecl c0<K, V> c0Var) {
                return new c0<>(((d0) d0Var).f33347h, k10, i4, c0Var);
            }

            @Override // com.google.common.collect.e3.k
            /* renamed from: j */
            public d0<K, V> f(e3<K, V, c0<K, V>, d0<K, V>> e3Var, int i4, int i10) {
                return new d0<>(e3Var, i4, i10);
            }

            @Override // com.google.common.collect.e3.k
            /* renamed from: k */
            public void c(d0<K, V> d0Var, c0<K, V> c0Var, V v9) {
                c0Var.f(v9);
            }
        }

        c0(ReferenceQueue<K> referenceQueue, K k10, int i4, @NullableDecl c0<K, V> c0Var) {
            super(referenceQueue, k10, i4, c0Var);
            this.f33343c = null;
        }

        c0<K, V> e(ReferenceQueue<K> referenceQueue, c0<K, V> c0Var) {
            c0<K, V> c0Var2 = new c0<>(referenceQueue, getKey(), this.f33345a, c0Var);
            c0Var2.f(this.f33343c);
            return c0Var2;
        }

        void f(V v9) {
            this.f33343c = v9;
        }

        @Override // com.google.common.collect.e3.j
        @NullableDecl
        public V getValue() {
            return this.f33343c;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes2.dex */
    public static abstract class d<K, V, E extends j<K, V, E>> extends WeakReference<K> implements j<K, V, E> {

        /* renamed from: a  reason: collision with root package name */
        final int f33345a;
        @NullableDecl

        /* renamed from: b  reason: collision with root package name */
        final E f33346b;

        d(ReferenceQueue<K> referenceQueue, K k10, int i4, @NullableDecl E e4) {
            super(k10, referenceQueue);
            this.f33345a = i4;
            this.f33346b = e4;
        }

        @Override // com.google.common.collect.e3.j
        public int b() {
            return this.f33345a;
        }

        @Override // com.google.common.collect.e3.j
        public E c() {
            return this.f33346b;
        }

        @Override // com.google.common.collect.e3.j
        public K getKey() {
            return get();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes2.dex */
    public static final class d0<K, V> extends o<K, V, c0<K, V>, d0<K, V>> {

        /* renamed from: h  reason: collision with root package name */
        private final ReferenceQueue<K> f33347h;

        d0(e3<K, V, c0<K, V>, d0<K, V>> e3Var, int i4, int i10) {
            super(e3Var, i4, i10);
            this.f33347h = new ReferenceQueue<>();
        }

        @Override // com.google.common.collect.e3.o
        /* renamed from: Z */
        public c0<K, V> a(j<K, V, ?> jVar) {
            return (c0) jVar;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.e3.o
        /* renamed from: a0 */
        public d0<K, V> S() {
            return this;
        }

        @Override // com.google.common.collect.e3.o
        ReferenceQueue<K> q() {
            return this.f33347h;
        }

        @Override // com.google.common.collect.e3.o
        void y() {
            c((ReferenceQueue<K>) this.f33347h);
        }

        @Override // com.google.common.collect.e3.o
        void z() {
            k(this.f33347h);
        }
    }

    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes2.dex */
    static final class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final WeakReference<e3<?, ?, ?, ?>> f33348a;

        public e(e3<?, ?, ?, ?> e3Var) {
            this.f33348a = new WeakReference<>(e3Var);
        }

        @Override // java.lang.Runnable
        public void run() {
            e3<?, ?, ?, ?> e3Var = this.f33348a.get();
            if (e3Var != null) {
                for (o<?, ?, ?, ?> oVar : e3Var.f33324c) {
                    oVar.Q();
                }
                return;
            }
            throw new CancellationException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes2.dex */
    public static final class e0<K, V> extends d<K, V, e0<K, V>> implements g0<K, V, e0<K, V>> {

        /* renamed from: c  reason: collision with root package name */
        private volatile h0<K, V, e0<K, V>> f33349c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: MapMakerInternalMap.java */
        /* loaded from: classes2.dex */
        public static final class a<K, V> implements k<K, V, e0<K, V>, f0<K, V>> {

            /* renamed from: a  reason: collision with root package name */
            private static final a<?, ?> f33350a = new a<>();

            a() {
            }

            static <K, V> a<K, V> h() {
                return (a<K, V>) f33350a;
            }

            @Override // com.google.common.collect.e3.k
            public q b() {
                return q.f33378b;
            }

            @Override // com.google.common.collect.e3.k
            public q e() {
                return q.f33378b;
            }

            @Override // com.google.common.collect.e3.k
            /* renamed from: g */
            public e0<K, V> a(f0<K, V> f0Var, e0<K, V> e0Var, @NullableDecl e0<K, V> e0Var2) {
                if (e0Var.getKey() == null || o.x(e0Var)) {
                    return null;
                }
                return e0Var.g(((f0) f0Var).f33351h, ((f0) f0Var).f33352i, e0Var2);
            }

            @Override // com.google.common.collect.e3.k
            /* renamed from: i */
            public e0<K, V> d(f0<K, V> f0Var, K k10, int i4, @NullableDecl e0<K, V> e0Var) {
                return new e0<>(((f0) f0Var).f33351h, k10, i4, e0Var);
            }

            @Override // com.google.common.collect.e3.k
            /* renamed from: j */
            public f0<K, V> f(e3<K, V, e0<K, V>, f0<K, V>> e3Var, int i4, int i10) {
                return new f0<>(e3Var, i4, i10);
            }

            @Override // com.google.common.collect.e3.k
            /* renamed from: k */
            public void c(f0<K, V> f0Var, e0<K, V> e0Var, V v9) {
                e0Var.h(v9, ((f0) f0Var).f33352i);
            }
        }

        e0(ReferenceQueue<K> referenceQueue, K k10, int i4, @NullableDecl e0<K, V> e0Var) {
            super(referenceQueue, k10, i4, e0Var);
            this.f33349c = e3.t();
        }

        @Override // com.google.common.collect.e3.g0
        public h0<K, V, e0<K, V>> a() {
            return this.f33349c;
        }

        @Override // com.google.common.collect.e3.g0
        public void d() {
            this.f33349c.clear();
        }

        e0<K, V> g(ReferenceQueue<K> referenceQueue, ReferenceQueue<V> referenceQueue2, e0<K, V> e0Var) {
            e0<K, V> e0Var2 = new e0<>(referenceQueue, getKey(), this.f33345a, e0Var);
            e0Var2.f33349c = this.f33349c.a(referenceQueue2, e0Var2);
            return e0Var2;
        }

        @Override // com.google.common.collect.e3.j
        public V getValue() {
            return this.f33349c.get();
        }

        void h(V v9, ReferenceQueue<V> referenceQueue) {
            h0<K, V, e0<K, V>> h0Var = this.f33349c;
            this.f33349c = new i0(referenceQueue, v9, this);
            h0Var.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes2.dex */
    public static final class f implements j<Object, Object, f> {
        private f() {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.e3.j
        public int b() {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.e3.j
        /* renamed from: e */
        public f c() {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.e3.j
        public Object getKey() {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.e3.j
        public Object getValue() {
            throw new AssertionError();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes2.dex */
    public static final class f0<K, V> extends o<K, V, e0<K, V>, f0<K, V>> {

        /* renamed from: h  reason: collision with root package name */
        private final ReferenceQueue<K> f33351h;

        /* renamed from: i  reason: collision with root package name */
        private final ReferenceQueue<V> f33352i;

        f0(e3<K, V, e0<K, V>, f0<K, V>> e3Var, int i4, int i10) {
            super(e3Var, i4, i10);
            this.f33351h = new ReferenceQueue<>();
            this.f33352i = new ReferenceQueue<>();
        }

        @Override // com.google.common.collect.e3.o
        public h0<K, V, e0<K, V>> C(j<K, V, ?> jVar, V v9) {
            return new i0(this.f33352i, v9, a(jVar));
        }

        @Override // com.google.common.collect.e3.o
        public void W(j<K, V, ?> jVar, h0<K, V, ? extends j<K, V, ?>> h0Var) {
            e0<K, V> a10 = a(jVar);
            h0 h0Var2 = ((e0) a10).f33349c;
            ((e0) a10).f33349c = h0Var;
            h0Var2.clear();
        }

        @Override // com.google.common.collect.e3.o
        /* renamed from: a0 */
        public e0<K, V> a(j<K, V, ?> jVar) {
            return (e0) jVar;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.e3.o
        /* renamed from: b0 */
        public f0<K, V> S() {
            return this;
        }

        @Override // com.google.common.collect.e3.o
        ReferenceQueue<K> q() {
            return this.f33351h;
        }

        @Override // com.google.common.collect.e3.o
        ReferenceQueue<V> u() {
            return this.f33352i;
        }

        @Override // com.google.common.collect.e3.o
        public h0<K, V, e0<K, V>> v(j<K, V, ?> jVar) {
            return a(jVar).a();
        }

        @Override // com.google.common.collect.e3.o
        void y() {
            c((ReferenceQueue<K>) this.f33351h);
        }

        @Override // com.google.common.collect.e3.o
        void z() {
            k(this.f33351h);
            l(this.f33352i);
        }
    }

    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes2.dex */
    final class g extends e3<K, V, E, S>.i<Map.Entry<K, V>> {
        g() {
            super();
        }

        @Override // com.google.common.collect.e3.i, java.util.Iterator
        /* renamed from: f */
        public Map.Entry<K, V> next() {
            return c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes2.dex */
    public interface g0<K, V, E extends j<K, V, E>> extends j<K, V, E> {
        h0<K, V, E> a();

        void d();
    }

    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes2.dex */
    final class h extends n<Map.Entry<K, V>> {
        h() {
            super(null);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            e3.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            Map.Entry entry;
            Object key;
            Object obj2;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && (obj2 = e3.this.get(key)) != null && e3.this.u().d(entry.getValue(), obj2);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return e3.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new g();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            Map.Entry entry;
            Object key;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && e3.this.remove(key, entry.getValue());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return e3.this.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes2.dex */
    public interface h0<K, V, E extends j<K, V, E>> {
        h0<K, V, E> a(ReferenceQueue<V> referenceQueue, E e4);

        E c();

        void clear();

        @NullableDecl
        V get();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes2.dex */
    public abstract class i<T> implements Iterator<T> {

        /* renamed from: a  reason: collision with root package name */
        int f33355a;

        /* renamed from: b  reason: collision with root package name */
        int f33356b = -1;
        @MonotonicNonNullDecl

        /* renamed from: c  reason: collision with root package name */
        o<K, V, E, S> f33357c;
        @MonotonicNonNullDecl

        /* renamed from: d  reason: collision with root package name */
        AtomicReferenceArray<E> f33358d;
        @NullableDecl

        /* renamed from: e  reason: collision with root package name */
        E f33359e;
        @NullableDecl

        /* renamed from: f  reason: collision with root package name */
        e3<K, V, E, S>.j0 f33360f;
        @NullableDecl

        /* renamed from: g  reason: collision with root package name */
        e3<K, V, E, S>.j0 f33361g;

        i() {
            this.f33355a = e3.this.f33324c.length - 1;
            a();
        }

        final void a() {
            this.f33360f = null;
            if (d() || e()) {
                return;
            }
            while (true) {
                int i4 = this.f33355a;
                if (i4 < 0) {
                    return;
                }
                o<K, V, E, S>[] oVarArr = e3.this.f33324c;
                this.f33355a = i4 - 1;
                o<K, V, E, S> oVar = oVarArr[i4];
                this.f33357c = oVar;
                if (oVar.f33370b != 0) {
                    AtomicReferenceArray<E> atomicReferenceArray = this.f33357c.f33373e;
                    this.f33358d = atomicReferenceArray;
                    this.f33356b = atomicReferenceArray.length() - 1;
                    if (e()) {
                        return;
                    }
                }
            }
        }

        boolean b(E e4) {
            boolean z9;
            try {
                Object key = e4.getKey();
                Object i4 = e3.this.i(e4);
                if (i4 != null) {
                    this.f33360f = new j0(key, i4);
                    z9 = true;
                } else {
                    z9 = false;
                }
                return z9;
            } finally {
                this.f33357c.D();
            }
        }

        e3<K, V, E, S>.j0 c() {
            e3<K, V, E, S>.j0 j0Var = this.f33360f;
            if (j0Var != null) {
                this.f33361g = j0Var;
                a();
                return this.f33361g;
            }
            throw new NoSuchElementException();
        }

        boolean d() {
            E e4 = this.f33359e;
            if (e4 == null) {
                return false;
            }
            while (true) {
                this.f33359e = (E) e4.c();
                E e10 = this.f33359e;
                if (e10 == null) {
                    return false;
                }
                if (b(e10)) {
                    return true;
                }
                e4 = this.f33359e;
            }
        }

        boolean e() {
            while (true) {
                int i4 = this.f33356b;
                if (i4 < 0) {
                    return false;
                }
                AtomicReferenceArray<E> atomicReferenceArray = this.f33358d;
                this.f33356b = i4 - 1;
                E e4 = atomicReferenceArray.get(i4);
                this.f33359e = e4;
                if (e4 != null && (b(e4) || d())) {
                    return true;
                }
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f33360f != null;
        }

        @Override // java.util.Iterator
        public abstract T next();

        @Override // java.util.Iterator
        public void remove() {
            com.google.common.collect.y.e(this.f33361g != null);
            e3.this.remove(this.f33361g.getKey());
            this.f33361g = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes2.dex */
    public static final class i0<K, V, E extends j<K, V, E>> extends WeakReference<V> implements h0<K, V, E> {
        @Weak

        /* renamed from: a  reason: collision with root package name */
        final E f33363a;

        i0(ReferenceQueue<V> referenceQueue, V v9, E e4) {
            super(v9, referenceQueue);
            this.f33363a = e4;
        }

        @Override // com.google.common.collect.e3.h0
        public h0<K, V, E> a(ReferenceQueue<V> referenceQueue, E e4) {
            return new i0(referenceQueue, get(), e4);
        }

        @Override // com.google.common.collect.e3.h0
        public E c() {
            return this.f33363a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes2.dex */
    public interface j<K, V, E extends j<K, V, E>> {
        int b();

        E c();

        K getKey();

        V getValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes2.dex */
    public final class j0 extends com.google.common.collect.g<K, V> {

        /* renamed from: a  reason: collision with root package name */
        final K f33364a;

        /* renamed from: b  reason: collision with root package name */
        V f33365b;

        j0(K k10, V v9) {
            this.f33364a = k10;
            this.f33365b = v9;
        }

        @Override // com.google.common.collect.g, java.util.Map.Entry
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                return this.f33364a.equals(entry.getKey()) && this.f33365b.equals(entry.getValue());
            }
            return false;
        }

        @Override // com.google.common.collect.g, java.util.Map.Entry
        public K getKey() {
            return this.f33364a;
        }

        @Override // com.google.common.collect.g, java.util.Map.Entry
        public V getValue() {
            return this.f33365b;
        }

        @Override // com.google.common.collect.g, java.util.Map.Entry
        public int hashCode() {
            return this.f33364a.hashCode() ^ this.f33365b.hashCode();
        }

        @Override // com.google.common.collect.g, java.util.Map.Entry
        public V setValue(V v9) {
            V v10 = (V) e3.this.put(this.f33364a, v9);
            this.f33365b = v9;
            return v10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes2.dex */
    public interface k<K, V, E extends j<K, V, E>, S extends o<K, V, E, S>> {
        E a(S s9, E e4, @NullableDecl E e10);

        q b();

        void c(S s9, E e4, V v9);

        E d(S s9, K k10, int i4, @NullableDecl E e4);

        q e();

        S f(e3<K, V, E, S> e3Var, int i4, int i10);
    }

    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes2.dex */
    final class l extends e3<K, V, E, S>.i<K> {
        l() {
            super();
        }

        @Override // com.google.common.collect.e3.i, java.util.Iterator
        public K next() {
            return c().getKey();
        }
    }

    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes2.dex */
    final class m extends n<K> {
        m() {
            super(null);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            e3.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return e3.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return e3.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new l();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return e3.this.remove(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return e3.this.size();
        }
    }

    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes2.dex */
    private static abstract class n<E> extends AbstractSet<E> {
        private n() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public Object[] toArray() {
            return e3.s(this).toArray();
        }

        /* synthetic */ n(a aVar) {
            this();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public <T> T[] toArray(T[] tArr) {
            return (T[]) e3.s(this).toArray(tArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes2.dex */
    public static abstract class o<K, V, E extends j<K, V, E>, S extends o<K, V, E, S>> extends ReentrantLock {
        @Weak

        /* renamed from: a  reason: collision with root package name */
        final e3<K, V, E, S> f33369a;

        /* renamed from: b  reason: collision with root package name */
        volatile int f33370b;

        /* renamed from: c  reason: collision with root package name */
        int f33371c;

        /* renamed from: d  reason: collision with root package name */
        int f33372d;
        @MonotonicNonNullDecl

        /* renamed from: e  reason: collision with root package name */
        volatile AtomicReferenceArray<E> f33373e;

        /* renamed from: f  reason: collision with root package name */
        final int f33374f;

        /* renamed from: g  reason: collision with root package name */
        final AtomicInteger f33375g = new AtomicInteger();

        o(e3<K, V, E, S> e3Var, int i4, int i10) {
            this.f33369a = e3Var;
            this.f33374f = i10;
            w(A(i4));
        }

        static <K, V, E extends j<K, V, E>> boolean x(E e4) {
            return e4.getValue() == null;
        }

        AtomicReferenceArray<E> A(int i4) {
            return new AtomicReferenceArray<>(i4);
        }

        E B(K k10, int i4, @NullableDecl j<K, V, ?> jVar) {
            return this.f33369a.f33327f.d(S(), k10, i4, a(jVar));
        }

        h0<K, V, E> C(j<K, V, ?> jVar, V v9) {
            throw new AssertionError();
        }

        void D() {
            if ((this.f33375g.incrementAndGet() & 63) == 0) {
                Q();
            }
        }

        @GuardedBy("this")
        void E() {
            R();
        }

        /* JADX WARN: Multi-variable type inference failed */
        V F(K k10, int i4, V v9, boolean z9) {
            lock();
            try {
                E();
                int i10 = this.f33370b + 1;
                if (i10 > this.f33372d) {
                    m();
                    i10 = this.f33370b + 1;
                }
                AtomicReferenceArray<E> atomicReferenceArray = this.f33373e;
                int length = (atomicReferenceArray.length() - 1) & i4;
                E e4 = atomicReferenceArray.get(length);
                for (j jVar = e4; jVar != null; jVar = jVar.c()) {
                    Object key = jVar.getKey();
                    if (jVar.b() == i4 && key != null && this.f33369a.f33326e.d(k10, key)) {
                        V v10 = (V) jVar.getValue();
                        if (v10 == null) {
                            this.f33371c++;
                            U(jVar, v9);
                            this.f33370b = this.f33370b;
                            return null;
                        } else if (z9) {
                            return v10;
                        } else {
                            this.f33371c++;
                            U(jVar, v9);
                            return v10;
                        }
                    }
                }
                this.f33371c++;
                E d4 = this.f33369a.f33327f.d(S(), k10, i4, e4);
                U(d4, v9);
                atomicReferenceArray.set(length, d4);
                this.f33370b = i10;
                return null;
            } finally {
                unlock();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @CanIgnoreReturnValue
        boolean G(E e4, int i4) {
            lock();
            try {
                AtomicReferenceArray<E> atomicReferenceArray = this.f33373e;
                int length = i4 & (atomicReferenceArray.length() - 1);
                E e10 = atomicReferenceArray.get(length);
                for (j jVar = e10; jVar != null; jVar = jVar.c()) {
                    if (jVar == e4) {
                        this.f33371c++;
                        atomicReferenceArray.set(length, L(e10, jVar));
                        this.f33370b--;
                        return true;
                    }
                }
                return false;
            } finally {
                unlock();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @CanIgnoreReturnValue
        boolean H(K k10, int i4, h0<K, V, E> h0Var) {
            lock();
            try {
                AtomicReferenceArray<E> atomicReferenceArray = this.f33373e;
                int length = (atomicReferenceArray.length() - 1) & i4;
                E e4 = atomicReferenceArray.get(length);
                for (j jVar = e4; jVar != null; jVar = jVar.c()) {
                    Object key = jVar.getKey();
                    if (jVar.b() == i4 && key != null && this.f33369a.f33326e.d(k10, key)) {
                        if (((g0) jVar).a() == h0Var) {
                            this.f33371c++;
                            atomicReferenceArray.set(length, L(e4, jVar));
                            this.f33370b--;
                            return true;
                        }
                        return false;
                    }
                }
                return false;
            } finally {
                unlock();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @CanIgnoreReturnValue
        V I(Object obj, int i4) {
            lock();
            try {
                E();
                AtomicReferenceArray<E> atomicReferenceArray = this.f33373e;
                int length = (atomicReferenceArray.length() - 1) & i4;
                E e4 = atomicReferenceArray.get(length);
                for (j jVar = e4; jVar != null; jVar = jVar.c()) {
                    Object key = jVar.getKey();
                    if (jVar.b() == i4 && key != null && this.f33369a.f33326e.d(obj, key)) {
                        V v9 = (V) jVar.getValue();
                        if (v9 == null && !x(jVar)) {
                            return null;
                        }
                        this.f33371c++;
                        atomicReferenceArray.set(length, L(e4, jVar));
                        this.f33370b--;
                        return v9;
                    }
                }
                return null;
            } finally {
                unlock();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x003d, code lost:
            if (r8.f33369a.u().d(r11, r4.getValue()) == false) goto L20;
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x003f, code lost:
            r5 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x0045, code lost:
            if (x(r4) == false) goto L22;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x0047, code lost:
            r8.f33371c++;
            r0.set(r1, L(r3, r4));
            r8.f33370b--;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x005b, code lost:
            return r5;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x005f, code lost:
            return false;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        boolean J(java.lang.Object r9, int r10, java.lang.Object r11) {
            /*
                r8 = this;
                r8.lock()
                r8.E()     // Catch: java.lang.Throwable -> L69
                java.util.concurrent.atomic.AtomicReferenceArray<E extends com.google.common.collect.e3$j<K, V, E>> r0 = r8.f33373e     // Catch: java.lang.Throwable -> L69
                int r1 = r0.length()     // Catch: java.lang.Throwable -> L69
                r2 = 1
                int r1 = r1 - r2
                r1 = r1 & r10
                java.lang.Object r3 = r0.get(r1)     // Catch: java.lang.Throwable -> L69
                com.google.common.collect.e3$j r3 = (com.google.common.collect.e3.j) r3     // Catch: java.lang.Throwable -> L69
                r4 = r3
            L16:
                r5 = 0
                if (r4 == 0) goto L65
                java.lang.Object r6 = r4.getKey()     // Catch: java.lang.Throwable -> L69
                int r7 = r4.b()     // Catch: java.lang.Throwable -> L69
                if (r7 != r10) goto L60
                if (r6 == 0) goto L60
                com.google.common.collect.e3<K, V, E extends com.google.common.collect.e3$j<K, V, E>, S extends com.google.common.collect.e3$o<K, V, E, S>> r7 = r8.f33369a     // Catch: java.lang.Throwable -> L69
                com.google.common.base.Equivalence<java.lang.Object> r7 = r7.f33326e     // Catch: java.lang.Throwable -> L69
                boolean r6 = r7.d(r9, r6)     // Catch: java.lang.Throwable -> L69
                if (r6 == 0) goto L60
                java.lang.Object r9 = r4.getValue()     // Catch: java.lang.Throwable -> L69
                com.google.common.collect.e3<K, V, E extends com.google.common.collect.e3$j<K, V, E>, S extends com.google.common.collect.e3$o<K, V, E, S>> r10 = r8.f33369a     // Catch: java.lang.Throwable -> L69
                com.google.common.base.Equivalence r10 = r10.u()     // Catch: java.lang.Throwable -> L69
                boolean r9 = r10.d(r11, r9)     // Catch: java.lang.Throwable -> L69
                if (r9 == 0) goto L41
                r5 = 1
                goto L47
            L41:
                boolean r9 = x(r4)     // Catch: java.lang.Throwable -> L69
                if (r9 == 0) goto L5c
            L47:
                int r9 = r8.f33371c     // Catch: java.lang.Throwable -> L69
                int r9 = r9 + r2
                r8.f33371c = r9     // Catch: java.lang.Throwable -> L69
                com.google.common.collect.e3$j r9 = r8.L(r3, r4)     // Catch: java.lang.Throwable -> L69
                int r10 = r8.f33370b     // Catch: java.lang.Throwable -> L69
                int r10 = r10 - r2
                r0.set(r1, r9)     // Catch: java.lang.Throwable -> L69
                r8.f33370b = r10     // Catch: java.lang.Throwable -> L69
                r8.unlock()
                return r5
            L5c:
                r8.unlock()
                return r5
            L60:
                com.google.common.collect.e3$j r4 = r4.c()     // Catch: java.lang.Throwable -> L69
                goto L16
            L65:
                r8.unlock()
                return r5
            L69:
                r9 = move-exception
                r8.unlock()
                throw r9
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.e3.o.J(java.lang.Object, int, java.lang.Object):boolean");
        }

        /* JADX WARN: Multi-variable type inference failed */
        @GuardedBy("this")
        boolean K(E e4) {
            int b10 = e4.b();
            AtomicReferenceArray<E> atomicReferenceArray = this.f33373e;
            int length = b10 & (atomicReferenceArray.length() - 1);
            E e10 = atomicReferenceArray.get(length);
            for (j jVar = e10; jVar != null; jVar = jVar.c()) {
                if (jVar == e4) {
                    this.f33371c++;
                    atomicReferenceArray.set(length, L(e10, jVar));
                    this.f33370b--;
                    return true;
                }
            }
            return false;
        }

        @GuardedBy("this")
        E L(E e4, E e10) {
            int i4 = this.f33370b;
            E e11 = (E) e10.c();
            while (e4 != e10) {
                E i10 = i(e4, e11);
                if (i10 != null) {
                    e11 = i10;
                } else {
                    i4--;
                }
                e4 = (E) e4.c();
            }
            this.f33370b = i4;
            return e11;
        }

        E M(j<K, V, ?> jVar, j<K, V, ?> jVar2) {
            return L(a(jVar), a(jVar2));
        }

        @CanIgnoreReturnValue
        boolean N(j<K, V, ?> jVar) {
            return K(a(jVar));
        }

        /* JADX WARN: Multi-variable type inference failed */
        V O(K k10, int i4, V v9) {
            lock();
            try {
                E();
                AtomicReferenceArray<E> atomicReferenceArray = this.f33373e;
                int length = (atomicReferenceArray.length() - 1) & i4;
                E e4 = atomicReferenceArray.get(length);
                for (j jVar = e4; jVar != null; jVar = jVar.c()) {
                    Object key = jVar.getKey();
                    if (jVar.b() == i4 && key != null && this.f33369a.f33326e.d(k10, key)) {
                        V v10 = (V) jVar.getValue();
                        if (v10 == null) {
                            if (x(jVar)) {
                                this.f33371c++;
                                atomicReferenceArray.set(length, L(e4, jVar));
                                this.f33370b--;
                            }
                            return null;
                        }
                        this.f33371c++;
                        U(jVar, v9);
                        return v10;
                    }
                }
                return null;
            } finally {
                unlock();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        boolean P(K k10, int i4, V v9, V v10) {
            lock();
            try {
                E();
                AtomicReferenceArray<E> atomicReferenceArray = this.f33373e;
                int length = (atomicReferenceArray.length() - 1) & i4;
                E e4 = atomicReferenceArray.get(length);
                for (j jVar = e4; jVar != null; jVar = jVar.c()) {
                    Object key = jVar.getKey();
                    if (jVar.b() == i4 && key != null && this.f33369a.f33326e.d(k10, key)) {
                        Object value = jVar.getValue();
                        if (value == null) {
                            if (x(jVar)) {
                                this.f33371c++;
                                atomicReferenceArray.set(length, L(e4, jVar));
                                this.f33370b--;
                            }
                            return false;
                        } else if (this.f33369a.u().d(v9, value)) {
                            this.f33371c++;
                            U(jVar, v10);
                            return true;
                        } else {
                            return false;
                        }
                    }
                }
                return false;
            } finally {
                unlock();
            }
        }

        void Q() {
            R();
        }

        void R() {
            if (tryLock()) {
                try {
                    z();
                    this.f33375g.set(0);
                } finally {
                    unlock();
                }
            }
        }

        abstract S S();

        void T(int i4, j<K, V, ?> jVar) {
            this.f33373e.set(i4, a(jVar));
        }

        void U(E e4, V v9) {
            this.f33369a.f33327f.c(S(), e4, v9);
        }

        void V(j<K, V, ?> jVar, V v9) {
            this.f33369a.f33327f.c(S(), a(jVar), v9);
        }

        void W(j<K, V, ?> jVar, h0<K, V, ? extends j<K, V, ?>> h0Var) {
            throw new AssertionError();
        }

        void X() {
            if (tryLock()) {
                try {
                    z();
                } finally {
                    unlock();
                }
            }
        }

        abstract E a(j<K, V, ?> jVar);

        void b() {
            if (this.f33370b != 0) {
                lock();
                try {
                    AtomicReferenceArray<E> atomicReferenceArray = this.f33373e;
                    for (int i4 = 0; i4 < atomicReferenceArray.length(); i4++) {
                        atomicReferenceArray.set(i4, null);
                    }
                    y();
                    this.f33375g.set(0);
                    this.f33371c++;
                    this.f33370b = 0;
                } finally {
                    unlock();
                }
            }
        }

        <T> void c(ReferenceQueue<T> referenceQueue) {
            do {
            } while (referenceQueue.poll() != null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @CanIgnoreReturnValue
        boolean d(K k10, int i4, h0<K, V, ? extends j<K, V, ?>> h0Var) {
            lock();
            try {
                AtomicReferenceArray<E> atomicReferenceArray = this.f33373e;
                int length = (atomicReferenceArray.length() - 1) & i4;
                E e4 = atomicReferenceArray.get(length);
                for (j jVar = e4; jVar != null; jVar = jVar.c()) {
                    Object key = jVar.getKey();
                    if (jVar.b() == i4 && key != null && this.f33369a.f33326e.d(k10, key)) {
                        if (((g0) jVar).a() == h0Var) {
                            atomicReferenceArray.set(length, L(e4, jVar));
                            return true;
                        }
                        return false;
                    }
                }
                return false;
            } finally {
                unlock();
            }
        }

        boolean e(Object obj, int i4) {
            try {
                boolean z9 = false;
                if (this.f33370b != 0) {
                    E r9 = r(obj, i4);
                    if (r9 != null) {
                        if (r9.getValue() != null) {
                            z9 = true;
                        }
                    }
                    return z9;
                }
                return false;
            } finally {
                D();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @h3.d
        boolean h(Object obj) {
            try {
                if (this.f33370b != 0) {
                    AtomicReferenceArray<E> atomicReferenceArray = this.f33373e;
                    int length = atomicReferenceArray.length();
                    for (int i4 = 0; i4 < length; i4++) {
                        for (E e4 = atomicReferenceArray.get(i4); e4 != null; e4 = e4.c()) {
                            Object s9 = s(e4);
                            if (s9 != null && this.f33369a.u().d(obj, s9)) {
                                D();
                                return true;
                            }
                        }
                    }
                }
                return false;
            } finally {
                D();
            }
        }

        E i(E e4, E e10) {
            return this.f33369a.f33327f.a(S(), e4, e10);
        }

        E j(j<K, V, ?> jVar, @NullableDecl j<K, V, ?> jVar2) {
            return this.f33369a.f33327f.a(S(), a(jVar), a(jVar2));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @GuardedBy("this")
        void k(ReferenceQueue<K> referenceQueue) {
            int i4 = 0;
            do {
                Reference<? extends K> poll = referenceQueue.poll();
                if (poll == null) {
                    return;
                }
                this.f33369a.n((j) poll);
                i4++;
            } while (i4 != 16);
        }

        @GuardedBy("this")
        void l(ReferenceQueue<V> referenceQueue) {
            int i4 = 0;
            do {
                Reference<? extends V> poll = referenceQueue.poll();
                if (poll == null) {
                    return;
                }
                this.f33369a.o((h0) poll);
                i4++;
            } while (i4 != 16);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @GuardedBy("this")
        void m() {
            AtomicReferenceArray<E> atomicReferenceArray = this.f33373e;
            int length = atomicReferenceArray.length();
            if (length >= 1073741824) {
                return;
            }
            int i4 = this.f33370b;
            AtomicReferenceArray<E> atomicReferenceArray2 = (AtomicReferenceArray<E>) A(length << 1);
            this.f33372d = (atomicReferenceArray2.length() * 3) / 4;
            int length2 = atomicReferenceArray2.length() - 1;
            for (int i10 = 0; i10 < length; i10++) {
                E e4 = atomicReferenceArray.get(i10);
                if (e4 != null) {
                    j c10 = e4.c();
                    int b10 = e4.b() & length2;
                    if (c10 == null) {
                        atomicReferenceArray2.set(b10, e4);
                    } else {
                        j jVar = e4;
                        while (c10 != null) {
                            int b11 = c10.b() & length2;
                            if (b11 != b10) {
                                jVar = c10;
                                b10 = b11;
                            }
                            c10 = c10.c();
                        }
                        atomicReferenceArray2.set(b10, jVar);
                        while (e4 != jVar) {
                            int b12 = e4.b() & length2;
                            j i11 = i(e4, (j) atomicReferenceArray2.get(b12));
                            if (i11 != null) {
                                atomicReferenceArray2.set(b12, i11);
                            } else {
                                i4--;
                            }
                            e4 = e4.c();
                        }
                    }
                }
            }
            this.f33373e = atomicReferenceArray2;
            this.f33370b = i4;
        }

        V n(Object obj, int i4) {
            try {
                E r9 = r(obj, i4);
                if (r9 == null) {
                    return null;
                }
                V v9 = (V) r9.getValue();
                if (v9 == null) {
                    X();
                }
                return v9;
            } finally {
                D();
            }
        }

        E o(Object obj, int i4) {
            if (this.f33370b != 0) {
                for (E p9 = p(i4); p9 != null; p9 = (E) p9.c()) {
                    if (p9.b() == i4) {
                        Object key = p9.getKey();
                        if (key == null) {
                            X();
                        } else if (this.f33369a.f33326e.d(obj, key)) {
                            return p9;
                        }
                    }
                }
                return null;
            }
            return null;
        }

        E p(int i4) {
            AtomicReferenceArray<E> atomicReferenceArray = this.f33373e;
            return atomicReferenceArray.get(i4 & (atomicReferenceArray.length() - 1));
        }

        ReferenceQueue<K> q() {
            throw new AssertionError();
        }

        E r(Object obj, int i4) {
            return o(obj, i4);
        }

        @NullableDecl
        V s(E e4) {
            if (e4.getKey() == null) {
                X();
                return null;
            }
            V v9 = (V) e4.getValue();
            if (v9 == null) {
                X();
                return null;
            }
            return v9;
        }

        @NullableDecl
        V t(j<K, V, ?> jVar) {
            return s(a(jVar));
        }

        ReferenceQueue<V> u() {
            throw new AssertionError();
        }

        h0<K, V, E> v(j<K, V, ?> jVar) {
            throw new AssertionError();
        }

        void w(AtomicReferenceArray<E> atomicReferenceArray) {
            int length = (atomicReferenceArray.length() * 3) / 4;
            this.f33372d = length;
            if (length == this.f33374f) {
                this.f33372d = length + 1;
            }
            this.f33373e = atomicReferenceArray;
        }

        void y() {
        }

        @GuardedBy("this")
        void z() {
        }
    }

    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes2.dex */
    private static final class p<K, V> extends b<K, V> {

        /* renamed from: h  reason: collision with root package name */
        private static final long f33376h = 3;

        p(q qVar, q qVar2, Equivalence<Object> equivalence, Equivalence<Object> equivalence2, int i4, ConcurrentMap<K, V> concurrentMap) {
            super(qVar, qVar2, equivalence, equivalence2, i4, concurrentMap);
        }

        private void a0(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            objectInputStream.defaultReadObject();
            this.f33338f = Y(objectInputStream).i();
            X(objectInputStream);
        }

        private Object b0() {
            return this.f33338f;
        }

        private void c0(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            Z(objectOutputStream);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes2.dex */
    public static abstract class q {

        /* renamed from: a  reason: collision with root package name */
        public static final q f33377a;

        /* renamed from: b  reason: collision with root package name */
        public static final q f33378b;

        /* renamed from: c  reason: collision with root package name */
        private static final /* synthetic */ q[] f33379c;

        /* compiled from: MapMakerInternalMap.java */
        /* loaded from: classes2.dex */
        enum a extends q {
            a(String str, int i4) {
                super(str, i4, null);
            }

            @Override // com.google.common.collect.e3.q
            Equivalence<Object> a() {
                return Equivalence.c();
            }
        }

        /* compiled from: MapMakerInternalMap.java */
        /* loaded from: classes2.dex */
        enum b extends q {
            b(String str, int i4) {
                super(str, i4, null);
            }

            @Override // com.google.common.collect.e3.q
            Equivalence<Object> a() {
                return Equivalence.i();
            }
        }

        static {
            a aVar = new a("STRONG", 0);
            f33377a = aVar;
            b bVar = new b("WEAK", 1);
            f33378b = bVar;
            f33379c = new q[]{aVar, bVar};
        }

        private q(String str, int i4) {
        }

        public static q valueOf(String str) {
            return (q) Enum.valueOf(q.class, str);
        }

        public static q[] values() {
            return (q[]) f33379c.clone();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract Equivalence<Object> a();

        /* synthetic */ q(String str, int i4, a aVar) {
            this(str, i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes2.dex */
    public static final class r<K> extends c<K, d3.a, r<K>> implements x<K, d3.a, r<K>> {

        /* compiled from: MapMakerInternalMap.java */
        /* loaded from: classes2.dex */
        static final class a<K> implements k<K, d3.a, r<K>, s<K>> {

            /* renamed from: a  reason: collision with root package name */
            private static final a<?> f33380a = new a<>();

            a() {
            }

            static <K> a<K> h() {
                return (a<K>) f33380a;
            }

            @Override // com.google.common.collect.e3.k
            public q b() {
                return q.f33377a;
            }

            @Override // com.google.common.collect.e3.k
            public q e() {
                return q.f33377a;
            }

            @Override // com.google.common.collect.e3.k
            /* renamed from: g */
            public r<K> a(s<K> sVar, r<K> rVar, @NullableDecl r<K> rVar2) {
                return rVar.e(rVar2);
            }

            @Override // com.google.common.collect.e3.k
            /* renamed from: i */
            public r<K> d(s<K> sVar, K k10, int i4, @NullableDecl r<K> rVar) {
                return new r<>(k10, i4, rVar);
            }

            @Override // com.google.common.collect.e3.k
            /* renamed from: j */
            public s<K> f(e3<K, d3.a, r<K>, s<K>> e3Var, int i4, int i10) {
                return new s<>(e3Var, i4, i10);
            }

            @Override // com.google.common.collect.e3.k
            /* renamed from: k */
            public void c(s<K> sVar, r<K> rVar, d3.a aVar) {
            }
        }

        r(K k10, int i4, @NullableDecl r<K> rVar) {
            super(k10, i4, rVar);
        }

        r<K> e(r<K> rVar) {
            return new r<>(this.f33340a, this.f33341b, rVar);
        }

        @Override // com.google.common.collect.e3.j
        /* renamed from: f */
        public d3.a getValue() {
            return d3.a.VALUE;
        }

        void g(d3.a aVar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes2.dex */
    public static final class s<K> extends o<K, d3.a, r<K>, s<K>> {
        s(e3<K, d3.a, r<K>, s<K>> e3Var, int i4, int i10) {
            super(e3Var, i4, i10);
        }

        @Override // com.google.common.collect.e3.o
        /* renamed from: Y */
        public r<K> a(j<K, d3.a, ?> jVar) {
            return (r) jVar;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.e3.o
        /* renamed from: Z */
        public s<K> S() {
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes2.dex */
    public static final class t<K, V> extends c<K, V, t<K, V>> implements x<K, V, t<K, V>> {
        @NullableDecl

        /* renamed from: d  reason: collision with root package name */
        private volatile V f33381d;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: MapMakerInternalMap.java */
        /* loaded from: classes2.dex */
        public static final class a<K, V> implements k<K, V, t<K, V>, u<K, V>> {

            /* renamed from: a  reason: collision with root package name */
            private static final a<?, ?> f33382a = new a<>();

            a() {
            }

            static <K, V> a<K, V> h() {
                return (a<K, V>) f33382a;
            }

            @Override // com.google.common.collect.e3.k
            public q b() {
                return q.f33377a;
            }

            @Override // com.google.common.collect.e3.k
            public q e() {
                return q.f33377a;
            }

            @Override // com.google.common.collect.e3.k
            /* renamed from: g */
            public t<K, V> a(u<K, V> uVar, t<K, V> tVar, @NullableDecl t<K, V> tVar2) {
                return tVar.e(tVar2);
            }

            @Override // com.google.common.collect.e3.k
            /* renamed from: i */
            public t<K, V> d(u<K, V> uVar, K k10, int i4, @NullableDecl t<K, V> tVar) {
                return new t<>(k10, i4, tVar);
            }

            @Override // com.google.common.collect.e3.k
            /* renamed from: j */
            public u<K, V> f(e3<K, V, t<K, V>, u<K, V>> e3Var, int i4, int i10) {
                return new u<>(e3Var, i4, i10);
            }

            @Override // com.google.common.collect.e3.k
            /* renamed from: k */
            public void c(u<K, V> uVar, t<K, V> tVar, V v9) {
                tVar.f(v9);
            }
        }

        t(K k10, int i4, @NullableDecl t<K, V> tVar) {
            super(k10, i4, tVar);
            this.f33381d = null;
        }

        t<K, V> e(t<K, V> tVar) {
            t<K, V> tVar2 = new t<>(this.f33340a, this.f33341b, tVar);
            tVar2.f33381d = this.f33381d;
            return tVar2;
        }

        void f(V v9) {
            this.f33381d = v9;
        }

        @Override // com.google.common.collect.e3.j
        @NullableDecl
        public V getValue() {
            return this.f33381d;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes2.dex */
    public static final class u<K, V> extends o<K, V, t<K, V>, u<K, V>> {
        u(e3<K, V, t<K, V>, u<K, V>> e3Var, int i4, int i10) {
            super(e3Var, i4, i10);
        }

        @Override // com.google.common.collect.e3.o
        /* renamed from: Y */
        public t<K, V> a(j<K, V, ?> jVar) {
            return (t) jVar;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.e3.o
        /* renamed from: Z */
        public u<K, V> S() {
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes2.dex */
    public static final class v<K, V> extends c<K, V, v<K, V>> implements g0<K, V, v<K, V>> {

        /* renamed from: d  reason: collision with root package name */
        private volatile h0<K, V, v<K, V>> f33383d;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: MapMakerInternalMap.java */
        /* loaded from: classes2.dex */
        public static final class a<K, V> implements k<K, V, v<K, V>, w<K, V>> {

            /* renamed from: a  reason: collision with root package name */
            private static final a<?, ?> f33384a = new a<>();

            a() {
            }

            static <K, V> a<K, V> h() {
                return (a<K, V>) f33384a;
            }

            @Override // com.google.common.collect.e3.k
            public q b() {
                return q.f33378b;
            }

            @Override // com.google.common.collect.e3.k
            public q e() {
                return q.f33377a;
            }

            @Override // com.google.common.collect.e3.k
            /* renamed from: g */
            public v<K, V> a(w<K, V> wVar, v<K, V> vVar, @NullableDecl v<K, V> vVar2) {
                if (o.x(vVar)) {
                    return null;
                }
                return vVar.g(((w) wVar).f33385h, vVar2);
            }

            @Override // com.google.common.collect.e3.k
            /* renamed from: i */
            public v<K, V> d(w<K, V> wVar, K k10, int i4, @NullableDecl v<K, V> vVar) {
                return new v<>(k10, i4, vVar);
            }

            @Override // com.google.common.collect.e3.k
            /* renamed from: j */
            public w<K, V> f(e3<K, V, v<K, V>, w<K, V>> e3Var, int i4, int i10) {
                return new w<>(e3Var, i4, i10);
            }

            @Override // com.google.common.collect.e3.k
            /* renamed from: k */
            public void c(w<K, V> wVar, v<K, V> vVar, V v9) {
                vVar.h(v9, ((w) wVar).f33385h);
            }
        }

        v(K k10, int i4, @NullableDecl v<K, V> vVar) {
            super(k10, i4, vVar);
            this.f33383d = e3.t();
        }

        @Override // com.google.common.collect.e3.g0
        public h0<K, V, v<K, V>> a() {
            return this.f33383d;
        }

        @Override // com.google.common.collect.e3.g0
        public void d() {
            this.f33383d.clear();
        }

        v<K, V> g(ReferenceQueue<V> referenceQueue, v<K, V> vVar) {
            v<K, V> vVar2 = new v<>(this.f33340a, this.f33341b, vVar);
            vVar2.f33383d = this.f33383d.a(referenceQueue, vVar2);
            return vVar2;
        }

        @Override // com.google.common.collect.e3.j
        public V getValue() {
            return this.f33383d.get();
        }

        void h(V v9, ReferenceQueue<V> referenceQueue) {
            h0<K, V, v<K, V>> h0Var = this.f33383d;
            this.f33383d = new i0(referenceQueue, v9, this);
            h0Var.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes2.dex */
    public static final class w<K, V> extends o<K, V, v<K, V>, w<K, V>> {

        /* renamed from: h  reason: collision with root package name */
        private final ReferenceQueue<V> f33385h;

        w(e3<K, V, v<K, V>, w<K, V>> e3Var, int i4, int i10) {
            super(e3Var, i4, i10);
            this.f33385h = new ReferenceQueue<>();
        }

        @Override // com.google.common.collect.e3.o
        public h0<K, V, v<K, V>> C(j<K, V, ?> jVar, V v9) {
            return new i0(this.f33385h, v9, a(jVar));
        }

        @Override // com.google.common.collect.e3.o
        public void W(j<K, V, ?> jVar, h0<K, V, ? extends j<K, V, ?>> h0Var) {
            v<K, V> a10 = a(jVar);
            h0 h0Var2 = ((v) a10).f33383d;
            ((v) a10).f33383d = h0Var;
            h0Var2.clear();
        }

        @Override // com.google.common.collect.e3.o
        /* renamed from: Z */
        public v<K, V> a(j<K, V, ?> jVar) {
            return (v) jVar;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.e3.o
        /* renamed from: a0 */
        public w<K, V> S() {
            return this;
        }

        @Override // com.google.common.collect.e3.o
        ReferenceQueue<V> u() {
            return this.f33385h;
        }

        @Override // com.google.common.collect.e3.o
        public h0<K, V, v<K, V>> v(j<K, V, ?> jVar) {
            return a(jVar).a();
        }

        @Override // com.google.common.collect.e3.o
        void y() {
            c((ReferenceQueue<V>) this.f33385h);
        }

        @Override // com.google.common.collect.e3.o
        void z() {
            l(this.f33385h);
        }
    }

    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes2.dex */
    interface x<K, V, E extends j<K, V, E>> extends j<K, V, E> {
    }

    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes2.dex */
    final class y extends e3<K, V, E, S>.i<V> {
        y() {
            super();
        }

        @Override // com.google.common.collect.e3.i, java.util.Iterator
        public V next() {
            return c().getValue();
        }
    }

    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes2.dex */
    final class z extends AbstractCollection<V> {
        z() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            e3.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return e3.this.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return e3.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return new y();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return e3.this.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public Object[] toArray() {
            return e3.s(this).toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) e3.s(this).toArray(tArr);
        }
    }

    private e3(d3 d3Var, k<K, V, E, S> kVar) {
        this.f33325d = Math.min(d3Var.b(), 65536);
        this.f33326e = d3Var.d();
        this.f33327f = kVar;
        int min = Math.min(d3Var.c(), 1073741824);
        int i4 = 0;
        int i10 = 1;
        int i11 = 1;
        int i12 = 0;
        while (i11 < this.f33325d) {
            i12++;
            i11 <<= 1;
        }
        this.f33323b = 32 - i12;
        this.f33322a = i11 - 1;
        this.f33324c = m(i11);
        int i13 = min / i11;
        while (i10 < (i11 * i13 < min ? i13 + 1 : i13)) {
            i10 <<= 1;
        }
        while (true) {
            o<K, V, E, S>[] oVarArr = this.f33324c;
            if (i4 >= oVarArr.length) {
                return;
            }
            oVarArr[i4] = d(i10, -1);
            i4++;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> e3<K, V, ? extends j<K, V, ?>, ?> c(d3 d3Var) {
        q e4 = d3Var.e();
        q qVar = q.f33377a;
        if (e4 == qVar && d3Var.f() == qVar) {
            return new e3<>(d3Var, t.a.h());
        }
        if (d3Var.e() == qVar && d3Var.f() == q.f33378b) {
            return new e3<>(d3Var, v.a.h());
        }
        q e10 = d3Var.e();
        q qVar2 = q.f33378b;
        if (e10 == qVar2 && d3Var.f() == qVar) {
            return new e3<>(d3Var, c0.a.h());
        }
        if (d3Var.e() == qVar2 && d3Var.f() == qVar2) {
            return new e3<>(d3Var, e0.a.h());
        }
        throw new AssertionError();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K> e3<K, d3.a, ? extends j<K, d3.a, ?>, ?> e(d3 d3Var) {
        q e4 = d3Var.e();
        q qVar = q.f33377a;
        if (e4 == qVar && d3Var.f() == qVar) {
            return new e3<>(d3Var, r.a.h());
        }
        q e10 = d3Var.e();
        q qVar2 = q.f33378b;
        if (e10 == qVar2 && d3Var.f() == qVar) {
            return new e3<>(d3Var, a0.a.h());
        }
        if (d3Var.f() == qVar2) {
            throw new IllegalArgumentException("Map cannot have both weak and dummy values");
        }
        throw new AssertionError();
    }

    static int p(int i4) {
        int i10 = i4 + ((i4 << 15) ^ (-12931));
        int i11 = i10 ^ (i10 >>> 10);
        int i12 = i11 + (i11 << 3);
        int i13 = i12 ^ (i12 >>> 6);
        int i14 = i13 + (i13 << 2) + (i13 << 14);
        return i14 ^ (i14 >>> 16);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> ArrayList<E> s(Collection<E> collection) {
        ArrayList<E> arrayList = new ArrayList<>(collection.size());
        x2.a(arrayList, collection.iterator());
        return arrayList;
    }

    static <K, V, E extends j<K, V, E>> h0<K, V, E> t() {
        return (h0<K, V, E>) f33320p;
    }

    @h3.d
    E b(E e4, E e10) {
        return q(e4.b()).i(e4, e10);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        for (o<K, V, E, S> oVar : this.f33324c) {
            oVar.b();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(@NullableDecl Object obj) {
        if (obj == null) {
            return false;
        }
        int j4 = j(obj);
        return q(j4).e(obj, j4);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsValue(@NullableDecl Object obj) {
        if (obj == null) {
            return false;
        }
        o<K, V, E, S>[] oVarArr = this.f33324c;
        long j4 = -1;
        int i4 = 0;
        while (i4 < 3) {
            long j10 = 0;
            for (b0 b0Var : oVarArr) {
                int i10 = b0Var.f33370b;
                AtomicReferenceArray<E> atomicReferenceArray = b0Var.f33373e;
                for (int i11 = 0; i11 < atomicReferenceArray.length(); i11++) {
                    for (E e4 = atomicReferenceArray.get(i11); e4 != null; e4 = e4.c()) {
                        Object s9 = b0Var.s(e4);
                        if (s9 != null && u().d(obj, s9)) {
                            return true;
                        }
                    }
                }
                j10 += b0Var.f33371c;
            }
            if (j10 == j4) {
                return false;
            }
            i4++;
            j4 = j10;
        }
        return false;
    }

    o<K, V, E, S> d(int i4, int i10) {
        return (S) this.f33327f.f(this, i4, i10);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.f33330i;
        if (set != null) {
            return set;
        }
        h hVar = new h();
        this.f33330i = hVar;
        return hVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(@NullableDecl Object obj) {
        if (obj == null) {
            return null;
        }
        int j4 = j(obj);
        return q(j4).n(obj, j4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public E h(@NullableDecl Object obj) {
        if (obj == null) {
            return null;
        }
        int j4 = j(obj);
        return q(j4).o(obj, j4);
    }

    V i(E e4) {
        V v9;
        if (e4.getKey() == null || (v9 = (V) e4.getValue()) == null) {
            return null;
        }
        return v9;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        o<K, V, E, S>[] oVarArr = this.f33324c;
        long j4 = 0;
        for (int i4 = 0; i4 < oVarArr.length; i4++) {
            if (oVarArr[i4].f33370b != 0) {
                return false;
            }
            j4 += oVarArr[i4].f33371c;
        }
        if (j4 != 0) {
            for (int i10 = 0; i10 < oVarArr.length; i10++) {
                if (oVarArr[i10].f33370b != 0) {
                    return false;
                }
                j4 -= oVarArr[i10].f33371c;
            }
            return j4 == 0;
        }
        return true;
    }

    int j(Object obj) {
        return p(this.f33326e.h(obj));
    }

    @h3.d
    boolean k(j<K, V, ?> jVar) {
        return q(jVar.b()).t(jVar) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        Set<K> set = this.f33328g;
        if (set != null) {
            return set;
        }
        m mVar = new m();
        this.f33328g = mVar;
        return mVar;
    }

    @h3.d
    q l() {
        return this.f33327f.e();
    }

    final o<K, V, E, S>[] m(int i4) {
        return new o[i4];
    }

    void n(E e4) {
        int b10 = e4.b();
        q(b10).G(e4, b10);
    }

    void o(h0<K, V, E> h0Var) {
        E c10 = h0Var.c();
        int b10 = c10.b();
        q(b10).H((K) c10.getKey(), b10, h0Var);
    }

    @Override // java.util.AbstractMap, java.util.Map
    @CanIgnoreReturnValue
    public V put(K k10, V v9) {
        com.google.common.base.a0.E(k10);
        com.google.common.base.a0.E(v9);
        int j4 = j(k10);
        return q(j4).F(k10, j4, v9, false);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    @CanIgnoreReturnValue
    public V putIfAbsent(K k10, V v9) {
        com.google.common.base.a0.E(k10);
        com.google.common.base.a0.E(v9);
        int j4 = j(k10);
        return q(j4).F(k10, j4, v9, true);
    }

    o<K, V, E, S> q(int i4) {
        return this.f33324c[(i4 >>> this.f33323b) & this.f33322a];
    }

    @Override // java.util.AbstractMap, java.util.Map
    @CanIgnoreReturnValue
    public V remove(@NullableDecl Object obj) {
        if (obj == null) {
            return null;
        }
        int j4 = j(obj);
        return q(j4).I(obj, j4);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    @CanIgnoreReturnValue
    public boolean replace(K k10, @NullableDecl V v9, V v10) {
        com.google.common.base.a0.E(k10);
        com.google.common.base.a0.E(v10);
        if (v9 == null) {
            return false;
        }
        int j4 = j(k10);
        return q(j4).P(k10, j4, v9, v10);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        long j4 = 0;
        for (o<K, V, E, S> oVar : this.f33324c) {
            j4 += oVar.f33370b;
        }
        return com.google.common.primitives.f.x(j4);
    }

    @h3.d
    Equivalence<Object> u() {
        return this.f33327f.b().a();
    }

    @h3.d
    q v() {
        return this.f33327f.b();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Collection<V> values() {
        Collection<V> collection = this.f33329h;
        if (collection != null) {
            return collection;
        }
        z zVar = new z();
        this.f33329h = zVar;
        return zVar;
    }

    Object w() {
        return new p(this.f33327f.e(), this.f33327f.b(), this.f33326e, this.f33327f.b().a(), this.f33325d, this);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    @CanIgnoreReturnValue
    public boolean remove(@NullableDecl Object obj, @NullableDecl Object obj2) {
        if (obj == null || obj2 == null) {
            return false;
        }
        int j4 = j(obj);
        return q(j4).J(obj, j4, obj2);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    @CanIgnoreReturnValue
    public V replace(K k10, V v9) {
        com.google.common.base.a0.E(k10);
        com.google.common.base.a0.E(v9);
        int j4 = j(k10);
        return q(j4).O(k10, j4, v9);
    }
}
