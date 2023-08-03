package com.google.common.cache;

import com.google.common.base.Equivalence;
import com.google.common.cache.CacheLoader;
import com.google.common.cache.a;
import com.google.common.cache.d;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.f3;
import com.google.common.collect.o4;
import com.google.common.collect.x2;
import com.google.common.util.concurrent.ExecutionError;
import com.google.common.util.concurrent.UncheckedExecutionException;
import com.google.common.util.concurrent.e1;
import com.google.common.util.concurrent.n1;
import com.google.common.util.concurrent.q0;
import com.google.common.util.concurrent.x0;
import com.google.errorprone.annotations.concurrent.GuardedBy;
import com.google.j2objc.annotations.Weak;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractQueue;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.ReentrantLock;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LocalCache.java */
@h3.b(emulated = true)
/* loaded from: classes2.dex */
public class j<K, V> extends AbstractMap<K, V> implements ConcurrentMap<K, V> {
    static final int A = 16;
    static final Logger B = Logger.getLogger(j.class.getName());
    static final a0<Object, Object> C = new a();
    static final Queue<?> D = new b();

    /* renamed from: w  reason: collision with root package name */
    static final int f32405w = 1073741824;

    /* renamed from: x  reason: collision with root package name */
    static final int f32406x = 65536;

    /* renamed from: y  reason: collision with root package name */
    static final int f32407y = 3;

    /* renamed from: z  reason: collision with root package name */
    static final int f32408z = 63;

    /* renamed from: a  reason: collision with root package name */
    final int f32409a;

    /* renamed from: b  reason: collision with root package name */
    final int f32410b;

    /* renamed from: c  reason: collision with root package name */
    final r<K, V>[] f32411c;

    /* renamed from: d  reason: collision with root package name */
    final int f32412d;

    /* renamed from: e  reason: collision with root package name */
    final Equivalence<Object> f32413e;

    /* renamed from: f  reason: collision with root package name */
    final Equivalence<Object> f32414f;

    /* renamed from: g  reason: collision with root package name */
    final t f32415g;

    /* renamed from: h  reason: collision with root package name */
    final t f32416h;

    /* renamed from: i  reason: collision with root package name */
    final long f32417i;

    /* renamed from: j  reason: collision with root package name */
    final com.google.common.cache.r<K, V> f32418j;

    /* renamed from: k  reason: collision with root package name */
    final long f32419k;

    /* renamed from: l  reason: collision with root package name */
    final long f32420l;

    /* renamed from: m  reason: collision with root package name */
    final long f32421m;

    /* renamed from: n  reason: collision with root package name */
    final Queue<RemovalNotification<K, V>> f32422n;

    /* renamed from: o  reason: collision with root package name */
    final com.google.common.cache.o<K, V> f32423o;

    /* renamed from: p  reason: collision with root package name */
    final com.google.common.base.l0 f32424p;

    /* renamed from: q  reason: collision with root package name */
    final f f32425q;

    /* renamed from: r  reason: collision with root package name */
    final a.b f32426r;
    @NullableDecl

    /* renamed from: s  reason: collision with root package name */
    final CacheLoader<? super K, V> f32427s;
    @MonotonicNonNullDecl

    /* renamed from: t  reason: collision with root package name */
    Set<K> f32428t;
    @MonotonicNonNullDecl

    /* renamed from: u  reason: collision with root package name */
    Collection<V> f32429u;
    @MonotonicNonNullDecl

    /* renamed from: v  reason: collision with root package name */
    Set<Map.Entry<K, V>> f32430v;

    /* compiled from: LocalCache.java */
    /* loaded from: classes2.dex */
    static class a implements a0<Object, Object> {
        a() {
        }

        @Override // com.google.common.cache.j.a0
        public boolean a() {
            return false;
        }

        @Override // com.google.common.cache.j.a0
        public boolean b() {
            return false;
        }

        @Override // com.google.common.cache.j.a0
        public com.google.common.cache.n<Object, Object> c() {
            return null;
        }

        @Override // com.google.common.cache.j.a0
        public void d(Object obj) {
        }

        @Override // com.google.common.cache.j.a0
        public int e() {
            return 0;
        }

        @Override // com.google.common.cache.j.a0
        public a0<Object, Object> f(ReferenceQueue<Object> referenceQueue, @NullableDecl Object obj, com.google.common.cache.n<Object, Object> nVar) {
            return this;
        }

        @Override // com.google.common.cache.j.a0
        public Object g() {
            return null;
        }

        @Override // com.google.common.cache.j.a0
        public Object get() {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LocalCache.java */
    /* loaded from: classes2.dex */
    public interface a0<K, V> {
        boolean a();

        boolean b();

        @NullableDecl
        com.google.common.cache.n<K, V> c();

        void d(@NullableDecl V v9);

        int e();

        a0<K, V> f(ReferenceQueue<V> referenceQueue, @NullableDecl V v9, com.google.common.cache.n<K, V> nVar);

        V g() throws ExecutionException;

        @NullableDecl
        V get();
    }

    /* compiled from: LocalCache.java */
    /* loaded from: classes2.dex */
    static class b extends AbstractQueue<Object> {
        b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<Object> iterator() {
            return ImmutableSet.of().iterator();
        }

        @Override // java.util.Queue
        public boolean offer(Object obj) {
            return true;
        }

        @Override // java.util.Queue
        public Object peek() {
            return null;
        }

        @Override // java.util.Queue
        public Object poll() {
            return null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return 0;
        }
    }

    /* compiled from: LocalCache.java */
    /* loaded from: classes2.dex */
    final class b0 extends AbstractCollection<V> {

        /* renamed from: a  reason: collision with root package name */
        private final ConcurrentMap<?, ?> f32431a;

        b0(ConcurrentMap<?, ?> concurrentMap) {
            this.f32431a = concurrentMap;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            this.f32431a.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return this.f32431a.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return this.f32431a.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return new z();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return this.f32431a.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public Object[] toArray() {
            return j.R(this).toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public <E> E[] toArray(E[] eArr) {
            return (E[]) j.R(this).toArray(eArr);
        }
    }

    /* compiled from: LocalCache.java */
    /* loaded from: classes2.dex */
    abstract class c<T> extends AbstractSet<T> {
        @Weak

        /* renamed from: a  reason: collision with root package name */
        final ConcurrentMap<?, ?> f32433a;

        c(ConcurrentMap<?, ?> concurrentMap) {
            this.f32433a = concurrentMap;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            this.f32433a.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return this.f32433a.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.f32433a.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public Object[] toArray() {
            return j.R(this).toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public <E> E[] toArray(E[] eArr) {
            return (E[]) j.R(this).toArray(eArr);
        }
    }

    /* compiled from: LocalCache.java */
    /* loaded from: classes2.dex */
    static final class c0<K, V> extends e0<K, V> {

        /* renamed from: d  reason: collision with root package name */
        volatile long f32435d;

        /* renamed from: e  reason: collision with root package name */
        com.google.common.cache.n<K, V> f32436e;

        /* renamed from: f  reason: collision with root package name */
        com.google.common.cache.n<K, V> f32437f;

        c0(ReferenceQueue<K> referenceQueue, K k10, int i4, @NullableDecl com.google.common.cache.n<K, V> nVar) {
            super(referenceQueue, k10, i4, nVar);
            this.f32435d = Long.MAX_VALUE;
            this.f32436e = j.E();
            this.f32437f = j.E();
        }

        @Override // com.google.common.cache.j.e0, com.google.common.cache.n
        public com.google.common.cache.n<K, V> d() {
            return this.f32437f;
        }

        @Override // com.google.common.cache.j.e0, com.google.common.cache.n
        public com.google.common.cache.n<K, V> h() {
            return this.f32436e;
        }

        @Override // com.google.common.cache.j.e0, com.google.common.cache.n
        public void i(com.google.common.cache.n<K, V> nVar) {
            this.f32437f = nVar;
        }

        @Override // com.google.common.cache.j.e0, com.google.common.cache.n
        public void n(long j4) {
            this.f32435d = j4;
        }

        @Override // com.google.common.cache.j.e0, com.google.common.cache.n
        public long o() {
            return this.f32435d;
        }

        @Override // com.google.common.cache.j.e0, com.google.common.cache.n
        public void q(com.google.common.cache.n<K, V> nVar) {
            this.f32436e = nVar;
        }
    }

    /* compiled from: LocalCache.java */
    /* loaded from: classes2.dex */
    static abstract class d<K, V> implements com.google.common.cache.n<K, V> {
        d() {
        }

        @Override // com.google.common.cache.n
        public a0<K, V> a() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.n
        public int b() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.n
        public com.google.common.cache.n<K, V> c() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.n
        public com.google.common.cache.n<K, V> d() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.n
        public com.google.common.cache.n<K, V> e() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.n
        public K getKey() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.n
        public com.google.common.cache.n<K, V> h() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.n
        public void i(com.google.common.cache.n<K, V> nVar) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.n
        public com.google.common.cache.n<K, V> k() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.n
        public void l(a0<K, V> a0Var) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.n
        public long m() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.n
        public void n(long j4) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.n
        public long o() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.n
        public void p(long j4) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.n
        public void q(com.google.common.cache.n<K, V> nVar) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.n
        public void r(com.google.common.cache.n<K, V> nVar) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.n
        public void s(com.google.common.cache.n<K, V> nVar) {
            throw new UnsupportedOperationException();
        }
    }

    /* compiled from: LocalCache.java */
    /* loaded from: classes2.dex */
    static final class d0<K, V> extends e0<K, V> {

        /* renamed from: d  reason: collision with root package name */
        volatile long f32438d;

        /* renamed from: e  reason: collision with root package name */
        com.google.common.cache.n<K, V> f32439e;

        /* renamed from: f  reason: collision with root package name */
        com.google.common.cache.n<K, V> f32440f;

        /* renamed from: g  reason: collision with root package name */
        volatile long f32441g;

        /* renamed from: h  reason: collision with root package name */
        com.google.common.cache.n<K, V> f32442h;

        /* renamed from: i  reason: collision with root package name */
        com.google.common.cache.n<K, V> f32443i;

        d0(ReferenceQueue<K> referenceQueue, K k10, int i4, @NullableDecl com.google.common.cache.n<K, V> nVar) {
            super(referenceQueue, k10, i4, nVar);
            this.f32438d = Long.MAX_VALUE;
            this.f32439e = j.E();
            this.f32440f = j.E();
            this.f32441g = Long.MAX_VALUE;
            this.f32442h = j.E();
            this.f32443i = j.E();
        }

        @Override // com.google.common.cache.j.e0, com.google.common.cache.n
        public com.google.common.cache.n<K, V> d() {
            return this.f32440f;
        }

        @Override // com.google.common.cache.j.e0, com.google.common.cache.n
        public com.google.common.cache.n<K, V> e() {
            return this.f32442h;
        }

        @Override // com.google.common.cache.j.e0, com.google.common.cache.n
        public com.google.common.cache.n<K, V> h() {
            return this.f32439e;
        }

        @Override // com.google.common.cache.j.e0, com.google.common.cache.n
        public void i(com.google.common.cache.n<K, V> nVar) {
            this.f32440f = nVar;
        }

        @Override // com.google.common.cache.j.e0, com.google.common.cache.n
        public com.google.common.cache.n<K, V> k() {
            return this.f32443i;
        }

        @Override // com.google.common.cache.j.e0, com.google.common.cache.n
        public long m() {
            return this.f32441g;
        }

        @Override // com.google.common.cache.j.e0, com.google.common.cache.n
        public void n(long j4) {
            this.f32438d = j4;
        }

        @Override // com.google.common.cache.j.e0, com.google.common.cache.n
        public long o() {
            return this.f32438d;
        }

        @Override // com.google.common.cache.j.e0, com.google.common.cache.n
        public void p(long j4) {
            this.f32441g = j4;
        }

        @Override // com.google.common.cache.j.e0, com.google.common.cache.n
        public void q(com.google.common.cache.n<K, V> nVar) {
            this.f32439e = nVar;
        }

        @Override // com.google.common.cache.j.e0, com.google.common.cache.n
        public void r(com.google.common.cache.n<K, V> nVar) {
            this.f32442h = nVar;
        }

        @Override // com.google.common.cache.j.e0, com.google.common.cache.n
        public void s(com.google.common.cache.n<K, V> nVar) {
            this.f32443i = nVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LocalCache.java */
    /* loaded from: classes2.dex */
    public static final class e<K, V> extends AbstractQueue<com.google.common.cache.n<K, V>> {

        /* renamed from: a  reason: collision with root package name */
        final com.google.common.cache.n<K, V> f32444a = new a();

        /* compiled from: LocalCache.java */
        /* loaded from: classes2.dex */
        class a extends d<K, V> {

            /* renamed from: a  reason: collision with root package name */
            com.google.common.cache.n<K, V> f32445a = this;

            /* renamed from: b  reason: collision with root package name */
            com.google.common.cache.n<K, V> f32446b = this;

            a() {
            }

            @Override // com.google.common.cache.j.d, com.google.common.cache.n
            public com.google.common.cache.n<K, V> d() {
                return this.f32446b;
            }

            @Override // com.google.common.cache.j.d, com.google.common.cache.n
            public com.google.common.cache.n<K, V> h() {
                return this.f32445a;
            }

            @Override // com.google.common.cache.j.d, com.google.common.cache.n
            public void i(com.google.common.cache.n<K, V> nVar) {
                this.f32446b = nVar;
            }

            @Override // com.google.common.cache.j.d, com.google.common.cache.n
            public void n(long j4) {
            }

            @Override // com.google.common.cache.j.d, com.google.common.cache.n
            public long o() {
                return Long.MAX_VALUE;
            }

            @Override // com.google.common.cache.j.d, com.google.common.cache.n
            public void q(com.google.common.cache.n<K, V> nVar) {
                this.f32445a = nVar;
            }
        }

        /* compiled from: LocalCache.java */
        /* loaded from: classes2.dex */
        class b extends com.google.common.collect.l<com.google.common.cache.n<K, V>> {
            b(com.google.common.cache.n nVar) {
                super(nVar);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.l
            /* renamed from: b */
            public com.google.common.cache.n<K, V> a(com.google.common.cache.n<K, V> nVar) {
                com.google.common.cache.n<K, V> h4 = nVar.h();
                if (h4 == e.this.f32444a) {
                    return null;
                }
                return h4;
            }
        }

        e() {
        }

        @Override // java.util.Queue
        /* renamed from: a */
        public boolean offer(com.google.common.cache.n<K, V> nVar) {
            j.c(nVar.d(), nVar.h());
            j.c(this.f32444a.d(), nVar);
            j.c(nVar, this.f32444a);
            return true;
        }

        @Override // java.util.Queue
        /* renamed from: b */
        public com.google.common.cache.n<K, V> peek() {
            com.google.common.cache.n<K, V> h4 = this.f32444a.h();
            if (h4 == this.f32444a) {
                return null;
            }
            return h4;
        }

        @Override // java.util.Queue
        /* renamed from: c */
        public com.google.common.cache.n<K, V> poll() {
            com.google.common.cache.n<K, V> h4 = this.f32444a.h();
            if (h4 == this.f32444a) {
                return null;
            }
            remove(h4);
            return h4;
        }

        @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
        public void clear() {
            com.google.common.cache.n<K, V> h4 = this.f32444a.h();
            while (true) {
                com.google.common.cache.n<K, V> nVar = this.f32444a;
                if (h4 != nVar) {
                    com.google.common.cache.n<K, V> h10 = h4.h();
                    j.F(h4);
                    h4 = h10;
                } else {
                    nVar.q(nVar);
                    com.google.common.cache.n<K, V> nVar2 = this.f32444a;
                    nVar2.i(nVar2);
                    return;
                }
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return ((com.google.common.cache.n) obj).h() != q.INSTANCE;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return this.f32444a.h() == this.f32444a;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<com.google.common.cache.n<K, V>> iterator() {
            return new b(peek());
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            com.google.common.cache.n nVar = (com.google.common.cache.n) obj;
            com.google.common.cache.n<K, V> d4 = nVar.d();
            com.google.common.cache.n<K, V> h4 = nVar.h();
            j.c(d4, h4);
            j.F(nVar);
            return h4 != q.INSTANCE;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            int i4 = 0;
            for (com.google.common.cache.n<K, V> h4 = this.f32444a.h(); h4 != this.f32444a; h4 = h4.h()) {
                i4++;
            }
            return i4;
        }
    }

    /* compiled from: LocalCache.java */
    /* loaded from: classes2.dex */
    static class e0<K, V> extends WeakReference<K> implements com.google.common.cache.n<K, V> {

        /* renamed from: a  reason: collision with root package name */
        final int f32449a;
        @NullableDecl

        /* renamed from: b  reason: collision with root package name */
        final com.google.common.cache.n<K, V> f32450b;

        /* renamed from: c  reason: collision with root package name */
        volatile a0<K, V> f32451c;

        e0(ReferenceQueue<K> referenceQueue, K k10, int i4, @NullableDecl com.google.common.cache.n<K, V> nVar) {
            super(k10, referenceQueue);
            this.f32451c = j.S();
            this.f32449a = i4;
            this.f32450b = nVar;
        }

        @Override // com.google.common.cache.n
        public a0<K, V> a() {
            return this.f32451c;
        }

        @Override // com.google.common.cache.n
        public int b() {
            return this.f32449a;
        }

        @Override // com.google.common.cache.n
        public com.google.common.cache.n<K, V> c() {
            return this.f32450b;
        }

        public com.google.common.cache.n<K, V> d() {
            throw new UnsupportedOperationException();
        }

        public com.google.common.cache.n<K, V> e() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.n
        public K getKey() {
            return get();
        }

        public com.google.common.cache.n<K, V> h() {
            throw new UnsupportedOperationException();
        }

        public void i(com.google.common.cache.n<K, V> nVar) {
            throw new UnsupportedOperationException();
        }

        public com.google.common.cache.n<K, V> k() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.n
        public void l(a0<K, V> a0Var) {
            this.f32451c = a0Var;
        }

        public long m() {
            throw new UnsupportedOperationException();
        }

        public void n(long j4) {
            throw new UnsupportedOperationException();
        }

        public long o() {
            throw new UnsupportedOperationException();
        }

        public void p(long j4) {
            throw new UnsupportedOperationException();
        }

        public void q(com.google.common.cache.n<K, V> nVar) {
            throw new UnsupportedOperationException();
        }

        public void r(com.google.common.cache.n<K, V> nVar) {
            throw new UnsupportedOperationException();
        }

        public void s(com.google.common.cache.n<K, V> nVar) {
            throw new UnsupportedOperationException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: LocalCache.java */
    /* loaded from: classes2.dex */
    public static abstract class f {

        /* renamed from: a  reason: collision with root package name */
        public static final f f32452a;

        /* renamed from: b  reason: collision with root package name */
        public static final f f32453b;

        /* renamed from: c  reason: collision with root package name */
        public static final f f32454c;

        /* renamed from: d  reason: collision with root package name */
        public static final f f32455d;

        /* renamed from: e  reason: collision with root package name */
        public static final f f32456e;

        /* renamed from: f  reason: collision with root package name */
        public static final f f32457f;

        /* renamed from: g  reason: collision with root package name */
        public static final f f32458g;

        /* renamed from: h  reason: collision with root package name */
        public static final f f32459h;

        /* renamed from: i  reason: collision with root package name */
        static final int f32460i = 1;

        /* renamed from: j  reason: collision with root package name */
        static final int f32461j = 2;

        /* renamed from: k  reason: collision with root package name */
        static final int f32462k = 4;

        /* renamed from: l  reason: collision with root package name */
        static final f[] f32463l;

        /* renamed from: m  reason: collision with root package name */
        private static final /* synthetic */ f[] f32464m;

        /* compiled from: LocalCache.java */
        /* loaded from: classes2.dex */
        enum a extends f {
            a(String str, int i4) {
                super(str, i4, null);
            }

            @Override // com.google.common.cache.j.f
            <K, V> com.google.common.cache.n<K, V> e(r<K, V> rVar, K k10, int i4, @NullableDecl com.google.common.cache.n<K, V> nVar) {
                return new w(k10, i4, nVar);
            }
        }

        /* compiled from: LocalCache.java */
        /* loaded from: classes2.dex */
        enum b extends f {
            b(String str, int i4) {
                super(str, i4, null);
            }

            @Override // com.google.common.cache.j.f
            <K, V> com.google.common.cache.n<K, V> b(r<K, V> rVar, com.google.common.cache.n<K, V> nVar, com.google.common.cache.n<K, V> nVar2) {
                com.google.common.cache.n<K, V> b10 = super.b(rVar, nVar, nVar2);
                a(nVar, b10);
                return b10;
            }

            @Override // com.google.common.cache.j.f
            <K, V> com.google.common.cache.n<K, V> e(r<K, V> rVar, K k10, int i4, @NullableDecl com.google.common.cache.n<K, V> nVar) {
                return new u(k10, i4, nVar);
            }
        }

        /* compiled from: LocalCache.java */
        /* loaded from: classes2.dex */
        enum c extends f {
            c(String str, int i4) {
                super(str, i4, null);
            }

            @Override // com.google.common.cache.j.f
            <K, V> com.google.common.cache.n<K, V> b(r<K, V> rVar, com.google.common.cache.n<K, V> nVar, com.google.common.cache.n<K, V> nVar2) {
                com.google.common.cache.n<K, V> b10 = super.b(rVar, nVar, nVar2);
                c(nVar, b10);
                return b10;
            }

            @Override // com.google.common.cache.j.f
            <K, V> com.google.common.cache.n<K, V> e(r<K, V> rVar, K k10, int i4, @NullableDecl com.google.common.cache.n<K, V> nVar) {
                return new y(k10, i4, nVar);
            }
        }

        /* compiled from: LocalCache.java */
        /* loaded from: classes2.dex */
        enum d extends f {
            d(String str, int i4) {
                super(str, i4, null);
            }

            @Override // com.google.common.cache.j.f
            <K, V> com.google.common.cache.n<K, V> b(r<K, V> rVar, com.google.common.cache.n<K, V> nVar, com.google.common.cache.n<K, V> nVar2) {
                com.google.common.cache.n<K, V> b10 = super.b(rVar, nVar, nVar2);
                a(nVar, b10);
                c(nVar, b10);
                return b10;
            }

            @Override // com.google.common.cache.j.f
            <K, V> com.google.common.cache.n<K, V> e(r<K, V> rVar, K k10, int i4, @NullableDecl com.google.common.cache.n<K, V> nVar) {
                return new v(k10, i4, nVar);
            }
        }

        /* compiled from: LocalCache.java */
        /* loaded from: classes2.dex */
        enum e extends f {
            e(String str, int i4) {
                super(str, i4, null);
            }

            @Override // com.google.common.cache.j.f
            <K, V> com.google.common.cache.n<K, V> e(r<K, V> rVar, K k10, int i4, @NullableDecl com.google.common.cache.n<K, V> nVar) {
                return new e0(rVar.f32526h, k10, i4, nVar);
            }
        }

        /* compiled from: LocalCache.java */
        /* renamed from: com.google.common.cache.j$f$f  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        enum C0211f extends f {
            C0211f(String str, int i4) {
                super(str, i4, null);
            }

            @Override // com.google.common.cache.j.f
            <K, V> com.google.common.cache.n<K, V> b(r<K, V> rVar, com.google.common.cache.n<K, V> nVar, com.google.common.cache.n<K, V> nVar2) {
                com.google.common.cache.n<K, V> b10 = super.b(rVar, nVar, nVar2);
                a(nVar, b10);
                return b10;
            }

            @Override // com.google.common.cache.j.f
            <K, V> com.google.common.cache.n<K, V> e(r<K, V> rVar, K k10, int i4, @NullableDecl com.google.common.cache.n<K, V> nVar) {
                return new c0(rVar.f32526h, k10, i4, nVar);
            }
        }

        /* compiled from: LocalCache.java */
        /* loaded from: classes2.dex */
        enum g extends f {
            g(String str, int i4) {
                super(str, i4, null);
            }

            @Override // com.google.common.cache.j.f
            <K, V> com.google.common.cache.n<K, V> b(r<K, V> rVar, com.google.common.cache.n<K, V> nVar, com.google.common.cache.n<K, V> nVar2) {
                com.google.common.cache.n<K, V> b10 = super.b(rVar, nVar, nVar2);
                c(nVar, b10);
                return b10;
            }

            @Override // com.google.common.cache.j.f
            <K, V> com.google.common.cache.n<K, V> e(r<K, V> rVar, K k10, int i4, @NullableDecl com.google.common.cache.n<K, V> nVar) {
                return new g0(rVar.f32526h, k10, i4, nVar);
            }
        }

        /* compiled from: LocalCache.java */
        /* loaded from: classes2.dex */
        enum h extends f {
            h(String str, int i4) {
                super(str, i4, null);
            }

            @Override // com.google.common.cache.j.f
            <K, V> com.google.common.cache.n<K, V> b(r<K, V> rVar, com.google.common.cache.n<K, V> nVar, com.google.common.cache.n<K, V> nVar2) {
                com.google.common.cache.n<K, V> b10 = super.b(rVar, nVar, nVar2);
                a(nVar, b10);
                c(nVar, b10);
                return b10;
            }

            @Override // com.google.common.cache.j.f
            <K, V> com.google.common.cache.n<K, V> e(r<K, V> rVar, K k10, int i4, @NullableDecl com.google.common.cache.n<K, V> nVar) {
                return new d0(rVar.f32526h, k10, i4, nVar);
            }
        }

        static {
            a aVar = new a("STRONG", 0);
            f32452a = aVar;
            b bVar = new b("STRONG_ACCESS", 1);
            f32453b = bVar;
            c cVar = new c("STRONG_WRITE", 2);
            f32454c = cVar;
            d dVar = new d("STRONG_ACCESS_WRITE", 3);
            f32455d = dVar;
            e eVar = new e("WEAK", 4);
            f32456e = eVar;
            C0211f c0211f = new C0211f("WEAK_ACCESS", 5);
            f32457f = c0211f;
            g gVar = new g("WEAK_WRITE", 6);
            f32458g = gVar;
            h hVar = new h("WEAK_ACCESS_WRITE", 7);
            f32459h = hVar;
            f32464m = new f[]{aVar, bVar, cVar, dVar, eVar, c0211f, gVar, hVar};
            f32463l = new f[]{aVar, bVar, cVar, dVar, eVar, c0211f, gVar, hVar};
        }

        private f(String str, int i4) {
        }

        static f d(t tVar, boolean z9, boolean z10) {
            return f32463l[(tVar == t.f32541c ? 4 : 0) | (z9 ? 1 : 0) | (z10 ? 2 : 0)];
        }

        public static f valueOf(String str) {
            return (f) Enum.valueOf(f.class, str);
        }

        public static f[] values() {
            return (f[]) f32464m.clone();
        }

        <K, V> void a(com.google.common.cache.n<K, V> nVar, com.google.common.cache.n<K, V> nVar2) {
            nVar2.n(nVar.o());
            j.c(nVar.d(), nVar2);
            j.c(nVar2, nVar.h());
            j.F(nVar);
        }

        <K, V> com.google.common.cache.n<K, V> b(r<K, V> rVar, com.google.common.cache.n<K, V> nVar, com.google.common.cache.n<K, V> nVar2) {
            return e(rVar, nVar.getKey(), nVar.b(), nVar2);
        }

        <K, V> void c(com.google.common.cache.n<K, V> nVar, com.google.common.cache.n<K, V> nVar2) {
            nVar2.p(nVar.m());
            j.d(nVar.k(), nVar2);
            j.d(nVar2, nVar.e());
            j.G(nVar);
        }

        abstract <K, V> com.google.common.cache.n<K, V> e(r<K, V> rVar, K k10, int i4, @NullableDecl com.google.common.cache.n<K, V> nVar);

        /* synthetic */ f(String str, int i4, a aVar) {
            this(str, i4);
        }
    }

    /* compiled from: LocalCache.java */
    /* loaded from: classes2.dex */
    static class f0<K, V> extends WeakReference<V> implements a0<K, V> {

        /* renamed from: a  reason: collision with root package name */
        final com.google.common.cache.n<K, V> f32465a;

        f0(ReferenceQueue<V> referenceQueue, V v9, com.google.common.cache.n<K, V> nVar) {
            super(v9, referenceQueue);
            this.f32465a = nVar;
        }

        @Override // com.google.common.cache.j.a0
        public boolean a() {
            return true;
        }

        @Override // com.google.common.cache.j.a0
        public boolean b() {
            return false;
        }

        @Override // com.google.common.cache.j.a0
        public com.google.common.cache.n<K, V> c() {
            return this.f32465a;
        }

        @Override // com.google.common.cache.j.a0
        public void d(V v9) {
        }

        @Override // com.google.common.cache.j.a0
        public int e() {
            return 1;
        }

        @Override // com.google.common.cache.j.a0
        public a0<K, V> f(ReferenceQueue<V> referenceQueue, V v9, com.google.common.cache.n<K, V> nVar) {
            return new f0(referenceQueue, v9, nVar);
        }

        @Override // com.google.common.cache.j.a0
        public V g() {
            return get();
        }
    }

    /* compiled from: LocalCache.java */
    /* loaded from: classes2.dex */
    final class g extends j<K, V>.i<Map.Entry<K, V>> {
        g() {
            super();
        }

        @Override // com.google.common.cache.j.i, java.util.Iterator
        /* renamed from: f */
        public Map.Entry<K, V> next() {
            return c();
        }
    }

    /* compiled from: LocalCache.java */
    /* loaded from: classes2.dex */
    static final class g0<K, V> extends e0<K, V> {

        /* renamed from: d  reason: collision with root package name */
        volatile long f32467d;

        /* renamed from: e  reason: collision with root package name */
        com.google.common.cache.n<K, V> f32468e;

        /* renamed from: f  reason: collision with root package name */
        com.google.common.cache.n<K, V> f32469f;

        g0(ReferenceQueue<K> referenceQueue, K k10, int i4, @NullableDecl com.google.common.cache.n<K, V> nVar) {
            super(referenceQueue, k10, i4, nVar);
            this.f32467d = Long.MAX_VALUE;
            this.f32468e = j.E();
            this.f32469f = j.E();
        }

        @Override // com.google.common.cache.j.e0, com.google.common.cache.n
        public com.google.common.cache.n<K, V> e() {
            return this.f32468e;
        }

        @Override // com.google.common.cache.j.e0, com.google.common.cache.n
        public com.google.common.cache.n<K, V> k() {
            return this.f32469f;
        }

        @Override // com.google.common.cache.j.e0, com.google.common.cache.n
        public long m() {
            return this.f32467d;
        }

        @Override // com.google.common.cache.j.e0, com.google.common.cache.n
        public void p(long j4) {
            this.f32467d = j4;
        }

        @Override // com.google.common.cache.j.e0, com.google.common.cache.n
        public void r(com.google.common.cache.n<K, V> nVar) {
            this.f32468e = nVar;
        }

        @Override // com.google.common.cache.j.e0, com.google.common.cache.n
        public void s(com.google.common.cache.n<K, V> nVar) {
            this.f32469f = nVar;
        }
    }

    /* compiled from: LocalCache.java */
    /* loaded from: classes2.dex */
    final class h extends j<K, V>.c<Map.Entry<K, V>> {
        h(ConcurrentMap<?, ?> concurrentMap) {
            super(concurrentMap);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            Map.Entry entry;
            Object key;
            Object obj2;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && (obj2 = j.this.get(key)) != null && j.this.f32414f.d(entry.getValue(), obj2);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new g();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            Map.Entry entry;
            Object key;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && j.this.remove(key, entry.getValue());
        }
    }

    /* compiled from: LocalCache.java */
    /* loaded from: classes2.dex */
    static final class h0<K, V> extends s<K, V> {

        /* renamed from: b  reason: collision with root package name */
        final int f32471b;

        h0(ReferenceQueue<V> referenceQueue, V v9, com.google.common.cache.n<K, V> nVar, int i4) {
            super(referenceQueue, v9, nVar);
            this.f32471b = i4;
        }

        @Override // com.google.common.cache.j.s, com.google.common.cache.j.a0
        public int e() {
            return this.f32471b;
        }

        @Override // com.google.common.cache.j.s, com.google.common.cache.j.a0
        public a0<K, V> f(ReferenceQueue<V> referenceQueue, V v9, com.google.common.cache.n<K, V> nVar) {
            return new h0(referenceQueue, v9, nVar, this.f32471b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LocalCache.java */
    /* loaded from: classes2.dex */
    public abstract class i<T> implements Iterator<T> {

        /* renamed from: a  reason: collision with root package name */
        int f32472a;

        /* renamed from: b  reason: collision with root package name */
        int f32473b = -1;
        @MonotonicNonNullDecl

        /* renamed from: c  reason: collision with root package name */
        r<K, V> f32474c;
        @MonotonicNonNullDecl

        /* renamed from: d  reason: collision with root package name */
        AtomicReferenceArray<com.google.common.cache.n<K, V>> f32475d;
        @NullableDecl

        /* renamed from: e  reason: collision with root package name */
        com.google.common.cache.n<K, V> f32476e;
        @NullableDecl

        /* renamed from: f  reason: collision with root package name */
        j<K, V>.l0 f32477f;
        @NullableDecl

        /* renamed from: g  reason: collision with root package name */
        j<K, V>.l0 f32478g;

        i() {
            this.f32472a = j.this.f32411c.length - 1;
            a();
        }

        final void a() {
            this.f32477f = null;
            if (d() || e()) {
                return;
            }
            while (true) {
                int i4 = this.f32472a;
                if (i4 < 0) {
                    return;
                }
                r<K, V>[] rVarArr = j.this.f32411c;
                this.f32472a = i4 - 1;
                r<K, V> rVar = rVarArr[i4];
                this.f32474c = rVar;
                if (rVar.f32520b != 0) {
                    AtomicReferenceArray<com.google.common.cache.n<K, V>> atomicReferenceArray = this.f32474c.f32524f;
                    this.f32475d = atomicReferenceArray;
                    this.f32473b = atomicReferenceArray.length() - 1;
                    if (e()) {
                        return;
                    }
                }
            }
        }

        boolean b(com.google.common.cache.n<K, V> nVar) {
            boolean z9;
            try {
                long a10 = j.this.f32424p.a();
                K key = nVar.getKey();
                Object s9 = j.this.s(nVar, a10);
                if (s9 != null) {
                    this.f32477f = new l0(key, s9);
                    z9 = true;
                } else {
                    z9 = false;
                }
                return z9;
            } finally {
                this.f32474c.H();
            }
        }

        j<K, V>.l0 c() {
            j<K, V>.l0 l0Var = this.f32477f;
            if (l0Var != null) {
                this.f32478g = l0Var;
                a();
                return this.f32478g;
            }
            throw new NoSuchElementException();
        }

        boolean d() {
            com.google.common.cache.n<K, V> nVar = this.f32476e;
            if (nVar == null) {
                return false;
            }
            while (true) {
                this.f32476e = nVar.c();
                com.google.common.cache.n<K, V> nVar2 = this.f32476e;
                if (nVar2 == null) {
                    return false;
                }
                if (b(nVar2)) {
                    return true;
                }
                nVar = this.f32476e;
            }
        }

        boolean e() {
            while (true) {
                int i4 = this.f32473b;
                if (i4 < 0) {
                    return false;
                }
                AtomicReferenceArray<com.google.common.cache.n<K, V>> atomicReferenceArray = this.f32475d;
                this.f32473b = i4 - 1;
                com.google.common.cache.n<K, V> nVar = atomicReferenceArray.get(i4);
                this.f32476e = nVar;
                if (nVar != null && (b(nVar) || d())) {
                    return true;
                }
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f32477f != null;
        }

        @Override // java.util.Iterator
        public abstract T next();

        @Override // java.util.Iterator
        public void remove() {
            com.google.common.base.a0.g0(this.f32478g != null);
            j.this.remove(this.f32478g.getKey());
            this.f32478g = null;
        }
    }

    /* compiled from: LocalCache.java */
    /* loaded from: classes2.dex */
    static final class i0<K, V> extends x<K, V> {

        /* renamed from: b  reason: collision with root package name */
        final int f32480b;

        i0(V v9, int i4) {
            super(v9);
            this.f32480b = i4;
        }

        @Override // com.google.common.cache.j.x, com.google.common.cache.j.a0
        public int e() {
            return this.f32480b;
        }
    }

    /* compiled from: LocalCache.java */
    /* renamed from: com.google.common.cache.j$j  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    final class C0212j extends j<K, V>.i<K> {
        C0212j() {
            super();
        }

        @Override // com.google.common.cache.j.i, java.util.Iterator
        public K next() {
            return c().getKey();
        }
    }

    /* compiled from: LocalCache.java */
    /* loaded from: classes2.dex */
    static final class j0<K, V> extends f0<K, V> {

        /* renamed from: b  reason: collision with root package name */
        final int f32482b;

        j0(ReferenceQueue<V> referenceQueue, V v9, com.google.common.cache.n<K, V> nVar, int i4) {
            super(referenceQueue, v9, nVar);
            this.f32482b = i4;
        }

        @Override // com.google.common.cache.j.f0, com.google.common.cache.j.a0
        public int e() {
            return this.f32482b;
        }

        @Override // com.google.common.cache.j.f0, com.google.common.cache.j.a0
        public a0<K, V> f(ReferenceQueue<V> referenceQueue, V v9, com.google.common.cache.n<K, V> nVar) {
            return new j0(referenceQueue, v9, nVar, this.f32482b);
        }
    }

    /* compiled from: LocalCache.java */
    /* loaded from: classes2.dex */
    final class k extends j<K, V>.c<K> {
        k(ConcurrentMap<?, ?> concurrentMap) {
            super(concurrentMap);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return this.f32433a.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new C0212j();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return this.f32433a.remove(obj) != null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LocalCache.java */
    /* loaded from: classes2.dex */
    public static final class k0<K, V> extends AbstractQueue<com.google.common.cache.n<K, V>> {

        /* renamed from: a  reason: collision with root package name */
        final com.google.common.cache.n<K, V> f32484a = new a();

        /* compiled from: LocalCache.java */
        /* loaded from: classes2.dex */
        class a extends d<K, V> {

            /* renamed from: a  reason: collision with root package name */
            com.google.common.cache.n<K, V> f32485a = this;

            /* renamed from: b  reason: collision with root package name */
            com.google.common.cache.n<K, V> f32486b = this;

            a() {
            }

            @Override // com.google.common.cache.j.d, com.google.common.cache.n
            public com.google.common.cache.n<K, V> e() {
                return this.f32485a;
            }

            @Override // com.google.common.cache.j.d, com.google.common.cache.n
            public com.google.common.cache.n<K, V> k() {
                return this.f32486b;
            }

            @Override // com.google.common.cache.j.d, com.google.common.cache.n
            public long m() {
                return Long.MAX_VALUE;
            }

            @Override // com.google.common.cache.j.d, com.google.common.cache.n
            public void p(long j4) {
            }

            @Override // com.google.common.cache.j.d, com.google.common.cache.n
            public void r(com.google.common.cache.n<K, V> nVar) {
                this.f32485a = nVar;
            }

            @Override // com.google.common.cache.j.d, com.google.common.cache.n
            public void s(com.google.common.cache.n<K, V> nVar) {
                this.f32486b = nVar;
            }
        }

        /* compiled from: LocalCache.java */
        /* loaded from: classes2.dex */
        class b extends com.google.common.collect.l<com.google.common.cache.n<K, V>> {
            b(com.google.common.cache.n nVar) {
                super(nVar);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.l
            /* renamed from: b */
            public com.google.common.cache.n<K, V> a(com.google.common.cache.n<K, V> nVar) {
                com.google.common.cache.n<K, V> e4 = nVar.e();
                if (e4 == k0.this.f32484a) {
                    return null;
                }
                return e4;
            }
        }

        k0() {
        }

        @Override // java.util.Queue
        /* renamed from: a */
        public boolean offer(com.google.common.cache.n<K, V> nVar) {
            j.d(nVar.k(), nVar.e());
            j.d(this.f32484a.k(), nVar);
            j.d(nVar, this.f32484a);
            return true;
        }

        @Override // java.util.Queue
        /* renamed from: b */
        public com.google.common.cache.n<K, V> peek() {
            com.google.common.cache.n<K, V> e4 = this.f32484a.e();
            if (e4 == this.f32484a) {
                return null;
            }
            return e4;
        }

        @Override // java.util.Queue
        /* renamed from: c */
        public com.google.common.cache.n<K, V> poll() {
            com.google.common.cache.n<K, V> e4 = this.f32484a.e();
            if (e4 == this.f32484a) {
                return null;
            }
            remove(e4);
            return e4;
        }

        @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
        public void clear() {
            com.google.common.cache.n<K, V> e4 = this.f32484a.e();
            while (true) {
                com.google.common.cache.n<K, V> nVar = this.f32484a;
                if (e4 != nVar) {
                    com.google.common.cache.n<K, V> e10 = e4.e();
                    j.G(e4);
                    e4 = e10;
                } else {
                    nVar.r(nVar);
                    com.google.common.cache.n<K, V> nVar2 = this.f32484a;
                    nVar2.s(nVar2);
                    return;
                }
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return ((com.google.common.cache.n) obj).e() != q.INSTANCE;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return this.f32484a.e() == this.f32484a;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<com.google.common.cache.n<K, V>> iterator() {
            return new b(peek());
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            com.google.common.cache.n nVar = (com.google.common.cache.n) obj;
            com.google.common.cache.n<K, V> k10 = nVar.k();
            com.google.common.cache.n<K, V> e4 = nVar.e();
            j.d(k10, e4);
            j.G(nVar);
            return e4 != q.INSTANCE;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            int i4 = 0;
            for (com.google.common.cache.n<K, V> e4 = this.f32484a.e(); e4 != this.f32484a; e4 = e4.e()) {
                i4++;
            }
            return i4;
        }
    }

    /* compiled from: LocalCache.java */
    /* loaded from: classes2.dex */
    static final class l<K, V> extends p<K, V> implements com.google.common.cache.i<K, V>, Serializable {

        /* renamed from: p  reason: collision with root package name */
        private static final long f32489p = 1;
        @MonotonicNonNullDecl

        /* renamed from: o  reason: collision with root package name */
        transient com.google.common.cache.i<K, V> f32490o;

        l(j<K, V> jVar) {
            super(jVar);
        }

        private void N(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            objectInputStream.defaultReadObject();
            this.f32490o = (com.google.common.cache.i<K, V>) P().b((CacheLoader<? super K, V>) this.f32515l);
        }

        private Object O() {
            return this.f32490o;
        }

        @Override // com.google.common.cache.i
        public void D(K k10) {
            this.f32490o.D(k10);
        }

        @Override // com.google.common.cache.i, com.google.common.base.q
        public final V apply(K k10) {
            return this.f32490o.apply(k10);
        }

        @Override // com.google.common.cache.i
        public V b(K k10) {
            return this.f32490o.b(k10);
        }

        @Override // com.google.common.cache.i
        public V get(K k10) throws ExecutionException {
            return this.f32490o.get(k10);
        }

        @Override // com.google.common.cache.i
        public ImmutableMap<K, V> h(Iterable<? extends K> iterable) throws ExecutionException {
            return this.f32490o.h(iterable);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LocalCache.java */
    /* loaded from: classes2.dex */
    public final class l0 implements Map.Entry<K, V> {

        /* renamed from: a  reason: collision with root package name */
        final K f32491a;

        /* renamed from: b  reason: collision with root package name */
        V f32492b;

        l0(K k10, V v9) {
            this.f32491a = k10;
            this.f32492b = v9;
        }

        @Override // java.util.Map.Entry
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                return this.f32491a.equals(entry.getKey()) && this.f32492b.equals(entry.getValue());
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f32491a;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f32492b;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            return this.f32491a.hashCode() ^ this.f32492b.hashCode();
        }

        @Override // java.util.Map.Entry
        public V setValue(V v9) {
            V v10 = (V) j.this.put(this.f32491a, v9);
            this.f32492b = v9;
            return v10;
        }

        public String toString() {
            return getKey() + "=" + getValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LocalCache.java */
    /* loaded from: classes2.dex */
    public static class m<K, V> implements a0<K, V> {

        /* renamed from: a  reason: collision with root package name */
        volatile a0<K, V> f32494a;

        /* renamed from: b  reason: collision with root package name */
        final e1<V> f32495b;

        /* renamed from: c  reason: collision with root package name */
        final com.google.common.base.g0 f32496c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: LocalCache.java */
        /* loaded from: classes2.dex */
        public class a implements com.google.common.base.q<V, V> {
            a() {
            }

            @Override // com.google.common.base.q
            public V apply(V v9) {
                m.this.l(v9);
                return v9;
            }
        }

        public m() {
            this(j.S());
        }

        private q0<V> i(Throwable th) {
            return com.google.common.util.concurrent.j0.m(th);
        }

        @Override // com.google.common.cache.j.a0
        public boolean a() {
            return this.f32494a.a();
        }

        @Override // com.google.common.cache.j.a0
        public boolean b() {
            return true;
        }

        @Override // com.google.common.cache.j.a0
        public com.google.common.cache.n<K, V> c() {
            return null;
        }

        @Override // com.google.common.cache.j.a0
        public void d(@NullableDecl V v9) {
            if (v9 != null) {
                l(v9);
            } else {
                this.f32494a = j.S();
            }
        }

        @Override // com.google.common.cache.j.a0
        public int e() {
            return this.f32494a.e();
        }

        @Override // com.google.common.cache.j.a0
        public a0<K, V> f(ReferenceQueue<V> referenceQueue, @NullableDecl V v9, com.google.common.cache.n<K, V> nVar) {
            return this;
        }

        @Override // com.google.common.cache.j.a0
        public V g() throws ExecutionException {
            return (V) n1.d(this.f32495b);
        }

        @Override // com.google.common.cache.j.a0
        public V get() {
            return this.f32494a.get();
        }

        public long h() {
            return this.f32496c.g(TimeUnit.NANOSECONDS);
        }

        public a0<K, V> j() {
            return this.f32494a;
        }

        public q0<V> k(K k10, CacheLoader<? super K, V> cacheLoader) {
            try {
                this.f32496c.k();
                V v9 = this.f32494a.get();
                if (v9 == null) {
                    V d4 = cacheLoader.d(k10);
                    return l(d4) ? this.f32495b : com.google.common.util.concurrent.j0.n(d4);
                }
                q0<V> h4 = cacheLoader.h(k10, v9);
                if (h4 == null) {
                    return com.google.common.util.concurrent.j0.n(null);
                }
                return com.google.common.util.concurrent.j0.w(h4, new a(), x0.c());
            } catch (Throwable th) {
                q0<V> i4 = m(th) ? this.f32495b : i(th);
                if (th instanceof InterruptedException) {
                    Thread.currentThread().interrupt();
                }
                return i4;
            }
        }

        public boolean l(@NullableDecl V v9) {
            return this.f32495b.M(v9);
        }

        public boolean m(Throwable th) {
            return this.f32495b.N(th);
        }

        public m(a0<K, V> a0Var) {
            this.f32495b = e1.R();
            this.f32496c = com.google.common.base.g0.e();
            this.f32494a = a0Var;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LocalCache.java */
    /* loaded from: classes2.dex */
    public static class n<K, V> extends o<K, V> implements com.google.common.cache.i<K, V> {

        /* renamed from: c  reason: collision with root package name */
        private static final long f32498c = 1;

        /* JADX INFO: Access modifiers changed from: package-private */
        public n(com.google.common.cache.d<? super K, ? super V> dVar, CacheLoader<? super K, V> cacheLoader) {
            super(new j(dVar, (CacheLoader) com.google.common.base.a0.E(cacheLoader)), null);
        }

        @Override // com.google.common.cache.i
        public void D(K k10) {
            this.f32500a.N(k10);
        }

        @Override // com.google.common.cache.j.o
        Object a() {
            return new l(this.f32500a);
        }

        @Override // com.google.common.cache.i, com.google.common.base.q
        public final V apply(K k10) {
            return b(k10);
        }

        @Override // com.google.common.cache.i
        public V b(K k10) {
            try {
                return get(k10);
            } catch (ExecutionException e4) {
                throw new UncheckedExecutionException(e4.getCause());
            }
        }

        @Override // com.google.common.cache.i
        public V get(K k10) throws ExecutionException {
            return this.f32500a.t(k10);
        }

        @Override // com.google.common.cache.i
        public ImmutableMap<K, V> h(Iterable<? extends K> iterable) throws ExecutionException {
            return this.f32500a.n(iterable);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LocalCache.java */
    /* loaded from: classes2.dex */
    public static class o<K, V> implements com.google.common.cache.c<K, V>, Serializable {

        /* renamed from: b  reason: collision with root package name */
        private static final long f32499b = 1;

        /* renamed from: a  reason: collision with root package name */
        final j<K, V> f32500a;

        /* compiled from: LocalCache.java */
        /* loaded from: classes2.dex */
        class a extends CacheLoader<Object, V> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Callable f32501a;

            a(Callable callable) {
                this.f32501a = callable;
            }

            @Override // com.google.common.cache.CacheLoader
            public V d(Object obj) throws Exception {
                return (V) this.f32501a.call();
            }
        }

        /* synthetic */ o(j jVar, a aVar) {
            this(jVar);
        }

        @Override // com.google.common.cache.c
        public ImmutableMap<K, V> G(Iterable<?> iterable) {
            return this.f32500a.o(iterable);
        }

        @Override // com.google.common.cache.c
        public com.google.common.cache.f J() {
            a.C0208a c0208a = new a.C0208a();
            c0208a.g(this.f32500a.f32426r);
            for (r<K, V> rVar : this.f32500a.f32411c) {
                c0208a.g(rVar.f32532n);
            }
            return c0208a.f();
        }

        @Override // com.google.common.cache.c
        public void K() {
            this.f32500a.clear();
        }

        Object a() {
            return new p(this.f32500a);
        }

        @Override // com.google.common.cache.c
        public ConcurrentMap<K, V> asMap() {
            return this.f32500a;
        }

        @Override // com.google.common.cache.c
        public void c() {
            this.f32500a.b();
        }

        @Override // com.google.common.cache.c
        public V e(K k10, Callable<? extends V> callable) throws ExecutionException {
            com.google.common.base.a0.E(callable);
            return this.f32500a.m(k10, new a(callable));
        }

        @Override // com.google.common.cache.c
        public void put(K k10, V v9) {
            this.f32500a.put(k10, v9);
        }

        @Override // com.google.common.cache.c
        public void putAll(Map<? extends K, ? extends V> map) {
            this.f32500a.putAll(map);
        }

        @Override // com.google.common.cache.c
        public void q(Object obj) {
            com.google.common.base.a0.E(obj);
            this.f32500a.remove(obj);
        }

        @Override // com.google.common.cache.c
        @NullableDecl
        public V s(Object obj) {
            return this.f32500a.q(obj);
        }

        @Override // com.google.common.cache.c
        public long size() {
            return this.f32500a.A();
        }

        @Override // com.google.common.cache.c
        public void u(Iterable<?> iterable) {
            this.f32500a.v(iterable);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public o(com.google.common.cache.d<? super K, ? super V> dVar) {
            this(new j(dVar, null));
        }

        private o(j<K, V> jVar) {
            this.f32500a = jVar;
        }
    }

    /* compiled from: LocalCache.java */
    /* loaded from: classes2.dex */
    static class p<K, V> extends com.google.common.cache.g<K, V> implements Serializable {

        /* renamed from: n  reason: collision with root package name */
        private static final long f32503n = 1;

        /* renamed from: a  reason: collision with root package name */
        final t f32504a;

        /* renamed from: b  reason: collision with root package name */
        final t f32505b;

        /* renamed from: c  reason: collision with root package name */
        final Equivalence<Object> f32506c;

        /* renamed from: d  reason: collision with root package name */
        final Equivalence<Object> f32507d;

        /* renamed from: e  reason: collision with root package name */
        final long f32508e;

        /* renamed from: f  reason: collision with root package name */
        final long f32509f;

        /* renamed from: g  reason: collision with root package name */
        final long f32510g;

        /* renamed from: h  reason: collision with root package name */
        final com.google.common.cache.r<K, V> f32511h;

        /* renamed from: i  reason: collision with root package name */
        final int f32512i;

        /* renamed from: j  reason: collision with root package name */
        final com.google.common.cache.o<? super K, ? super V> f32513j;
        @NullableDecl

        /* renamed from: k  reason: collision with root package name */
        final com.google.common.base.l0 f32514k;

        /* renamed from: l  reason: collision with root package name */
        final CacheLoader<? super K, V> f32515l;
        @MonotonicNonNullDecl

        /* renamed from: m  reason: collision with root package name */
        transient com.google.common.cache.c<K, V> f32516m;

        p(j<K, V> jVar) {
            this(jVar.f32415g, jVar.f32416h, jVar.f32413e, jVar.f32414f, jVar.f32420l, jVar.f32419k, jVar.f32417i, jVar.f32418j, jVar.f32412d, jVar.f32423o, jVar.f32424p, jVar.f32427s);
        }

        private void N(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            objectInputStream.defaultReadObject();
            this.f32516m = (com.google.common.cache.c<K, V>) P().a();
        }

        private Object O() {
            return this.f32516m;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.cache.g, com.google.common.collect.v1
        /* renamed from: M */
        public com.google.common.cache.c<K, V> L() {
            return this.f32516m;
        }

        com.google.common.cache.d<K, V> P() {
            com.google.common.cache.d<K, V> dVar = (com.google.common.cache.d<K, V>) com.google.common.cache.d.D().H(this.f32504a).I(this.f32505b).z(this.f32506c).L(this.f32507d).e(this.f32512i).G((com.google.common.cache.o<? super K, ? super V>) this.f32513j);
            dVar.f32357a = false;
            long j4 = this.f32508e;
            if (j4 > 0) {
                dVar.g(j4, TimeUnit.NANOSECONDS);
            }
            long j10 = this.f32509f;
            if (j10 > 0) {
                dVar.f(j10, TimeUnit.NANOSECONDS);
            }
            com.google.common.cache.r rVar = this.f32511h;
            if (rVar != d.e.INSTANCE) {
                dVar.O(rVar);
                long j11 = this.f32510g;
                if (j11 != -1) {
                    dVar.C(j11);
                }
            } else {
                long j12 = this.f32510g;
                if (j12 != -1) {
                    dVar.B(j12);
                }
            }
            com.google.common.base.l0 l0Var = this.f32514k;
            if (l0Var != null) {
                dVar.K(l0Var);
            }
            return dVar;
        }

        private p(t tVar, t tVar2, Equivalence<Object> equivalence, Equivalence<Object> equivalence2, long j4, long j10, long j11, com.google.common.cache.r<K, V> rVar, int i4, com.google.common.cache.o<? super K, ? super V> oVar, com.google.common.base.l0 l0Var, CacheLoader<? super K, V> cacheLoader) {
            this.f32504a = tVar;
            this.f32505b = tVar2;
            this.f32506c = equivalence;
            this.f32507d = equivalence2;
            this.f32508e = j4;
            this.f32509f = j10;
            this.f32510g = j11;
            this.f32511h = rVar;
            this.f32512i = i4;
            this.f32513j = oVar;
            this.f32514k = (l0Var == com.google.common.base.l0.b() || l0Var == com.google.common.cache.d.f32354x) ? null : null;
            this.f32515l = cacheLoader;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: LocalCache.java */
    /* loaded from: classes2.dex */
    public enum q implements com.google.common.cache.n<Object, Object> {
        INSTANCE;

        @Override // com.google.common.cache.n
        public a0<Object, Object> a() {
            return null;
        }

        @Override // com.google.common.cache.n
        public int b() {
            return 0;
        }

        @Override // com.google.common.cache.n
        public com.google.common.cache.n<Object, Object> c() {
            return null;
        }

        @Override // com.google.common.cache.n
        public com.google.common.cache.n<Object, Object> d() {
            return this;
        }

        @Override // com.google.common.cache.n
        public com.google.common.cache.n<Object, Object> e() {
            return this;
        }

        @Override // com.google.common.cache.n
        public Object getKey() {
            return null;
        }

        @Override // com.google.common.cache.n
        public com.google.common.cache.n<Object, Object> h() {
            return this;
        }

        @Override // com.google.common.cache.n
        public void i(com.google.common.cache.n<Object, Object> nVar) {
        }

        @Override // com.google.common.cache.n
        public com.google.common.cache.n<Object, Object> k() {
            return this;
        }

        @Override // com.google.common.cache.n
        public void l(a0<Object, Object> a0Var) {
        }

        @Override // com.google.common.cache.n
        public long m() {
            return 0L;
        }

        @Override // com.google.common.cache.n
        public void n(long j4) {
        }

        @Override // com.google.common.cache.n
        public long o() {
            return 0L;
        }

        @Override // com.google.common.cache.n
        public void p(long j4) {
        }

        @Override // com.google.common.cache.n
        public void q(com.google.common.cache.n<Object, Object> nVar) {
        }

        @Override // com.google.common.cache.n
        public void r(com.google.common.cache.n<Object, Object> nVar) {
        }

        @Override // com.google.common.cache.n
        public void s(com.google.common.cache.n<Object, Object> nVar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LocalCache.java */
    /* loaded from: classes2.dex */
    public static class r<K, V> extends ReentrantLock {
        @Weak

        /* renamed from: a  reason: collision with root package name */
        final j<K, V> f32519a;

        /* renamed from: b  reason: collision with root package name */
        volatile int f32520b;
        @GuardedBy("this")

        /* renamed from: c  reason: collision with root package name */
        long f32521c;

        /* renamed from: d  reason: collision with root package name */
        int f32522d;

        /* renamed from: e  reason: collision with root package name */
        int f32523e;
        @MonotonicNonNullDecl

        /* renamed from: f  reason: collision with root package name */
        volatile AtomicReferenceArray<com.google.common.cache.n<K, V>> f32524f;

        /* renamed from: g  reason: collision with root package name */
        final long f32525g;
        @NullableDecl

        /* renamed from: h  reason: collision with root package name */
        final ReferenceQueue<K> f32526h;
        @NullableDecl

        /* renamed from: i  reason: collision with root package name */
        final ReferenceQueue<V> f32527i;

        /* renamed from: j  reason: collision with root package name */
        final Queue<com.google.common.cache.n<K, V>> f32528j;

        /* renamed from: k  reason: collision with root package name */
        final AtomicInteger f32529k = new AtomicInteger();
        @GuardedBy("this")

        /* renamed from: l  reason: collision with root package name */
        final Queue<com.google.common.cache.n<K, V>> f32530l;
        @GuardedBy("this")

        /* renamed from: m  reason: collision with root package name */
        final Queue<com.google.common.cache.n<K, V>> f32531m;

        /* renamed from: n  reason: collision with root package name */
        final a.b f32532n;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: LocalCache.java */
        /* loaded from: classes2.dex */
        public class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Object f32533a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ int f32534b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ m f32535c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ q0 f32536d;

            a(Object obj, int i4, m mVar, q0 q0Var) {
                this.f32533a = obj;
                this.f32534b = i4;
                this.f32535c = mVar;
                this.f32536d = q0Var;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                try {
                    r.this.u(this.f32533a, this.f32534b, this.f32535c, this.f32536d);
                } catch (Throwable th) {
                    j.B.log(Level.WARNING, "Exception thrown during refresh", th);
                    this.f32535c.m(th);
                }
            }
        }

        r(j<K, V> jVar, int i4, long j4, a.b bVar) {
            this.f32519a = jVar;
            this.f32525g = j4;
            this.f32532n = (a.b) com.google.common.base.a0.E(bVar);
            A(G(i4));
            this.f32526h = jVar.V() ? new ReferenceQueue<>() : null;
            this.f32527i = jVar.W() ? new ReferenceQueue<>() : null;
            this.f32528j = jVar.U() ? new ConcurrentLinkedQueue<>() : j.h();
            this.f32530l = jVar.Y() ? new k0<>() : j.h();
            this.f32531m = jVar.U() ? new e<>() : j.h();
        }

        void A(AtomicReferenceArray<com.google.common.cache.n<K, V>> atomicReferenceArray) {
            this.f32523e = (atomicReferenceArray.length() * 3) / 4;
            if (!this.f32519a.g()) {
                int i4 = this.f32523e;
                if (i4 == this.f32525g) {
                    this.f32523e = i4 + 1;
                }
            }
            this.f32524f = atomicReferenceArray;
        }

        @NullableDecl
        m<K, V> B(K k10, int i4, boolean z9) {
            lock();
            try {
                long a10 = this.f32519a.f32424p.a();
                J(a10);
                AtomicReferenceArray<com.google.common.cache.n<K, V>> atomicReferenceArray = this.f32524f;
                int length = (atomicReferenceArray.length() - 1) & i4;
                com.google.common.cache.n<K, V> nVar = atomicReferenceArray.get(length);
                for (com.google.common.cache.n<K, V> nVar2 = nVar; nVar2 != null; nVar2 = nVar2.c()) {
                    K key = nVar2.getKey();
                    if (nVar2.b() == i4 && key != null && this.f32519a.f32413e.d(k10, key)) {
                        a0<K, V> a11 = nVar2.a();
                        if (!a11.b() && (!z9 || a10 - nVar2.m() >= this.f32519a.f32421m)) {
                            this.f32522d++;
                            m<K, V> mVar = new m<>(a11);
                            nVar2.l(mVar);
                            return mVar;
                        }
                        return null;
                    }
                }
                this.f32522d++;
                m<K, V> mVar2 = new m<>();
                com.google.common.cache.n<K, V> F = F(k10, i4, nVar);
                F.l(mVar2);
                atomicReferenceArray.set(length, F);
                return mVar2;
            } finally {
                unlock();
                I();
            }
        }

        q0<V> C(K k10, int i4, m<K, V> mVar, CacheLoader<? super K, V> cacheLoader) {
            q0<V> k11 = mVar.k(k10, cacheLoader);
            k11.addListener(new a(k10, i4, mVar, k11), x0.c());
            return k11;
        }

        V D(K k10, int i4, m<K, V> mVar, CacheLoader<? super K, V> cacheLoader) throws ExecutionException {
            return u(k10, i4, mVar, mVar.k(k10, cacheLoader));
        }

        V E(K k10, int i4, CacheLoader<? super K, V> cacheLoader) throws ExecutionException {
            m<K, V> mVar;
            a0<K, V> a0Var;
            boolean z9;
            V D;
            lock();
            try {
                long a10 = this.f32519a.f32424p.a();
                J(a10);
                int i10 = this.f32520b - 1;
                AtomicReferenceArray<com.google.common.cache.n<K, V>> atomicReferenceArray = this.f32524f;
                int length = i4 & (atomicReferenceArray.length() - 1);
                com.google.common.cache.n<K, V> nVar = atomicReferenceArray.get(length);
                com.google.common.cache.n<K, V> nVar2 = nVar;
                while (true) {
                    mVar = null;
                    if (nVar2 == null) {
                        a0Var = null;
                        break;
                    }
                    K key = nVar2.getKey();
                    if (nVar2.b() == i4 && key != null && this.f32519a.f32413e.d(k10, key)) {
                        a0<K, V> a11 = nVar2.a();
                        if (a11.b()) {
                            z9 = false;
                            a0Var = a11;
                        } else {
                            V v9 = a11.get();
                            if (v9 == null) {
                                o(key, i4, v9, a11.e(), RemovalCause.COLLECTED);
                            } else if (this.f32519a.w(nVar2, a10)) {
                                o(key, i4, v9, a11.e(), RemovalCause.EXPIRED);
                            } else {
                                N(nVar2, a10);
                                this.f32532n.a(1);
                                return v9;
                            }
                            this.f32530l.remove(nVar2);
                            this.f32531m.remove(nVar2);
                            this.f32520b = i10;
                            a0Var = a11;
                        }
                    } else {
                        nVar2 = nVar2.c();
                    }
                }
                z9 = true;
                if (z9) {
                    mVar = new m<>();
                    if (nVar2 == null) {
                        nVar2 = F(k10, i4, nVar);
                        nVar2.l(mVar);
                        atomicReferenceArray.set(length, nVar2);
                    } else {
                        nVar2.l(mVar);
                    }
                }
                if (z9) {
                    try {
                        synchronized (nVar2) {
                            D = D(k10, i4, mVar, cacheLoader);
                        }
                        return D;
                    } finally {
                        this.f32532n.b(1);
                    }
                }
                return h0(nVar2, k10, a0Var);
            } finally {
                unlock();
                I();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @GuardedBy("this")
        com.google.common.cache.n<K, V> F(K k10, int i4, @NullableDecl com.google.common.cache.n<K, V> nVar) {
            return this.f32519a.f32425q.e(this, com.google.common.base.a0.E(k10), i4, nVar);
        }

        AtomicReferenceArray<com.google.common.cache.n<K, V>> G(int i4) {
            return new AtomicReferenceArray<>(i4);
        }

        void H() {
            if ((this.f32529k.incrementAndGet() & 63) == 0) {
                a();
            }
        }

        void I() {
            b0();
        }

        @GuardedBy("this")
        void J(long j4) {
            a0(j4);
        }

        @NullableDecl
        V K(K k10, int i4, V v9, boolean z9) {
            int i10;
            lock();
            try {
                long a10 = this.f32519a.f32424p.a();
                J(a10);
                if (this.f32520b + 1 > this.f32523e) {
                    q();
                }
                AtomicReferenceArray<com.google.common.cache.n<K, V>> atomicReferenceArray = this.f32524f;
                int length = i4 & (atomicReferenceArray.length() - 1);
                com.google.common.cache.n<K, V> nVar = atomicReferenceArray.get(length);
                com.google.common.cache.n<K, V> nVar2 = nVar;
                while (true) {
                    if (nVar2 != null) {
                        K key = nVar2.getKey();
                        if (nVar2.b() == i4 && key != null && this.f32519a.f32413e.d(k10, key)) {
                            a0<K, V> a11 = nVar2.a();
                            V v10 = a11.get();
                            if (v10 != null) {
                                if (z9) {
                                    N(nVar2, a10);
                                } else {
                                    this.f32522d++;
                                    o(k10, i4, v10, a11.e(), RemovalCause.REPLACED);
                                    d0(nVar2, k10, v9, a10);
                                    p(nVar2);
                                }
                                return v10;
                            }
                            this.f32522d++;
                            if (a11.a()) {
                                o(k10, i4, v10, a11.e(), RemovalCause.COLLECTED);
                                d0(nVar2, k10, v9, a10);
                                i10 = this.f32520b;
                            } else {
                                d0(nVar2, k10, v9, a10);
                                i10 = this.f32520b + 1;
                            }
                            this.f32520b = i10;
                            p(nVar2);
                        } else {
                            nVar2 = nVar2.c();
                        }
                    } else {
                        this.f32522d++;
                        com.google.common.cache.n<K, V> F = F(k10, i4, nVar);
                        d0(F, k10, v9, a10);
                        atomicReferenceArray.set(length, F);
                        this.f32520b++;
                        p(F);
                        break;
                    }
                }
                return null;
            } finally {
                unlock();
                I();
            }
        }

        boolean L(com.google.common.cache.n<K, V> nVar, int i4) {
            lock();
            try {
                AtomicReferenceArray<com.google.common.cache.n<K, V>> atomicReferenceArray = this.f32524f;
                int length = (atomicReferenceArray.length() - 1) & i4;
                com.google.common.cache.n<K, V> nVar2 = atomicReferenceArray.get(length);
                for (com.google.common.cache.n<K, V> nVar3 = nVar2; nVar3 != null; nVar3 = nVar3.c()) {
                    if (nVar3 == nVar) {
                        this.f32522d++;
                        atomicReferenceArray.set(length, X(nVar2, nVar3, nVar3.getKey(), i4, nVar3.a().get(), nVar3.a(), RemovalCause.COLLECTED));
                        this.f32520b--;
                        return true;
                    }
                }
                return false;
            } finally {
                unlock();
                I();
            }
        }

        boolean M(K k10, int i4, a0<K, V> a0Var) {
            lock();
            try {
                AtomicReferenceArray<com.google.common.cache.n<K, V>> atomicReferenceArray = this.f32524f;
                int length = (atomicReferenceArray.length() - 1) & i4;
                com.google.common.cache.n<K, V> nVar = atomicReferenceArray.get(length);
                for (com.google.common.cache.n<K, V> nVar2 = nVar; nVar2 != null; nVar2 = nVar2.c()) {
                    K key = nVar2.getKey();
                    if (nVar2.b() == i4 && key != null && this.f32519a.f32413e.d(k10, key)) {
                        if (nVar2.a() == a0Var) {
                            this.f32522d++;
                            atomicReferenceArray.set(length, X(nVar, nVar2, key, i4, a0Var.get(), a0Var, RemovalCause.COLLECTED));
                            this.f32520b--;
                            return true;
                        }
                        unlock();
                        if (!isHeldByCurrentThread()) {
                            I();
                        }
                        return false;
                    }
                }
                unlock();
                if (!isHeldByCurrentThread()) {
                    I();
                }
                return false;
            } finally {
                unlock();
                if (!isHeldByCurrentThread()) {
                    I();
                }
            }
        }

        @GuardedBy("this")
        void N(com.google.common.cache.n<K, V> nVar, long j4) {
            if (this.f32519a.K()) {
                nVar.n(j4);
            }
            this.f32531m.add(nVar);
        }

        void O(com.google.common.cache.n<K, V> nVar, long j4) {
            if (this.f32519a.K()) {
                nVar.n(j4);
            }
            this.f32528j.add(nVar);
        }

        @GuardedBy("this")
        void P(com.google.common.cache.n<K, V> nVar, int i4, long j4) {
            l();
            this.f32521c += i4;
            if (this.f32519a.K()) {
                nVar.n(j4);
            }
            if (this.f32519a.M()) {
                nVar.p(j4);
            }
            this.f32531m.add(nVar);
            this.f32530l.add(nVar);
        }

        @NullableDecl
        V Q(K k10, int i4, CacheLoader<? super K, V> cacheLoader, boolean z9) {
            m<K, V> B = B(k10, i4, z9);
            if (B == null) {
                return null;
            }
            q0<V> C = C(k10, i4, B, cacheLoader);
            if (C.isDone()) {
                try {
                    return (V) n1.d(C);
                } catch (Throwable unused) {
                }
            }
            return null;
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x0038, code lost:
            r9 = r5.a();
            r12 = r9.get();
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x0040, code lost:
            if (r12 == null) goto L21;
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x0042, code lost:
            r2 = com.google.common.cache.RemovalCause.EXPLICIT;
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x0044, code lost:
            r10 = r2;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x004a, code lost:
            if (r9.a() == false) goto L24;
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x004c, code lost:
            r2 = com.google.common.cache.RemovalCause.COLLECTED;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x004f, code lost:
            r11.f32522d++;
            r0.set(r1, X(r4, r5, r6, r13, r12, r9, r10));
            r11.f32520b--;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x006b, code lost:
            return r12;
         */
        @org.checkerframework.checker.nullness.compatqual.NullableDecl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        V R(java.lang.Object r12, int r13) {
            /*
                r11 = this;
                r11.lock()
                com.google.common.cache.j<K, V> r0 = r11.f32519a     // Catch: java.lang.Throwable -> L78
                com.google.common.base.l0 r0 = r0.f32424p     // Catch: java.lang.Throwable -> L78
                long r0 = r0.a()     // Catch: java.lang.Throwable -> L78
                r11.J(r0)     // Catch: java.lang.Throwable -> L78
                java.util.concurrent.atomic.AtomicReferenceArray<com.google.common.cache.n<K, V>> r0 = r11.f32524f     // Catch: java.lang.Throwable -> L78
                int r1 = r0.length()     // Catch: java.lang.Throwable -> L78
                int r1 = r1 + (-1)
                r1 = r1 & r13
                java.lang.Object r2 = r0.get(r1)     // Catch: java.lang.Throwable -> L78
                r4 = r2
                com.google.common.cache.n r4 = (com.google.common.cache.n) r4     // Catch: java.lang.Throwable -> L78
                r5 = r4
            L1f:
                r2 = 0
                if (r5 == 0) goto L6c
                java.lang.Object r6 = r5.getKey()     // Catch: java.lang.Throwable -> L78
                int r3 = r5.b()     // Catch: java.lang.Throwable -> L78
                if (r3 != r13) goto L73
                if (r6 == 0) goto L73
                com.google.common.cache.j<K, V> r3 = r11.f32519a     // Catch: java.lang.Throwable -> L78
                com.google.common.base.Equivalence<java.lang.Object> r3 = r3.f32413e     // Catch: java.lang.Throwable -> L78
                boolean r3 = r3.d(r12, r6)     // Catch: java.lang.Throwable -> L78
                if (r3 == 0) goto L73
                com.google.common.cache.j$a0 r9 = r5.a()     // Catch: java.lang.Throwable -> L78
                java.lang.Object r12 = r9.get()     // Catch: java.lang.Throwable -> L78
                if (r12 == 0) goto L46
                com.google.common.cache.RemovalCause r2 = com.google.common.cache.RemovalCause.EXPLICIT     // Catch: java.lang.Throwable -> L78
            L44:
                r10 = r2
                goto L4f
            L46:
                boolean r3 = r9.a()     // Catch: java.lang.Throwable -> L78
                if (r3 == 0) goto L6c
                com.google.common.cache.RemovalCause r2 = com.google.common.cache.RemovalCause.COLLECTED     // Catch: java.lang.Throwable -> L78
                goto L44
            L4f:
                int r2 = r11.f32522d     // Catch: java.lang.Throwable -> L78
                int r2 = r2 + 1
                r11.f32522d = r2     // Catch: java.lang.Throwable -> L78
                r3 = r11
                r7 = r13
                r8 = r12
                com.google.common.cache.n r13 = r3.X(r4, r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Throwable -> L78
                int r2 = r11.f32520b     // Catch: java.lang.Throwable -> L78
                int r2 = r2 + (-1)
                r0.set(r1, r13)     // Catch: java.lang.Throwable -> L78
                r11.f32520b = r2     // Catch: java.lang.Throwable -> L78
                r11.unlock()
                r11.I()
                return r12
            L6c:
                r11.unlock()
                r11.I()
                return r2
            L73:
                com.google.common.cache.n r5 = r5.c()     // Catch: java.lang.Throwable -> L78
                goto L1f
            L78:
                r12 = move-exception
                r11.unlock()
                r11.I()
                throw r12
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.cache.j.r.R(java.lang.Object, int):java.lang.Object");
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x0038, code lost:
            r10 = r6.a();
            r9 = r10.get();
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x0048, code lost:
            if (r12.f32519a.f32414f.d(r15, r9) == false) goto L22;
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x004a, code lost:
            r13 = com.google.common.cache.RemovalCause.EXPLICIT;
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x004d, code lost:
            if (r9 != null) goto L26;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x0053, code lost:
            if (r10.a() == false) goto L26;
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x0055, code lost:
            r13 = com.google.common.cache.RemovalCause.COLLECTED;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x0057, code lost:
            r12.f32522d++;
            r0.set(r1, X(r5, r6, r7, r14, r9, r10, r13));
            r12.f32520b--;
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x006d, code lost:
            if (r13 != com.google.common.cache.RemovalCause.EXPLICIT) goto L17;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0070, code lost:
            r2 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x0077, code lost:
            return r2;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        boolean S(java.lang.Object r13, int r14, java.lang.Object r15) {
            /*
                r12 = this;
                r12.lock()
                com.google.common.cache.j<K, V> r0 = r12.f32519a     // Catch: java.lang.Throwable -> L84
                com.google.common.base.l0 r0 = r0.f32424p     // Catch: java.lang.Throwable -> L84
                long r0 = r0.a()     // Catch: java.lang.Throwable -> L84
                r12.J(r0)     // Catch: java.lang.Throwable -> L84
                java.util.concurrent.atomic.AtomicReferenceArray<com.google.common.cache.n<K, V>> r0 = r12.f32524f     // Catch: java.lang.Throwable -> L84
                int r1 = r0.length()     // Catch: java.lang.Throwable -> L84
                r2 = 1
                int r1 = r1 - r2
                r1 = r1 & r14
                java.lang.Object r3 = r0.get(r1)     // Catch: java.lang.Throwable -> L84
                r5 = r3
                com.google.common.cache.n r5 = (com.google.common.cache.n) r5     // Catch: java.lang.Throwable -> L84
                r6 = r5
            L1f:
                r3 = 0
                if (r6 == 0) goto L78
                java.lang.Object r7 = r6.getKey()     // Catch: java.lang.Throwable -> L84
                int r4 = r6.b()     // Catch: java.lang.Throwable -> L84
                if (r4 != r14) goto L7f
                if (r7 == 0) goto L7f
                com.google.common.cache.j<K, V> r4 = r12.f32519a     // Catch: java.lang.Throwable -> L84
                com.google.common.base.Equivalence<java.lang.Object> r4 = r4.f32413e     // Catch: java.lang.Throwable -> L84
                boolean r4 = r4.d(r13, r7)     // Catch: java.lang.Throwable -> L84
                if (r4 == 0) goto L7f
                com.google.common.cache.j$a0 r10 = r6.a()     // Catch: java.lang.Throwable -> L84
                java.lang.Object r9 = r10.get()     // Catch: java.lang.Throwable -> L84
                com.google.common.cache.j<K, V> r13 = r12.f32519a     // Catch: java.lang.Throwable -> L84
                com.google.common.base.Equivalence<java.lang.Object> r13 = r13.f32414f     // Catch: java.lang.Throwable -> L84
                boolean r13 = r13.d(r15, r9)     // Catch: java.lang.Throwable -> L84
                if (r13 == 0) goto L4d
                com.google.common.cache.RemovalCause r13 = com.google.common.cache.RemovalCause.EXPLICIT     // Catch: java.lang.Throwable -> L84
                goto L57
            L4d:
                if (r9 != 0) goto L78
                boolean r13 = r10.a()     // Catch: java.lang.Throwable -> L84
                if (r13 == 0) goto L78
                com.google.common.cache.RemovalCause r13 = com.google.common.cache.RemovalCause.COLLECTED     // Catch: java.lang.Throwable -> L84
            L57:
                int r15 = r12.f32522d     // Catch: java.lang.Throwable -> L84
                int r15 = r15 + r2
                r12.f32522d = r15     // Catch: java.lang.Throwable -> L84
                r4 = r12
                r8 = r14
                r11 = r13
                com.google.common.cache.n r14 = r4.X(r5, r6, r7, r8, r9, r10, r11)     // Catch: java.lang.Throwable -> L84
                int r15 = r12.f32520b     // Catch: java.lang.Throwable -> L84
                int r15 = r15 - r2
                r0.set(r1, r14)     // Catch: java.lang.Throwable -> L84
                r12.f32520b = r15     // Catch: java.lang.Throwable -> L84
                com.google.common.cache.RemovalCause r14 = com.google.common.cache.RemovalCause.EXPLICIT     // Catch: java.lang.Throwable -> L84
                if (r13 != r14) goto L70
                goto L71
            L70:
                r2 = 0
            L71:
                r12.unlock()
                r12.I()
                return r2
            L78:
                r12.unlock()
                r12.I()
                return r3
            L7f:
                com.google.common.cache.n r6 = r6.c()     // Catch: java.lang.Throwable -> L84
                goto L1f
            L84:
                r13 = move-exception
                r12.unlock()
                r12.I()
                throw r13
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.cache.j.r.S(java.lang.Object, int, java.lang.Object):boolean");
        }

        @GuardedBy("this")
        void T(com.google.common.cache.n<K, V> nVar) {
            o(nVar.getKey(), nVar.b(), nVar.a().get(), nVar.a().e(), RemovalCause.COLLECTED);
            this.f32530l.remove(nVar);
            this.f32531m.remove(nVar);
        }

        @h3.d
        @GuardedBy("this")
        boolean U(com.google.common.cache.n<K, V> nVar, int i4, RemovalCause removalCause) {
            AtomicReferenceArray<com.google.common.cache.n<K, V>> atomicReferenceArray = this.f32524f;
            int length = (atomicReferenceArray.length() - 1) & i4;
            com.google.common.cache.n<K, V> nVar2 = atomicReferenceArray.get(length);
            for (com.google.common.cache.n<K, V> nVar3 = nVar2; nVar3 != null; nVar3 = nVar3.c()) {
                if (nVar3 == nVar) {
                    this.f32522d++;
                    atomicReferenceArray.set(length, X(nVar2, nVar3, nVar3.getKey(), i4, nVar3.a().get(), nVar3.a(), removalCause));
                    this.f32520b--;
                    return true;
                }
            }
            return false;
        }

        @NullableDecl
        @GuardedBy("this")
        com.google.common.cache.n<K, V> V(com.google.common.cache.n<K, V> nVar, com.google.common.cache.n<K, V> nVar2) {
            int i4 = this.f32520b;
            com.google.common.cache.n<K, V> c10 = nVar2.c();
            while (nVar != nVar2) {
                com.google.common.cache.n<K, V> j4 = j(nVar, c10);
                if (j4 != null) {
                    c10 = j4;
                } else {
                    T(nVar);
                    i4--;
                }
                nVar = nVar.c();
            }
            this.f32520b = i4;
            return c10;
        }

        boolean W(K k10, int i4, m<K, V> mVar) {
            lock();
            try {
                AtomicReferenceArray<com.google.common.cache.n<K, V>> atomicReferenceArray = this.f32524f;
                int length = (atomicReferenceArray.length() - 1) & i4;
                com.google.common.cache.n<K, V> nVar = atomicReferenceArray.get(length);
                com.google.common.cache.n<K, V> nVar2 = nVar;
                while (true) {
                    if (nVar2 == null) {
                        break;
                    }
                    K key = nVar2.getKey();
                    if (nVar2.b() == i4 && key != null && this.f32519a.f32413e.d(k10, key)) {
                        if (nVar2.a() == mVar) {
                            if (mVar.a()) {
                                nVar2.l(mVar.j());
                            } else {
                                atomicReferenceArray.set(length, V(nVar, nVar2));
                            }
                            return true;
                        }
                    } else {
                        nVar2 = nVar2.c();
                    }
                }
                return false;
            } finally {
                unlock();
                I();
            }
        }

        @NullableDecl
        @GuardedBy("this")
        com.google.common.cache.n<K, V> X(com.google.common.cache.n<K, V> nVar, com.google.common.cache.n<K, V> nVar2, @NullableDecl K k10, int i4, V v9, a0<K, V> a0Var, RemovalCause removalCause) {
            o(k10, i4, v9, a0Var.e(), removalCause);
            this.f32530l.remove(nVar2);
            this.f32531m.remove(nVar2);
            if (a0Var.b()) {
                a0Var.d(null);
                return nVar;
            }
            return V(nVar, nVar2);
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x0072, code lost:
            return null;
         */
        @org.checkerframework.checker.nullness.compatqual.NullableDecl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        V Y(K r18, int r19, V r20) {
            /*
                r17 = this;
                r9 = r17
                r0 = r19
                r17.lock()
                com.google.common.cache.j<K, V> r1 = r9.f32519a     // Catch: java.lang.Throwable -> La7
                com.google.common.base.l0 r1 = r1.f32424p     // Catch: java.lang.Throwable -> La7
                long r7 = r1.a()     // Catch: java.lang.Throwable -> La7
                r9.J(r7)     // Catch: java.lang.Throwable -> La7
                java.util.concurrent.atomic.AtomicReferenceArray<com.google.common.cache.n<K, V>> r10 = r9.f32524f     // Catch: java.lang.Throwable -> La7
                int r1 = r10.length()     // Catch: java.lang.Throwable -> La7
                int r1 = r1 + (-1)
                r11 = r0 & r1
                java.lang.Object r1 = r10.get(r11)     // Catch: java.lang.Throwable -> La7
                r2 = r1
                com.google.common.cache.n r2 = (com.google.common.cache.n) r2     // Catch: java.lang.Throwable -> La7
                r12 = r2
            L24:
                r13 = 0
                if (r12 == 0) goto L6c
                java.lang.Object r4 = r12.getKey()     // Catch: java.lang.Throwable -> La7
                int r1 = r12.b()     // Catch: java.lang.Throwable -> La7
                if (r1 != r0) goto L9f
                if (r4 == 0) goto L9f
                com.google.common.cache.j<K, V> r1 = r9.f32519a     // Catch: java.lang.Throwable -> La7
                com.google.common.base.Equivalence<java.lang.Object> r1 = r1.f32413e     // Catch: java.lang.Throwable -> La7
                r14 = r18
                boolean r1 = r1.d(r14, r4)     // Catch: java.lang.Throwable -> La7
                if (r1 == 0) goto La1
                com.google.common.cache.j$a0 r15 = r12.a()     // Catch: java.lang.Throwable -> La7
                java.lang.Object r16 = r15.get()     // Catch: java.lang.Throwable -> La7
                if (r16 != 0) goto L73
                boolean r1 = r15.a()     // Catch: java.lang.Throwable -> La7
                if (r1 == 0) goto L6c
                int r1 = r9.f32522d     // Catch: java.lang.Throwable -> La7
                int r1 = r1 + 1
                r9.f32522d = r1     // Catch: java.lang.Throwable -> La7
                com.google.common.cache.RemovalCause r8 = com.google.common.cache.RemovalCause.COLLECTED     // Catch: java.lang.Throwable -> La7
                r1 = r17
                r3 = r12
                r5 = r19
                r6 = r16
                r7 = r15
                com.google.common.cache.n r0 = r1.X(r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> La7
                int r1 = r9.f32520b     // Catch: java.lang.Throwable -> La7
                int r1 = r1 + (-1)
                r10.set(r11, r0)     // Catch: java.lang.Throwable -> La7
                r9.f32520b = r1     // Catch: java.lang.Throwable -> La7
            L6c:
                r17.unlock()
                r17.I()
                return r13
            L73:
                int r1 = r9.f32522d     // Catch: java.lang.Throwable -> La7
                int r1 = r1 + 1
                r9.f32522d = r1     // Catch: java.lang.Throwable -> La7
                int r5 = r15.e()     // Catch: java.lang.Throwable -> La7
                com.google.common.cache.RemovalCause r6 = com.google.common.cache.RemovalCause.REPLACED     // Catch: java.lang.Throwable -> La7
                r1 = r17
                r2 = r18
                r3 = r19
                r4 = r16
                r1.o(r2, r3, r4, r5, r6)     // Catch: java.lang.Throwable -> La7
                r1 = r17
                r2 = r12
                r3 = r18
                r4 = r20
                r5 = r7
                r1.d0(r2, r3, r4, r5)     // Catch: java.lang.Throwable -> La7
                r9.p(r12)     // Catch: java.lang.Throwable -> La7
                r17.unlock()
                r17.I()
                return r16
            L9f:
                r14 = r18
            La1:
                com.google.common.cache.n r12 = r12.c()     // Catch: java.lang.Throwable -> La7
                goto L24
            La7:
                r0 = move-exception
                r17.unlock()
                r17.I()
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.cache.j.r.Y(java.lang.Object, int, java.lang.Object):java.lang.Object");
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x006f, code lost:
            return false;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        boolean Z(K r18, int r19, V r20, V r21) {
            /*
                r17 = this;
                r9 = r17
                r0 = r19
                r17.lock()
                com.google.common.cache.j<K, V> r1 = r9.f32519a     // Catch: java.lang.Throwable -> Lb5
                com.google.common.base.l0 r1 = r1.f32424p     // Catch: java.lang.Throwable -> Lb5
                long r7 = r1.a()     // Catch: java.lang.Throwable -> Lb5
                r9.J(r7)     // Catch: java.lang.Throwable -> Lb5
                java.util.concurrent.atomic.AtomicReferenceArray<com.google.common.cache.n<K, V>> r10 = r9.f32524f     // Catch: java.lang.Throwable -> Lb5
                int r1 = r10.length()     // Catch: java.lang.Throwable -> Lb5
                r11 = 1
                int r1 = r1 - r11
                r12 = r0 & r1
                java.lang.Object r1 = r10.get(r12)     // Catch: java.lang.Throwable -> Lb5
                r2 = r1
                com.google.common.cache.n r2 = (com.google.common.cache.n) r2     // Catch: java.lang.Throwable -> Lb5
                r13 = r2
            L24:
                r14 = 0
                if (r13 == 0) goto L69
                java.lang.Object r4 = r13.getKey()     // Catch: java.lang.Throwable -> Lb5
                int r1 = r13.b()     // Catch: java.lang.Throwable -> Lb5
                if (r1 != r0) goto Lab
                if (r4 == 0) goto Lab
                com.google.common.cache.j<K, V> r1 = r9.f32519a     // Catch: java.lang.Throwable -> Lb5
                com.google.common.base.Equivalence<java.lang.Object> r1 = r1.f32413e     // Catch: java.lang.Throwable -> Lb5
                r15 = r18
                boolean r1 = r1.d(r15, r4)     // Catch: java.lang.Throwable -> Lb5
                if (r1 == 0) goto Lad
                com.google.common.cache.j$a0 r16 = r13.a()     // Catch: java.lang.Throwable -> Lb5
                java.lang.Object r6 = r16.get()     // Catch: java.lang.Throwable -> Lb5
                if (r6 != 0) goto L70
                boolean r1 = r16.a()     // Catch: java.lang.Throwable -> Lb5
                if (r1 == 0) goto L69
                int r1 = r9.f32522d     // Catch: java.lang.Throwable -> Lb5
                int r1 = r1 + r11
                r9.f32522d = r1     // Catch: java.lang.Throwable -> Lb5
                com.google.common.cache.RemovalCause r8 = com.google.common.cache.RemovalCause.COLLECTED     // Catch: java.lang.Throwable -> Lb5
                r1 = r17
                r3 = r13
                r5 = r19
                r7 = r16
                com.google.common.cache.n r0 = r1.X(r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> Lb5
                int r1 = r9.f32520b     // Catch: java.lang.Throwable -> Lb5
                int r1 = r1 - r11
                r10.set(r12, r0)     // Catch: java.lang.Throwable -> Lb5
                r9.f32520b = r1     // Catch: java.lang.Throwable -> Lb5
            L69:
                r17.unlock()
                r17.I()
                return r14
            L70:
                com.google.common.cache.j<K, V> r1 = r9.f32519a     // Catch: java.lang.Throwable -> Lb5
                com.google.common.base.Equivalence<java.lang.Object> r1 = r1.f32414f     // Catch: java.lang.Throwable -> Lb5
                r3 = r20
                boolean r1 = r1.d(r3, r6)     // Catch: java.lang.Throwable -> Lb5
                if (r1 == 0) goto La7
                int r1 = r9.f32522d     // Catch: java.lang.Throwable -> Lb5
                int r1 = r1 + r11
                r9.f32522d = r1     // Catch: java.lang.Throwable -> Lb5
                int r5 = r16.e()     // Catch: java.lang.Throwable -> Lb5
                com.google.common.cache.RemovalCause r10 = com.google.common.cache.RemovalCause.REPLACED     // Catch: java.lang.Throwable -> Lb5
                r1 = r17
                r2 = r18
                r3 = r19
                r4 = r6
                r6 = r10
                r1.o(r2, r3, r4, r5, r6)     // Catch: java.lang.Throwable -> Lb5
                r1 = r17
                r2 = r13
                r3 = r18
                r4 = r21
                r5 = r7
                r1.d0(r2, r3, r4, r5)     // Catch: java.lang.Throwable -> Lb5
                r9.p(r13)     // Catch: java.lang.Throwable -> Lb5
                r17.unlock()
                r17.I()
                return r11
            La7:
                r9.N(r13, r7)     // Catch: java.lang.Throwable -> Lb5
                goto L69
            Lab:
                r15 = r18
            Lad:
                r3 = r20
                com.google.common.cache.n r13 = r13.c()     // Catch: java.lang.Throwable -> Lb5
                goto L24
            Lb5:
                r0 = move-exception
                r17.unlock()
                r17.I()
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.cache.j.r.Z(java.lang.Object, int, java.lang.Object, java.lang.Object):boolean");
        }

        void a() {
            a0(this.f32519a.f32424p.a());
            b0();
        }

        void a0(long j4) {
            if (tryLock()) {
                try {
                    m();
                    r(j4);
                    this.f32529k.set(0);
                } finally {
                    unlock();
                }
            }
        }

        void b() {
            RemovalCause removalCause;
            if (this.f32520b != 0) {
                lock();
                try {
                    J(this.f32519a.f32424p.a());
                    AtomicReferenceArray<com.google.common.cache.n<K, V>> atomicReferenceArray = this.f32524f;
                    for (int i4 = 0; i4 < atomicReferenceArray.length(); i4++) {
                        for (com.google.common.cache.n<K, V> nVar = atomicReferenceArray.get(i4); nVar != null; nVar = nVar.c()) {
                            if (nVar.a().a()) {
                                K key = nVar.getKey();
                                V v9 = nVar.a().get();
                                if (key != null && v9 != null) {
                                    removalCause = RemovalCause.EXPLICIT;
                                    o(key, nVar.b(), v9, nVar.a().e(), removalCause);
                                }
                                removalCause = RemovalCause.COLLECTED;
                                o(key, nVar.b(), v9, nVar.a().e(), removalCause);
                            }
                        }
                    }
                    for (int i10 = 0; i10 < atomicReferenceArray.length(); i10++) {
                        atomicReferenceArray.set(i10, null);
                    }
                    d();
                    this.f32530l.clear();
                    this.f32531m.clear();
                    this.f32529k.set(0);
                    this.f32522d++;
                    this.f32520b = 0;
                } finally {
                    unlock();
                    I();
                }
            }
        }

        void b0() {
            if (isHeldByCurrentThread()) {
                return;
            }
            this.f32519a.H();
        }

        void c() {
            do {
            } while (this.f32526h.poll() != null);
        }

        V c0(com.google.common.cache.n<K, V> nVar, K k10, int i4, V v9, long j4, CacheLoader<? super K, V> cacheLoader) {
            V Q;
            return (!this.f32519a.O() || j4 - nVar.m() <= this.f32519a.f32421m || nVar.a().b() || (Q = Q(k10, i4, cacheLoader, true)) == null) ? v9 : Q;
        }

        void d() {
            if (this.f32519a.V()) {
                c();
            }
            if (this.f32519a.W()) {
                e();
            }
        }

        @GuardedBy("this")
        void d0(com.google.common.cache.n<K, V> nVar, K k10, V v9, long j4) {
            a0<K, V> a10 = nVar.a();
            int a11 = this.f32519a.f32418j.a(k10, v9);
            com.google.common.base.a0.h0(a11 >= 0, "Weights must be non-negative");
            nVar.l(this.f32519a.f32416h.b(this, nVar, v9, a11));
            P(nVar, a11, j4);
            a10.d(v9);
        }

        void e() {
            do {
            } while (this.f32527i.poll() != null);
        }

        boolean e0(K k10, int i4, m<K, V> mVar, V v9) {
            lock();
            try {
                long a10 = this.f32519a.f32424p.a();
                J(a10);
                int i10 = this.f32520b + 1;
                if (i10 > this.f32523e) {
                    q();
                    i10 = this.f32520b + 1;
                }
                int i11 = i10;
                AtomicReferenceArray<com.google.common.cache.n<K, V>> atomicReferenceArray = this.f32524f;
                int length = i4 & (atomicReferenceArray.length() - 1);
                com.google.common.cache.n<K, V> nVar = atomicReferenceArray.get(length);
                com.google.common.cache.n<K, V> nVar2 = nVar;
                while (true) {
                    if (nVar2 != null) {
                        K key = nVar2.getKey();
                        if (nVar2.b() == i4 && key != null && this.f32519a.f32413e.d(k10, key)) {
                            a0<K, V> a11 = nVar2.a();
                            V v10 = a11.get();
                            if (mVar != a11 && (v10 != null || a11 == j.C)) {
                                o(k10, i4, v9, 0, RemovalCause.REPLACED);
                                return false;
                            }
                            this.f32522d++;
                            if (mVar.a()) {
                                o(k10, i4, v10, mVar.e(), v10 == null ? RemovalCause.COLLECTED : RemovalCause.REPLACED);
                                i11--;
                            }
                            d0(nVar2, k10, v9, a10);
                            this.f32520b = i11;
                            p(nVar2);
                        } else {
                            nVar2 = nVar2.c();
                        }
                    } else {
                        this.f32522d++;
                        com.google.common.cache.n<K, V> F = F(k10, i4, nVar);
                        d0(F, k10, v9, a10);
                        atomicReferenceArray.set(length, F);
                        this.f32520b = i11;
                        p(F);
                        break;
                    }
                }
                return true;
            } finally {
                unlock();
                I();
            }
        }

        void f0() {
            if (tryLock()) {
                try {
                    m();
                } finally {
                    unlock();
                }
            }
        }

        void g0(long j4) {
            if (tryLock()) {
                try {
                    r(j4);
                } finally {
                    unlock();
                }
            }
        }

        boolean h(Object obj, int i4) {
            try {
                if (this.f32520b != 0) {
                    com.google.common.cache.n<K, V> x9 = x(obj, i4, this.f32519a.f32424p.a());
                    if (x9 == null) {
                        return false;
                    }
                    return x9.a().get() != null;
                }
                return false;
            } finally {
                H();
            }
        }

        V h0(com.google.common.cache.n<K, V> nVar, K k10, a0<K, V> a0Var) throws ExecutionException {
            if (a0Var.b()) {
                com.google.common.base.a0.x0(!Thread.holdsLock(nVar), "Recursive load of: %s", k10);
                try {
                    V g4 = a0Var.g();
                    if (g4 != null) {
                        O(nVar, this.f32519a.f32424p.a());
                        return g4;
                    }
                    throw new CacheLoader.InvalidCacheLoadException("CacheLoader returned null for key " + k10 + ".");
                } finally {
                    this.f32532n.b(1);
                }
            }
            throw new AssertionError();
        }

        @h3.d
        boolean i(Object obj) {
            try {
                if (this.f32520b != 0) {
                    long a10 = this.f32519a.f32424p.a();
                    AtomicReferenceArray<com.google.common.cache.n<K, V>> atomicReferenceArray = this.f32524f;
                    int length = atomicReferenceArray.length();
                    for (int i4 = 0; i4 < length; i4++) {
                        for (com.google.common.cache.n<K, V> nVar = atomicReferenceArray.get(i4); nVar != null; nVar = nVar.c()) {
                            V y9 = y(nVar, a10);
                            if (y9 != null && this.f32519a.f32414f.d(obj, y9)) {
                                H();
                                return true;
                            }
                        }
                    }
                }
                return false;
            } finally {
                H();
            }
        }

        @GuardedBy("this")
        com.google.common.cache.n<K, V> j(com.google.common.cache.n<K, V> nVar, com.google.common.cache.n<K, V> nVar2) {
            if (nVar.getKey() == null) {
                return null;
            }
            a0<K, V> a10 = nVar.a();
            V v9 = a10.get();
            if (v9 == null && a10.a()) {
                return null;
            }
            com.google.common.cache.n<K, V> b10 = this.f32519a.f32425q.b(this, nVar, nVar2);
            b10.l(a10.f(this.f32527i, v9, b10));
            return b10;
        }

        @GuardedBy("this")
        void k() {
            int i4 = 0;
            do {
                Reference<? extends K> poll = this.f32526h.poll();
                if (poll == null) {
                    return;
                }
                this.f32519a.I((com.google.common.cache.n) poll);
                i4++;
            } while (i4 != 16);
        }

        @GuardedBy("this")
        void l() {
            while (true) {
                com.google.common.cache.n<K, V> poll = this.f32528j.poll();
                if (poll == null) {
                    return;
                }
                if (this.f32531m.contains(poll)) {
                    this.f32531m.add(poll);
                }
            }
        }

        @GuardedBy("this")
        void m() {
            if (this.f32519a.V()) {
                k();
            }
            if (this.f32519a.W()) {
                n();
            }
        }

        @GuardedBy("this")
        void n() {
            int i4 = 0;
            do {
                Reference<? extends V> poll = this.f32527i.poll();
                if (poll == null) {
                    return;
                }
                this.f32519a.J((a0) poll);
                i4++;
            } while (i4 != 16);
        }

        @GuardedBy("this")
        void o(@NullableDecl K k10, int i4, @NullableDecl V v9, int i10, RemovalCause removalCause) {
            this.f32521c -= i10;
            if (removalCause.a()) {
                this.f32532n.c();
            }
            if (this.f32519a.f32422n != j.D) {
                this.f32519a.f32422n.offer(RemovalNotification.create(k10, v9, removalCause));
            }
        }

        @GuardedBy("this")
        void p(com.google.common.cache.n<K, V> nVar) {
            if (this.f32519a.i()) {
                l();
                if (nVar.a().e() > this.f32525g && !U(nVar, nVar.b(), RemovalCause.SIZE)) {
                    throw new AssertionError();
                }
                while (this.f32521c > this.f32525g) {
                    com.google.common.cache.n<K, V> z9 = z();
                    if (!U(z9, z9.b(), RemovalCause.SIZE)) {
                        throw new AssertionError();
                    }
                }
            }
        }

        @GuardedBy("this")
        void q() {
            AtomicReferenceArray<com.google.common.cache.n<K, V>> atomicReferenceArray = this.f32524f;
            int length = atomicReferenceArray.length();
            if (length >= 1073741824) {
                return;
            }
            int i4 = this.f32520b;
            AtomicReferenceArray<com.google.common.cache.n<K, V>> G = G(length << 1);
            this.f32523e = (G.length() * 3) / 4;
            int length2 = G.length() - 1;
            for (int i10 = 0; i10 < length; i10++) {
                com.google.common.cache.n<K, V> nVar = atomicReferenceArray.get(i10);
                if (nVar != null) {
                    com.google.common.cache.n<K, V> c10 = nVar.c();
                    int b10 = nVar.b() & length2;
                    if (c10 == null) {
                        G.set(b10, nVar);
                    } else {
                        com.google.common.cache.n<K, V> nVar2 = nVar;
                        while (c10 != null) {
                            int b11 = c10.b() & length2;
                            if (b11 != b10) {
                                nVar2 = c10;
                                b10 = b11;
                            }
                            c10 = c10.c();
                        }
                        G.set(b10, nVar2);
                        while (nVar != nVar2) {
                            int b12 = nVar.b() & length2;
                            com.google.common.cache.n<K, V> j4 = j(nVar, G.get(b12));
                            if (j4 != null) {
                                G.set(b12, j4);
                            } else {
                                T(nVar);
                                i4--;
                            }
                            nVar = nVar.c();
                        }
                    }
                }
            }
            this.f32524f = G;
            this.f32520b = i4;
        }

        @GuardedBy("this")
        void r(long j4) {
            com.google.common.cache.n<K, V> peek;
            com.google.common.cache.n<K, V> peek2;
            l();
            do {
                peek = this.f32530l.peek();
                if (peek == null || !this.f32519a.w(peek, j4)) {
                    do {
                        peek2 = this.f32531m.peek();
                        if (peek2 == null || !this.f32519a.w(peek2, j4)) {
                            return;
                        }
                    } while (U(peek2, peek2.b(), RemovalCause.EXPIRED));
                    throw new AssertionError();
                }
            } while (U(peek, peek.b(), RemovalCause.EXPIRED));
            throw new AssertionError();
        }

        @NullableDecl
        V s(Object obj, int i4) {
            try {
                if (this.f32520b != 0) {
                    long a10 = this.f32519a.f32424p.a();
                    com.google.common.cache.n<K, V> x9 = x(obj, i4, a10);
                    if (x9 == null) {
                        return null;
                    }
                    V v9 = x9.a().get();
                    if (v9 != null) {
                        O(x9, a10);
                        return c0(x9, x9.getKey(), i4, v9, a10, this.f32519a.f32427s);
                    }
                    f0();
                }
                return null;
            } finally {
                H();
            }
        }

        V t(K k10, int i4, CacheLoader<? super K, V> cacheLoader) throws ExecutionException {
            com.google.common.cache.n<K, V> v9;
            com.google.common.base.a0.E(k10);
            com.google.common.base.a0.E(cacheLoader);
            try {
                try {
                    if (this.f32520b != 0 && (v9 = v(k10, i4)) != null) {
                        long a10 = this.f32519a.f32424p.a();
                        V y9 = y(v9, a10);
                        if (y9 != null) {
                            O(v9, a10);
                            this.f32532n.a(1);
                            return c0(v9, k10, i4, y9, a10, cacheLoader);
                        }
                        a0<K, V> a11 = v9.a();
                        if (a11.b()) {
                            return h0(v9, k10, a11);
                        }
                    }
                    return E(k10, i4, cacheLoader);
                } catch (ExecutionException e4) {
                    Throwable cause = e4.getCause();
                    if (!(cause instanceof Error)) {
                        if (cause instanceof RuntimeException) {
                            throw new UncheckedExecutionException(cause);
                        }
                        throw e4;
                    }
                    throw new ExecutionError((Error) cause);
                }
            } finally {
                H();
            }
        }

        V u(K k10, int i4, m<K, V> mVar, q0<V> q0Var) throws ExecutionException {
            V v9;
            try {
                v9 = (V) n1.d(q0Var);
                try {
                    if (v9 != null) {
                        this.f32532n.e(mVar.h());
                        e0(k10, i4, mVar, v9);
                        return v9;
                    }
                    throw new CacheLoader.InvalidCacheLoadException("CacheLoader returned null for key " + k10 + ".");
                } catch (Throwable th) {
                    th = th;
                    if (v9 == null) {
                        this.f32532n.d(mVar.h());
                        W(k10, i4, mVar);
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                v9 = null;
            }
        }

        @NullableDecl
        com.google.common.cache.n<K, V> v(Object obj, int i4) {
            for (com.google.common.cache.n<K, V> w9 = w(i4); w9 != null; w9 = w9.c()) {
                if (w9.b() == i4) {
                    K key = w9.getKey();
                    if (key == null) {
                        f0();
                    } else if (this.f32519a.f32413e.d(obj, key)) {
                        return w9;
                    }
                }
            }
            return null;
        }

        com.google.common.cache.n<K, V> w(int i4) {
            AtomicReferenceArray<com.google.common.cache.n<K, V>> atomicReferenceArray = this.f32524f;
            return atomicReferenceArray.get(i4 & (atomicReferenceArray.length() - 1));
        }

        @NullableDecl
        com.google.common.cache.n<K, V> x(Object obj, int i4, long j4) {
            com.google.common.cache.n<K, V> v9 = v(obj, i4);
            if (v9 == null) {
                return null;
            }
            if (this.f32519a.w(v9, j4)) {
                g0(j4);
                return null;
            }
            return v9;
        }

        V y(com.google.common.cache.n<K, V> nVar, long j4) {
            if (nVar.getKey() == null) {
                f0();
                return null;
            }
            V v9 = nVar.a().get();
            if (v9 == null) {
                f0();
                return null;
            } else if (this.f32519a.w(nVar, j4)) {
                g0(j4);
                return null;
            } else {
                return v9;
            }
        }

        @GuardedBy("this")
        com.google.common.cache.n<K, V> z() {
            for (com.google.common.cache.n<K, V> nVar : this.f32531m) {
                if (nVar.a().e() > 0) {
                    return nVar;
                }
            }
            throw new AssertionError();
        }
    }

    /* compiled from: LocalCache.java */
    /* loaded from: classes2.dex */
    static class s<K, V> extends SoftReference<V> implements a0<K, V> {

        /* renamed from: a  reason: collision with root package name */
        final com.google.common.cache.n<K, V> f32538a;

        s(ReferenceQueue<V> referenceQueue, V v9, com.google.common.cache.n<K, V> nVar) {
            super(v9, referenceQueue);
            this.f32538a = nVar;
        }

        @Override // com.google.common.cache.j.a0
        public boolean a() {
            return true;
        }

        @Override // com.google.common.cache.j.a0
        public boolean b() {
            return false;
        }

        @Override // com.google.common.cache.j.a0
        public com.google.common.cache.n<K, V> c() {
            return this.f32538a;
        }

        @Override // com.google.common.cache.j.a0
        public void d(V v9) {
        }

        public int e() {
            return 1;
        }

        public a0<K, V> f(ReferenceQueue<V> referenceQueue, V v9, com.google.common.cache.n<K, V> nVar) {
            return new s(referenceQueue, v9, nVar);
        }

        @Override // com.google.common.cache.j.a0
        public V g() {
            return get();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: LocalCache.java */
    /* loaded from: classes2.dex */
    public static abstract class t {

        /* renamed from: a  reason: collision with root package name */
        public static final t f32539a;

        /* renamed from: b  reason: collision with root package name */
        public static final t f32540b;

        /* renamed from: c  reason: collision with root package name */
        public static final t f32541c;

        /* renamed from: d  reason: collision with root package name */
        private static final /* synthetic */ t[] f32542d;

        /* compiled from: LocalCache.java */
        /* loaded from: classes2.dex */
        enum a extends t {
            a(String str, int i4) {
                super(str, i4, null);
            }

            @Override // com.google.common.cache.j.t
            Equivalence<Object> a() {
                return Equivalence.c();
            }

            @Override // com.google.common.cache.j.t
            <K, V> a0<K, V> b(r<K, V> rVar, com.google.common.cache.n<K, V> nVar, V v9, int i4) {
                return i4 == 1 ? new x(v9) : new i0(v9, i4);
            }
        }

        /* compiled from: LocalCache.java */
        /* loaded from: classes2.dex */
        enum b extends t {
            b(String str, int i4) {
                super(str, i4, null);
            }

            @Override // com.google.common.cache.j.t
            Equivalence<Object> a() {
                return Equivalence.i();
            }

            @Override // com.google.common.cache.j.t
            <K, V> a0<K, V> b(r<K, V> rVar, com.google.common.cache.n<K, V> nVar, V v9, int i4) {
                return i4 == 1 ? new s(rVar.f32527i, v9, nVar) : new h0(rVar.f32527i, v9, nVar, i4);
            }
        }

        /* compiled from: LocalCache.java */
        /* loaded from: classes2.dex */
        enum c extends t {
            c(String str, int i4) {
                super(str, i4, null);
            }

            @Override // com.google.common.cache.j.t
            Equivalence<Object> a() {
                return Equivalence.i();
            }

            @Override // com.google.common.cache.j.t
            <K, V> a0<K, V> b(r<K, V> rVar, com.google.common.cache.n<K, V> nVar, V v9, int i4) {
                return i4 == 1 ? new f0(rVar.f32527i, v9, nVar) : new j0(rVar.f32527i, v9, nVar, i4);
            }
        }

        static {
            a aVar = new a("STRONG", 0);
            f32539a = aVar;
            b bVar = new b("SOFT", 1);
            f32540b = bVar;
            c cVar = new c("WEAK", 2);
            f32541c = cVar;
            f32542d = new t[]{aVar, bVar, cVar};
        }

        private t(String str, int i4) {
        }

        public static t valueOf(String str) {
            return (t) Enum.valueOf(t.class, str);
        }

        public static t[] values() {
            return (t[]) f32542d.clone();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract Equivalence<Object> a();

        abstract <K, V> a0<K, V> b(r<K, V> rVar, com.google.common.cache.n<K, V> nVar, V v9, int i4);

        /* synthetic */ t(String str, int i4, a aVar) {
            this(str, i4);
        }
    }

    /* compiled from: LocalCache.java */
    /* loaded from: classes2.dex */
    static final class u<K, V> extends w<K, V> {

        /* renamed from: e  reason: collision with root package name */
        volatile long f32543e;

        /* renamed from: f  reason: collision with root package name */
        com.google.common.cache.n<K, V> f32544f;

        /* renamed from: g  reason: collision with root package name */
        com.google.common.cache.n<K, V> f32545g;

        u(K k10, int i4, @NullableDecl com.google.common.cache.n<K, V> nVar) {
            super(k10, i4, nVar);
            this.f32543e = Long.MAX_VALUE;
            this.f32544f = j.E();
            this.f32545g = j.E();
        }

        @Override // com.google.common.cache.j.d, com.google.common.cache.n
        public com.google.common.cache.n<K, V> d() {
            return this.f32545g;
        }

        @Override // com.google.common.cache.j.d, com.google.common.cache.n
        public com.google.common.cache.n<K, V> h() {
            return this.f32544f;
        }

        @Override // com.google.common.cache.j.d, com.google.common.cache.n
        public void i(com.google.common.cache.n<K, V> nVar) {
            this.f32545g = nVar;
        }

        @Override // com.google.common.cache.j.d, com.google.common.cache.n
        public void n(long j4) {
            this.f32543e = j4;
        }

        @Override // com.google.common.cache.j.d, com.google.common.cache.n
        public long o() {
            return this.f32543e;
        }

        @Override // com.google.common.cache.j.d, com.google.common.cache.n
        public void q(com.google.common.cache.n<K, V> nVar) {
            this.f32544f = nVar;
        }
    }

    /* compiled from: LocalCache.java */
    /* loaded from: classes2.dex */
    static final class v<K, V> extends w<K, V> {

        /* renamed from: e  reason: collision with root package name */
        volatile long f32546e;

        /* renamed from: f  reason: collision with root package name */
        com.google.common.cache.n<K, V> f32547f;

        /* renamed from: g  reason: collision with root package name */
        com.google.common.cache.n<K, V> f32548g;

        /* renamed from: h  reason: collision with root package name */
        volatile long f32549h;

        /* renamed from: i  reason: collision with root package name */
        com.google.common.cache.n<K, V> f32550i;

        /* renamed from: j  reason: collision with root package name */
        com.google.common.cache.n<K, V> f32551j;

        v(K k10, int i4, @NullableDecl com.google.common.cache.n<K, V> nVar) {
            super(k10, i4, nVar);
            this.f32546e = Long.MAX_VALUE;
            this.f32547f = j.E();
            this.f32548g = j.E();
            this.f32549h = Long.MAX_VALUE;
            this.f32550i = j.E();
            this.f32551j = j.E();
        }

        @Override // com.google.common.cache.j.d, com.google.common.cache.n
        public com.google.common.cache.n<K, V> d() {
            return this.f32548g;
        }

        @Override // com.google.common.cache.j.d, com.google.common.cache.n
        public com.google.common.cache.n<K, V> e() {
            return this.f32550i;
        }

        @Override // com.google.common.cache.j.d, com.google.common.cache.n
        public com.google.common.cache.n<K, V> h() {
            return this.f32547f;
        }

        @Override // com.google.common.cache.j.d, com.google.common.cache.n
        public void i(com.google.common.cache.n<K, V> nVar) {
            this.f32548g = nVar;
        }

        @Override // com.google.common.cache.j.d, com.google.common.cache.n
        public com.google.common.cache.n<K, V> k() {
            return this.f32551j;
        }

        @Override // com.google.common.cache.j.d, com.google.common.cache.n
        public long m() {
            return this.f32549h;
        }

        @Override // com.google.common.cache.j.d, com.google.common.cache.n
        public void n(long j4) {
            this.f32546e = j4;
        }

        @Override // com.google.common.cache.j.d, com.google.common.cache.n
        public long o() {
            return this.f32546e;
        }

        @Override // com.google.common.cache.j.d, com.google.common.cache.n
        public void p(long j4) {
            this.f32549h = j4;
        }

        @Override // com.google.common.cache.j.d, com.google.common.cache.n
        public void q(com.google.common.cache.n<K, V> nVar) {
            this.f32547f = nVar;
        }

        @Override // com.google.common.cache.j.d, com.google.common.cache.n
        public void r(com.google.common.cache.n<K, V> nVar) {
            this.f32550i = nVar;
        }

        @Override // com.google.common.cache.j.d, com.google.common.cache.n
        public void s(com.google.common.cache.n<K, V> nVar) {
            this.f32551j = nVar;
        }
    }

    /* compiled from: LocalCache.java */
    /* loaded from: classes2.dex */
    static class w<K, V> extends d<K, V> {

        /* renamed from: a  reason: collision with root package name */
        final K f32552a;

        /* renamed from: b  reason: collision with root package name */
        final int f32553b;
        @NullableDecl

        /* renamed from: c  reason: collision with root package name */
        final com.google.common.cache.n<K, V> f32554c;

        /* renamed from: d  reason: collision with root package name */
        volatile a0<K, V> f32555d = j.S();

        w(K k10, int i4, @NullableDecl com.google.common.cache.n<K, V> nVar) {
            this.f32552a = k10;
            this.f32553b = i4;
            this.f32554c = nVar;
        }

        @Override // com.google.common.cache.j.d, com.google.common.cache.n
        public a0<K, V> a() {
            return this.f32555d;
        }

        @Override // com.google.common.cache.j.d, com.google.common.cache.n
        public int b() {
            return this.f32553b;
        }

        @Override // com.google.common.cache.j.d, com.google.common.cache.n
        public com.google.common.cache.n<K, V> c() {
            return this.f32554c;
        }

        @Override // com.google.common.cache.j.d, com.google.common.cache.n
        public K getKey() {
            return this.f32552a;
        }

        @Override // com.google.common.cache.j.d, com.google.common.cache.n
        public void l(a0<K, V> a0Var) {
            this.f32555d = a0Var;
        }
    }

    /* compiled from: LocalCache.java */
    /* loaded from: classes2.dex */
    static class x<K, V> implements a0<K, V> {

        /* renamed from: a  reason: collision with root package name */
        final V f32556a;

        x(V v9) {
            this.f32556a = v9;
        }

        @Override // com.google.common.cache.j.a0
        public boolean a() {
            return true;
        }

        @Override // com.google.common.cache.j.a0
        public boolean b() {
            return false;
        }

        @Override // com.google.common.cache.j.a0
        public com.google.common.cache.n<K, V> c() {
            return null;
        }

        @Override // com.google.common.cache.j.a0
        public void d(V v9) {
        }

        @Override // com.google.common.cache.j.a0
        public int e() {
            return 1;
        }

        @Override // com.google.common.cache.j.a0
        public a0<K, V> f(ReferenceQueue<V> referenceQueue, V v9, com.google.common.cache.n<K, V> nVar) {
            return this;
        }

        @Override // com.google.common.cache.j.a0
        public V g() {
            return get();
        }

        @Override // com.google.common.cache.j.a0
        public V get() {
            return this.f32556a;
        }
    }

    /* compiled from: LocalCache.java */
    /* loaded from: classes2.dex */
    static final class y<K, V> extends w<K, V> {

        /* renamed from: e  reason: collision with root package name */
        volatile long f32557e;

        /* renamed from: f  reason: collision with root package name */
        com.google.common.cache.n<K, V> f32558f;

        /* renamed from: g  reason: collision with root package name */
        com.google.common.cache.n<K, V> f32559g;

        y(K k10, int i4, @NullableDecl com.google.common.cache.n<K, V> nVar) {
            super(k10, i4, nVar);
            this.f32557e = Long.MAX_VALUE;
            this.f32558f = j.E();
            this.f32559g = j.E();
        }

        @Override // com.google.common.cache.j.d, com.google.common.cache.n
        public com.google.common.cache.n<K, V> e() {
            return this.f32558f;
        }

        @Override // com.google.common.cache.j.d, com.google.common.cache.n
        public com.google.common.cache.n<K, V> k() {
            return this.f32559g;
        }

        @Override // com.google.common.cache.j.d, com.google.common.cache.n
        public long m() {
            return this.f32557e;
        }

        @Override // com.google.common.cache.j.d, com.google.common.cache.n
        public void p(long j4) {
            this.f32557e = j4;
        }

        @Override // com.google.common.cache.j.d, com.google.common.cache.n
        public void r(com.google.common.cache.n<K, V> nVar) {
            this.f32558f = nVar;
        }

        @Override // com.google.common.cache.j.d, com.google.common.cache.n
        public void s(com.google.common.cache.n<K, V> nVar) {
            this.f32559g = nVar;
        }
    }

    /* compiled from: LocalCache.java */
    /* loaded from: classes2.dex */
    final class z extends j<K, V>.i<V> {
        z() {
            super();
        }

        @Override // com.google.common.cache.j.i, java.util.Iterator
        public V next() {
            return c().getValue();
        }
    }

    j(com.google.common.cache.d<? super K, ? super V> dVar, @NullableDecl CacheLoader<? super K, V> cacheLoader) {
        this.f32412d = Math.min(dVar.j(), 65536);
        t o9 = dVar.o();
        this.f32415g = o9;
        this.f32416h = dVar.v();
        this.f32413e = dVar.n();
        this.f32414f = dVar.u();
        long p9 = dVar.p();
        this.f32417i = p9;
        this.f32418j = (com.google.common.cache.r<K, V>) dVar.w();
        this.f32419k = dVar.k();
        this.f32420l = dVar.l();
        this.f32421m = dVar.q();
        com.google.common.cache.o<K, V> oVar = (com.google.common.cache.o<K, V>) dVar.r();
        this.f32423o = oVar;
        this.f32422n = oVar == d.EnumC0209d.INSTANCE ? h() : new ConcurrentLinkedQueue<>();
        this.f32424p = dVar.t(L());
        this.f32425q = f.d(o9, T(), X());
        this.f32426r = dVar.s().get();
        this.f32427s = cacheLoader;
        int min = Math.min(dVar.m(), 1073741824);
        if (i() && !g()) {
            min = (int) Math.min(min, p9);
        }
        int i4 = 0;
        int i10 = 1;
        int i11 = 1;
        int i12 = 0;
        while (i11 < this.f32412d && (!i() || i11 * 20 <= this.f32417i)) {
            i12++;
            i11 <<= 1;
        }
        this.f32410b = 32 - i12;
        this.f32409a = i11 - 1;
        this.f32411c = C(i11);
        int i13 = min / i11;
        while (i10 < (i13 * i11 < min ? i13 + 1 : i13)) {
            i10 <<= 1;
        }
        if (i()) {
            long j4 = this.f32417i;
            long j10 = i11;
            long j11 = (j4 / j10) + 1;
            long j12 = j4 % j10;
            while (true) {
                r<K, V>[] rVarArr = this.f32411c;
                if (i4 >= rVarArr.length) {
                    return;
                }
                if (i4 == j12) {
                    j11--;
                }
                rVarArr[i4] = f(i10, j11, dVar.s().get());
                i4++;
            }
        } else {
            while (true) {
                r<K, V>[] rVarArr2 = this.f32411c;
                if (i4 >= rVarArr2.length) {
                    return;
                }
                rVarArr2[i4] = f(i10, -1L, dVar.s().get());
                i4++;
            }
        }
    }

    static <K, V> com.google.common.cache.n<K, V> E() {
        return q.INSTANCE;
    }

    static <K, V> void F(com.google.common.cache.n<K, V> nVar) {
        com.google.common.cache.n<K, V> E = E();
        nVar.q(E);
        nVar.i(E);
    }

    static <K, V> void G(com.google.common.cache.n<K, V> nVar) {
        com.google.common.cache.n<K, V> E = E();
        nVar.r(E);
        nVar.s(E);
    }

    static int P(int i4) {
        int i10 = i4 + ((i4 << 15) ^ (-12931));
        int i11 = i10 ^ (i10 >>> 10);
        int i12 = i11 + (i11 << 3);
        int i13 = i12 ^ (i12 >>> 6);
        int i14 = i13 + (i13 << 2) + (i13 << 14);
        return i14 ^ (i14 >>> 16);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> ArrayList<E> R(Collection<E> collection) {
        ArrayList<E> arrayList = new ArrayList<>(collection.size());
        x2.a(arrayList, collection.iterator());
        return arrayList;
    }

    static <K, V> a0<K, V> S() {
        return (a0<K, V>) C;
    }

    static <K, V> void c(com.google.common.cache.n<K, V> nVar, com.google.common.cache.n<K, V> nVar2) {
        nVar.q(nVar2);
        nVar2.i(nVar);
    }

    static <K, V> void d(com.google.common.cache.n<K, V> nVar, com.google.common.cache.n<K, V> nVar2) {
        nVar.r(nVar2);
        nVar2.s(nVar);
    }

    static <E> Queue<E> h() {
        return (Queue<E>) D;
    }

    long A() {
        long j4 = 0;
        for (r<K, V> rVar : this.f32411c) {
            j4 += Math.max(0, rVar.f32520b);
        }
        return j4;
    }

    @h3.d
    com.google.common.cache.n<K, V> B(K k10, int i4, @NullableDecl com.google.common.cache.n<K, V> nVar) {
        r<K, V> Q = Q(i4);
        Q.lock();
        try {
            return Q.F(k10, i4, nVar);
        } finally {
            Q.unlock();
        }
    }

    final r<K, V>[] C(int i4) {
        return new r[i4];
    }

    /* JADX WARN: Multi-variable type inference failed */
    @h3.d
    a0<K, V> D(com.google.common.cache.n<K, V> nVar, V v9, int i4) {
        return this.f32416h.b(Q(nVar.b()), nVar, com.google.common.base.a0.E(v9), i4);
    }

    void H() {
        while (true) {
            RemovalNotification<K, V> poll = this.f32422n.poll();
            if (poll == null) {
                return;
            }
            try {
                this.f32423o.a(poll);
            } catch (Throwable th) {
                B.log(Level.WARNING, "Exception thrown by removal listener", th);
            }
        }
    }

    void I(com.google.common.cache.n<K, V> nVar) {
        int b10 = nVar.b();
        Q(b10).L(nVar, b10);
    }

    void J(a0<K, V> a0Var) {
        com.google.common.cache.n<K, V> c10 = a0Var.c();
        int b10 = c10.b();
        Q(b10).M(c10.getKey(), b10, a0Var);
    }

    boolean K() {
        return k();
    }

    boolean L() {
        return M() || K();
    }

    boolean M() {
        return l() || O();
    }

    void N(K k10) {
        int u9 = u(com.google.common.base.a0.E(k10));
        Q(u9).Q(k10, u9, this.f32427s, false);
    }

    boolean O() {
        return this.f32421m > 0;
    }

    r<K, V> Q(int i4) {
        return this.f32411c[(i4 >>> this.f32410b) & this.f32409a];
    }

    boolean T() {
        return U() || K();
    }

    boolean U() {
        return k() || i();
    }

    boolean V() {
        return this.f32415g != t.f32539a;
    }

    boolean W() {
        return this.f32416h != t.f32539a;
    }

    boolean X() {
        return Y() || M();
    }

    boolean Y() {
        return l();
    }

    public void b() {
        for (r<K, V> rVar : this.f32411c) {
            rVar.a();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        for (r<K, V> rVar : this.f32411c) {
            rVar.b();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(@NullableDecl Object obj) {
        if (obj == null) {
            return false;
        }
        int u9 = u(obj);
        return Q(u9).h(obj, u9);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsValue(@NullableDecl Object obj) {
        if (obj == null) {
            return false;
        }
        long a10 = this.f32424p.a();
        r<K, V>[] rVarArr = this.f32411c;
        long j4 = -1;
        int i4 = 0;
        while (i4 < 3) {
            long j10 = 0;
            int length = rVarArr.length;
            int i10 = 0;
            while (i10 < length) {
                r<K, V> rVar = rVarArr[i10];
                int i11 = rVar.f32520b;
                AtomicReferenceArray<com.google.common.cache.n<K, V>> atomicReferenceArray = rVar.f32524f;
                for (int i12 = 0; i12 < atomicReferenceArray.length(); i12++) {
                    com.google.common.cache.n<K, V> nVar = atomicReferenceArray.get(i12);
                    while (nVar != null) {
                        r<K, V>[] rVarArr2 = rVarArr;
                        V y9 = rVar.y(nVar, a10);
                        long j11 = a10;
                        if (y9 != null && this.f32414f.d(obj, y9)) {
                            return true;
                        }
                        nVar = nVar.c();
                        rVarArr = rVarArr2;
                        a10 = j11;
                    }
                }
                j10 += rVar.f32522d;
                i10++;
                a10 = a10;
            }
            long j12 = a10;
            r<K, V>[] rVarArr3 = rVarArr;
            if (j10 == j4) {
                return false;
            }
            i4++;
            j4 = j10;
            rVarArr = rVarArr3;
            a10 = j12;
        }
        return false;
    }

    @h3.d
    com.google.common.cache.n<K, V> e(com.google.common.cache.n<K, V> nVar, com.google.common.cache.n<K, V> nVar2) {
        return Q(nVar.b()).j(nVar, nVar2);
    }

    @Override // java.util.AbstractMap, java.util.Map
    @h3.c
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.f32430v;
        if (set != null) {
            return set;
        }
        h hVar = new h(this);
        this.f32430v = hVar;
        return hVar;
    }

    r<K, V> f(int i4, long j4, a.b bVar) {
        return new r<>(this, i4, j4, bVar);
    }

    boolean g() {
        return this.f32418j != d.e.INSTANCE;
    }

    @Override // java.util.AbstractMap, java.util.Map
    @NullableDecl
    public V get(@NullableDecl Object obj) {
        if (obj == null) {
            return null;
        }
        int u9 = u(obj);
        return Q(u9).s(obj, u9);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    @NullableDecl
    public V getOrDefault(@NullableDecl Object obj, @NullableDecl V v9) {
        V v10 = get(obj);
        return v10 != null ? v10 : v9;
    }

    boolean i() {
        return this.f32417i >= 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        r<K, V>[] rVarArr = this.f32411c;
        long j4 = 0;
        for (int i4 = 0; i4 < rVarArr.length; i4++) {
            if (rVarArr[i4].f32520b != 0) {
                return false;
            }
            j4 += rVarArr[i4].f32522d;
        }
        if (j4 != 0) {
            for (int i10 = 0; i10 < rVarArr.length; i10++) {
                if (rVarArr[i10].f32520b != 0) {
                    return false;
                }
                j4 -= rVarArr[i10].f32522d;
            }
            return j4 == 0;
        }
        return true;
    }

    boolean j() {
        return l() || k();
    }

    boolean k() {
        return this.f32419k > 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        Set<K> set = this.f32428t;
        if (set != null) {
            return set;
        }
        k kVar = new k(this);
        this.f32428t = kVar;
        return kVar;
    }

    boolean l() {
        return this.f32420l > 0;
    }

    V m(K k10, CacheLoader<? super K, V> cacheLoader) throws ExecutionException {
        int u9 = u(com.google.common.base.a0.E(k10));
        return Q(u9).t(k10, u9, cacheLoader);
    }

    /* JADX WARN: Multi-variable type inference failed */
    ImmutableMap<K, V> n(Iterable<? extends K> iterable) throws ExecutionException {
        LinkedHashMap c02 = f3.c0();
        LinkedHashSet A2 = o4.A();
        int i4 = 0;
        int i10 = 0;
        for (K k10 : iterable) {
            Object obj = get(k10);
            if (!c02.containsKey(k10)) {
                c02.put(k10, obj);
                if (obj == null) {
                    i10++;
                    A2.add(k10);
                } else {
                    i4++;
                }
            }
        }
        try {
            if (!A2.isEmpty()) {
                try {
                    Map y9 = y(A2, this.f32427s);
                    for (Object obj2 : A2) {
                        Object obj3 = y9.get(obj2);
                        if (obj3 != null) {
                            c02.put(obj2, obj3);
                        } else {
                            throw new CacheLoader.InvalidCacheLoadException("loadAll failed to return a value for " + obj2);
                        }
                    }
                } catch (CacheLoader.UnsupportedLoadingOperationException unused) {
                    for (Object obj4 : A2) {
                        i10--;
                        c02.put(obj4, m(obj4, this.f32427s));
                    }
                }
            }
            return ImmutableMap.copyOf((Map) c02);
        } finally {
            this.f32426r.a(i4);
            this.f32426r.b(i10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    ImmutableMap<K, V> o(Iterable<?> iterable) {
        LinkedHashMap c02 = f3.c0();
        int i4 = 0;
        int i10 = 0;
        for (Object obj : iterable) {
            V v9 = get(obj);
            if (v9 == null) {
                i10++;
            } else {
                c02.put(obj, v9);
                i4++;
            }
        }
        this.f32426r.a(i4);
        this.f32426r.b(i10);
        return ImmutableMap.copyOf((Map) c02);
    }

    com.google.common.cache.n<K, V> p(@NullableDecl Object obj) {
        if (obj == null) {
            return null;
        }
        int u9 = u(obj);
        return Q(u9).v(obj, u9);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k10, V v9) {
        com.google.common.base.a0.E(k10);
        com.google.common.base.a0.E(v9);
        int u9 = u(k10);
        return Q(u9).K(k10, u9, v9, false);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public V putIfAbsent(K k10, V v9) {
        com.google.common.base.a0.E(k10);
        com.google.common.base.a0.E(v9);
        int u9 = u(k10);
        return Q(u9).K(k10, u9, v9, true);
    }

    @NullableDecl
    public V q(Object obj) {
        int u9 = u(com.google.common.base.a0.E(obj));
        V s9 = Q(u9).s(obj, u9);
        if (s9 == null) {
            this.f32426r.b(1);
        } else {
            this.f32426r.a(1);
        }
        return s9;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(@NullableDecl Object obj) {
        if (obj == null) {
            return null;
        }
        int u9 = u(obj);
        return Q(u9).R(obj, u9);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public boolean replace(K k10, @NullableDecl V v9, V v10) {
        com.google.common.base.a0.E(k10);
        com.google.common.base.a0.E(v10);
        if (v9 == null) {
            return false;
        }
        int u9 = u(k10);
        return Q(u9).Z(k10, u9, v9, v10);
    }

    @NullableDecl
    V s(com.google.common.cache.n<K, V> nVar, long j4) {
        V v9;
        if (nVar.getKey() == null || (v9 = nVar.a().get()) == null || w(nVar, j4)) {
            return null;
        }
        return v9;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return com.google.common.primitives.f.x(A());
    }

    V t(K k10) throws ExecutionException {
        return m(k10, this.f32427s);
    }

    int u(@NullableDecl Object obj) {
        return P(this.f32413e.h(obj));
    }

    void v(Iterable<?> iterable) {
        Iterator<?> it = iterable.iterator();
        while (it.hasNext()) {
            remove(it.next());
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Collection<V> values() {
        Collection<V> collection = this.f32429u;
        if (collection != null) {
            return collection;
        }
        b0 b0Var = new b0(this);
        this.f32429u = b0Var;
        return b0Var;
    }

    boolean w(com.google.common.cache.n<K, V> nVar, long j4) {
        com.google.common.base.a0.E(nVar);
        if (!k() || j4 - nVar.o() < this.f32419k) {
            return l() && j4 - nVar.m() >= this.f32420l;
        }
        return true;
    }

    @h3.d
    boolean x(com.google.common.cache.n<K, V> nVar, long j4) {
        return Q(nVar.b()).y(nVar, j4) != null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00b9  */
    @org.checkerframework.checker.nullness.compatqual.NullableDecl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    java.util.Map<K, V> y(java.util.Set<? extends K> r7, com.google.common.cache.CacheLoader<? super K, V> r8) throws java.util.concurrent.ExecutionException {
        /*
            r6 = this;
            com.google.common.base.a0.E(r8)
            com.google.common.base.a0.E(r7)
            com.google.common.base.g0 r0 = com.google.common.base.g0.c()
            r1 = 1
            r2 = 0
            java.util.Map r7 = r8.e(r7)     // Catch: java.lang.Throwable -> L8e java.lang.Error -> L91 java.lang.Exception -> L98 java.lang.RuntimeException -> L9f java.lang.InterruptedException -> La6 com.google.common.cache.CacheLoader.UnsupportedLoadingOperationException -> Lb4
            if (r7 == 0) goto L6c
            r0.l()
            java.util.Set r3 = r7.entrySet()
            java.util.Iterator r3 = r3.iterator()
        L1d:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L3c
            java.lang.Object r4 = r3.next()
            java.util.Map$Entry r4 = (java.util.Map.Entry) r4
            java.lang.Object r5 = r4.getKey()
            java.lang.Object r4 = r4.getValue()
            if (r5 == 0) goto L3a
            if (r4 != 0) goto L36
            goto L3a
        L36:
            r6.put(r5, r4)
            goto L1d
        L3a:
            r2 = 1
            goto L1d
        L3c:
            if (r2 != 0) goto L4a
            com.google.common.cache.a$b r8 = r6.f32426r
            java.util.concurrent.TimeUnit r1 = java.util.concurrent.TimeUnit.NANOSECONDS
            long r0 = r0.g(r1)
            r8.e(r0)
            return r7
        L4a:
            com.google.common.cache.a$b r7 = r6.f32426r
            java.util.concurrent.TimeUnit r1 = java.util.concurrent.TimeUnit.NANOSECONDS
            long r0 = r0.g(r1)
            r7.d(r0)
            com.google.common.cache.CacheLoader$InvalidCacheLoadException r7 = new com.google.common.cache.CacheLoader$InvalidCacheLoadException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r0.append(r8)
            java.lang.String r8 = " returned null keys or values from loadAll"
            r0.append(r8)
            java.lang.String r8 = r0.toString()
            r7.<init>(r8)
            throw r7
        L6c:
            com.google.common.cache.a$b r7 = r6.f32426r
            java.util.concurrent.TimeUnit r1 = java.util.concurrent.TimeUnit.NANOSECONDS
            long r0 = r0.g(r1)
            r7.d(r0)
            com.google.common.cache.CacheLoader$InvalidCacheLoadException r7 = new com.google.common.cache.CacheLoader$InvalidCacheLoadException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r0.append(r8)
            java.lang.String r8 = " returned null map from loadAll"
            r0.append(r8)
            java.lang.String r8 = r0.toString()
            r7.<init>(r8)
            throw r7
        L8e:
            r7 = move-exception
            r1 = 0
            goto Lb7
        L91:
            r7 = move-exception
            com.google.common.util.concurrent.ExecutionError r8 = new com.google.common.util.concurrent.ExecutionError     // Catch: java.lang.Throwable -> L8e
            r8.<init>(r7)     // Catch: java.lang.Throwable -> L8e
            throw r8     // Catch: java.lang.Throwable -> L8e
        L98:
            r7 = move-exception
            java.util.concurrent.ExecutionException r8 = new java.util.concurrent.ExecutionException     // Catch: java.lang.Throwable -> L8e
            r8.<init>(r7)     // Catch: java.lang.Throwable -> L8e
            throw r8     // Catch: java.lang.Throwable -> L8e
        L9f:
            r7 = move-exception
            com.google.common.util.concurrent.UncheckedExecutionException r8 = new com.google.common.util.concurrent.UncheckedExecutionException     // Catch: java.lang.Throwable -> L8e
            r8.<init>(r7)     // Catch: java.lang.Throwable -> L8e
            throw r8     // Catch: java.lang.Throwable -> L8e
        La6:
            r7 = move-exception
            java.lang.Thread r8 = java.lang.Thread.currentThread()     // Catch: java.lang.Throwable -> L8e
            r8.interrupt()     // Catch: java.lang.Throwable -> L8e
            java.util.concurrent.ExecutionException r8 = new java.util.concurrent.ExecutionException     // Catch: java.lang.Throwable -> L8e
            r8.<init>(r7)     // Catch: java.lang.Throwable -> L8e
            throw r8     // Catch: java.lang.Throwable -> L8e
        Lb4:
            r7 = move-exception
            throw r7     // Catch: java.lang.Throwable -> Lb6
        Lb6:
            r7 = move-exception
        Lb7:
            if (r1 != 0) goto Lc4
            com.google.common.cache.a$b r8 = r6.f32426r
            java.util.concurrent.TimeUnit r1 = java.util.concurrent.TimeUnit.NANOSECONDS
            long r0 = r0.g(r1)
            r8.d(r0)
        Lc4:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.cache.j.y(java.util.Set, com.google.common.cache.CacheLoader):java.util.Map");
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public boolean remove(@NullableDecl Object obj, @NullableDecl Object obj2) {
        if (obj == null || obj2 == null) {
            return false;
        }
        int u9 = u(obj);
        return Q(u9).S(obj, u9, obj2);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public V replace(K k10, V v9) {
        com.google.common.base.a0.E(k10);
        com.google.common.base.a0.E(v9);
        int u9 = u(k10);
        return Q(u9).Y(k10, u9, v9);
    }
}
