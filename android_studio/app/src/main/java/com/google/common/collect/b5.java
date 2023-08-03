package com.google.common.collect;

import com.google.common.collect.d5;
import com.google.common.collect.f3;
import com.google.common.collect.o4;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StandardTable.java */
@h3.b
/* loaded from: classes2.dex */
public class b5<R, C, V> extends q<R, C, V> implements Serializable {

    /* renamed from: h  reason: collision with root package name */
    private static final long f33123h = 0;
    @f2

    /* renamed from: c  reason: collision with root package name */
    final Map<R, Map<C, V>> f33124c;
    @f2

    /* renamed from: d  reason: collision with root package name */
    final com.google.common.base.i0<? extends Map<C, V>> f33125d;
    @MonotonicNonNullDecl

    /* renamed from: e  reason: collision with root package name */
    private transient Set<C> f33126e;
    @MonotonicNonNullDecl

    /* renamed from: f  reason: collision with root package name */
    private transient Map<R, Map<C, V>> f33127f;
    @MonotonicNonNullDecl

    /* renamed from: g  reason: collision with root package name */
    private transient b5<R, C, V>.f f33128g;

    /* compiled from: StandardTable.java */
    /* loaded from: classes2.dex */
    private class b implements Iterator<d5.a<R, C, V>> {

        /* renamed from: a  reason: collision with root package name */
        final Iterator<Map.Entry<R, Map<C, V>>> f33129a;
        @NullableDecl

        /* renamed from: b  reason: collision with root package name */
        Map.Entry<R, Map<C, V>> f33130b;

        /* renamed from: c  reason: collision with root package name */
        Iterator<Map.Entry<C, V>> f33131c;

        private b() {
            this.f33129a = b5.this.f33124c.entrySet().iterator();
            this.f33131c = x2.w();
        }

        @Override // java.util.Iterator
        /* renamed from: a */
        public d5.a<R, C, V> next() {
            if (!this.f33131c.hasNext()) {
                Map.Entry<R, Map<C, V>> next = this.f33129a.next();
                this.f33130b = next;
                this.f33131c = next.getValue().entrySet().iterator();
            }
            Map.Entry<C, V> next2 = this.f33131c.next();
            return e5.c(this.f33130b.getKey(), next2.getKey(), next2.getValue());
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f33129a.hasNext() || this.f33131c.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            this.f33131c.remove();
            if (this.f33130b.getValue().isEmpty()) {
                this.f33129a.remove();
                this.f33130b = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: StandardTable.java */
    /* loaded from: classes2.dex */
    public class c extends f3.r0<R, V> {

        /* renamed from: d  reason: collision with root package name */
        final C f33133d;

        /* compiled from: StandardTable.java */
        /* loaded from: classes2.dex */
        private class a extends o4.k<Map.Entry<R, V>> {
            private a() {
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public void clear() {
                c.this.d(com.google.common.base.c0.c());
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(Object obj) {
                if (obj instanceof Map.Entry) {
                    Map.Entry entry = (Map.Entry) obj;
                    return b5.this.j(entry.getKey(), c.this.f33133d, entry.getValue());
                }
                return false;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean isEmpty() {
                c cVar = c.this;
                return !b5.this.containsColumn(cVar.f33133d);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<R, V>> iterator() {
                return new b();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                if (obj instanceof Map.Entry) {
                    Map.Entry entry = (Map.Entry) obj;
                    return b5.this.o(entry.getKey(), c.this.f33133d, entry.getValue());
                }
                return false;
            }

            @Override // com.google.common.collect.o4.k, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean retainAll(Collection<?> collection) {
                return c.this.d(com.google.common.base.c0.q(com.google.common.base.c0.n(collection)));
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                int i4 = 0;
                for (Map<C, V> map : b5.this.f33124c.values()) {
                    if (map.containsKey(c.this.f33133d)) {
                        i4++;
                    }
                }
                return i4;
            }
        }

        /* compiled from: StandardTable.java */
        /* loaded from: classes2.dex */
        private class b extends com.google.common.collect.c<Map.Entry<R, V>> {

            /* renamed from: c  reason: collision with root package name */
            final Iterator<Map.Entry<R, Map<C, V>>> f33136c;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: StandardTable.java */
            /* loaded from: classes2.dex */
            public class a extends com.google.common.collect.g<R, V> {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ Map.Entry f33138a;

                a(Map.Entry entry) {
                    this.f33138a = entry;
                }

                @Override // com.google.common.collect.g, java.util.Map.Entry
                public R getKey() {
                    return (R) this.f33138a.getKey();
                }

                @Override // com.google.common.collect.g, java.util.Map.Entry
                public V getValue() {
                    return (V) ((Map) this.f33138a.getValue()).get(c.this.f33133d);
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.google.common.collect.g, java.util.Map.Entry
                public V setValue(V v9) {
                    return (V) ((Map) this.f33138a.getValue()).put(c.this.f33133d, com.google.common.base.a0.E(v9));
                }
            }

            private b() {
                this.f33136c = b5.this.f33124c.entrySet().iterator();
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.c
            /* renamed from: d */
            public Map.Entry<R, V> a() {
                while (this.f33136c.hasNext()) {
                    Map.Entry<R, Map<C, V>> next = this.f33136c.next();
                    if (next.getValue().containsKey(c.this.f33133d)) {
                        return new a(next);
                    }
                }
                return b();
            }
        }

        /* compiled from: StandardTable.java */
        /* renamed from: com.google.common.collect.b5$c$c  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private class C0217c extends f3.b0<R, V> {
            C0217c() {
                super(c.this);
            }

            @Override // com.google.common.collect.f3.b0, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(Object obj) {
                c cVar = c.this;
                return b5.this.contains(obj, cVar.f33133d);
            }

            @Override // com.google.common.collect.f3.b0, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                c cVar = c.this;
                return b5.this.remove(obj, cVar.f33133d) != null;
            }

            @Override // com.google.common.collect.o4.k, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean retainAll(Collection<?> collection) {
                return c.this.d(f3.U(com.google.common.base.c0.q(com.google.common.base.c0.n(collection))));
            }
        }

        /* compiled from: StandardTable.java */
        /* loaded from: classes2.dex */
        private class d extends f3.q0<R, V> {
            d() {
                super(c.this);
            }

            @Override // com.google.common.collect.f3.q0, java.util.AbstractCollection, java.util.Collection
            public boolean remove(Object obj) {
                return obj != null && c.this.d(f3.Q0(com.google.common.base.c0.m(obj)));
            }

            @Override // com.google.common.collect.f3.q0, java.util.AbstractCollection, java.util.Collection
            public boolean removeAll(Collection<?> collection) {
                return c.this.d(f3.Q0(com.google.common.base.c0.n(collection)));
            }

            @Override // com.google.common.collect.f3.q0, java.util.AbstractCollection, java.util.Collection
            public boolean retainAll(Collection<?> collection) {
                return c.this.d(f3.Q0(com.google.common.base.c0.q(com.google.common.base.c0.n(collection))));
            }
        }

        c(C c10) {
            this.f33133d = (C) com.google.common.base.a0.E(c10);
        }

        @Override // com.google.common.collect.f3.r0
        Set<Map.Entry<R, V>> a() {
            return new a();
        }

        @Override // com.google.common.collect.f3.r0
        Set<R> b() {
            return new C0217c();
        }

        @Override // com.google.common.collect.f3.r0
        Collection<V> c() {
            return new d();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return b5.this.contains(obj, this.f33133d);
        }

        @CanIgnoreReturnValue
        boolean d(com.google.common.base.b0<? super Map.Entry<R, V>> b0Var) {
            Iterator<Map.Entry<R, Map<C, V>>> it = b5.this.f33124c.entrySet().iterator();
            boolean z9 = false;
            while (it.hasNext()) {
                Map.Entry<R, Map<C, V>> next = it.next();
                Map<C, V> value = next.getValue();
                V v9 = value.get(this.f33133d);
                if (v9 != null && b0Var.apply(f3.O(next.getKey(), v9))) {
                    value.remove(this.f33133d);
                    z9 = true;
                    if (value.isEmpty()) {
                        it.remove();
                    }
                }
            }
            return z9;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V get(Object obj) {
            return (V) b5.this.get(obj, this.f33133d);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V put(R r9, V v9) {
            return (V) b5.this.put(r9, this.f33133d, v9);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V remove(Object obj) {
            return (V) b5.this.remove(obj, this.f33133d);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: StandardTable.java */
    /* loaded from: classes2.dex */
    public class d extends com.google.common.collect.c<C> {

        /* renamed from: c  reason: collision with root package name */
        final Map<C, V> f33142c;

        /* renamed from: d  reason: collision with root package name */
        final Iterator<Map<C, V>> f33143d;

        /* renamed from: e  reason: collision with root package name */
        Iterator<Map.Entry<C, V>> f33144e;

        private d() {
            this.f33142c = b5.this.f33125d.get();
            this.f33143d = b5.this.f33124c.values().iterator();
            this.f33144e = x2.u();
        }

        @Override // com.google.common.collect.c
        protected C a() {
            while (true) {
                if (this.f33144e.hasNext()) {
                    Map.Entry<C, V> next = this.f33144e.next();
                    if (!this.f33142c.containsKey(next.getKey())) {
                        this.f33142c.put(next.getKey(), next.getValue());
                        return next.getKey();
                    }
                } else if (this.f33143d.hasNext()) {
                    this.f33144e = this.f33143d.next().entrySet().iterator();
                } else {
                    return b();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: StandardTable.java */
    /* loaded from: classes2.dex */
    public class e extends b5<R, C, V>.i<C> {
        private e() {
            super();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return b5.this.containsColumn(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<C> iterator() {
            return b5.this.k();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            boolean z9 = false;
            if (obj == null) {
                return false;
            }
            Iterator<Map<C, V>> it = b5.this.f33124c.values().iterator();
            while (it.hasNext()) {
                Map<C, V> next = it.next();
                if (next.keySet().remove(obj)) {
                    z9 = true;
                    if (next.isEmpty()) {
                        it.remove();
                    }
                }
            }
            return z9;
        }

        @Override // com.google.common.collect.o4.k, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            com.google.common.base.a0.E(collection);
            Iterator<Map<C, V>> it = b5.this.f33124c.values().iterator();
            boolean z9 = false;
            while (it.hasNext()) {
                Map<C, V> next = it.next();
                if (x2.V(next.keySet().iterator(), collection)) {
                    z9 = true;
                    if (next.isEmpty()) {
                        it.remove();
                    }
                }
            }
            return z9;
        }

        @Override // com.google.common.collect.o4.k, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean retainAll(Collection<?> collection) {
            com.google.common.base.a0.E(collection);
            Iterator<Map<C, V>> it = b5.this.f33124c.values().iterator();
            boolean z9 = false;
            while (it.hasNext()) {
                Map<C, V> next = it.next();
                if (next.keySet().retainAll(collection)) {
                    z9 = true;
                    if (next.isEmpty()) {
                        it.remove();
                    }
                }
            }
            return z9;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return x2.Z(iterator());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: StandardTable.java */
    /* loaded from: classes2.dex */
    public class f extends f3.r0<C, Map<R, V>> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: StandardTable.java */
        /* loaded from: classes2.dex */
        public class a extends b5<R, C, V>.i<Map.Entry<C, Map<R, V>>> {

            /* compiled from: StandardTable.java */
            /* renamed from: com.google.common.collect.b5$f$a$a  reason: collision with other inner class name */
            /* loaded from: classes2.dex */
            class C0218a implements com.google.common.base.q<C, Map<R, V>> {
                C0218a() {
                }

                @Override // com.google.common.base.q
                /* renamed from: a */
                public Map<R, V> apply(C c10) {
                    return b5.this.column(c10);
                }
            }

            a() {
                super();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(Object obj) {
                if (obj instanceof Map.Entry) {
                    Map.Entry entry = (Map.Entry) obj;
                    if (b5.this.containsColumn(entry.getKey())) {
                        return f.this.get(entry.getKey()).equals(entry.getValue());
                    }
                    return false;
                }
                return false;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<C, Map<R, V>>> iterator() {
                return f3.m(b5.this.columnKeySet(), new C0218a());
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                if (contains(obj)) {
                    b5.this.n(((Map.Entry) obj).getKey());
                    return true;
                }
                return false;
            }

            @Override // com.google.common.collect.o4.k, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean removeAll(Collection<?> collection) {
                com.google.common.base.a0.E(collection);
                return o4.J(this, collection.iterator());
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.o4.k, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean retainAll(Collection<?> collection) {
                com.google.common.base.a0.E(collection);
                Iterator it = b3.s(b5.this.columnKeySet().iterator()).iterator();
                boolean z9 = false;
                while (it.hasNext()) {
                    Object next = it.next();
                    if (!collection.contains(f3.O(next, b5.this.column(next)))) {
                        b5.this.n(next);
                        z9 = true;
                    }
                }
                return z9;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return b5.this.columnKeySet().size();
            }
        }

        /* compiled from: StandardTable.java */
        /* loaded from: classes2.dex */
        private class b extends f3.q0<C, Map<R, V>> {
            b() {
                super(f.this);
            }

            @Override // com.google.common.collect.f3.q0, java.util.AbstractCollection, java.util.Collection
            public boolean remove(Object obj) {
                for (Map.Entry<C, Map<R, V>> entry : f.this.entrySet()) {
                    if (entry.getValue().equals(obj)) {
                        b5.this.n(entry.getKey());
                        return true;
                    }
                }
                return false;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.f3.q0, java.util.AbstractCollection, java.util.Collection
            public boolean removeAll(Collection<?> collection) {
                com.google.common.base.a0.E(collection);
                Iterator it = b3.s(b5.this.columnKeySet().iterator()).iterator();
                boolean z9 = false;
                while (it.hasNext()) {
                    Object next = it.next();
                    if (collection.contains(b5.this.column(next))) {
                        b5.this.n(next);
                        z9 = true;
                    }
                }
                return z9;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.f3.q0, java.util.AbstractCollection, java.util.Collection
            public boolean retainAll(Collection<?> collection) {
                com.google.common.base.a0.E(collection);
                Iterator it = b3.s(b5.this.columnKeySet().iterator()).iterator();
                boolean z9 = false;
                while (it.hasNext()) {
                    Object next = it.next();
                    if (!collection.contains(b5.this.column(next))) {
                        b5.this.n(next);
                        z9 = true;
                    }
                }
                return z9;
            }
        }

        private f() {
        }

        @Override // com.google.common.collect.f3.r0
        public Set<Map.Entry<C, Map<R, V>>> a() {
            return new a();
        }

        @Override // com.google.common.collect.f3.r0
        Collection<Map<R, V>> c() {
            return new b();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return b5.this.containsColumn(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* renamed from: d */
        public Map<R, V> get(Object obj) {
            if (b5.this.containsColumn(obj)) {
                return b5.this.column(obj);
            }
            return null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* renamed from: e */
        public Map<R, V> remove(Object obj) {
            if (b5.this.containsColumn(obj)) {
                return b5.this.n(obj);
            }
            return null;
        }

        @Override // com.google.common.collect.f3.r0, java.util.AbstractMap, java.util.Map, java.util.SortedMap
        public Set<C> keySet() {
            return b5.this.columnKeySet();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StandardTable.java */
    /* loaded from: classes2.dex */
    public class g extends f3.a0<C, V> {

        /* renamed from: a  reason: collision with root package name */
        final R f33151a;
        @NullableDecl

        /* renamed from: b  reason: collision with root package name */
        Map<C, V> f33152b;

        /* compiled from: StandardTable.java */
        /* loaded from: classes2.dex */
        class a implements Iterator<Map.Entry<C, V>> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Iterator f33154a;

            a(Iterator it) {
                this.f33154a = it;
            }

            @Override // java.util.Iterator
            /* renamed from: a */
            public Map.Entry<C, V> next() {
                return g.this.e((Map.Entry) this.f33154a.next());
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f33154a.hasNext();
            }

            @Override // java.util.Iterator
            public void remove() {
                this.f33154a.remove();
                g.this.d();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: StandardTable.java */
        /* loaded from: classes2.dex */
        public class b extends q1<C, V> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Map.Entry f33156a;

            b(Map.Entry entry) {
                this.f33156a = entry;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.q1, com.google.common.collect.v1
            /* renamed from: M */
            public Map.Entry<C, V> L() {
                return this.f33156a;
            }

            @Override // com.google.common.collect.q1, java.util.Map.Entry
            public boolean equals(Object obj) {
                return N(obj);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.q1, java.util.Map.Entry
            public V setValue(V v9) {
                return (V) super.setValue(com.google.common.base.a0.E(v9));
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public g(R r9) {
            this.f33151a = (R) com.google.common.base.a0.E(r9);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.f3.a0
        public Iterator<Map.Entry<C, V>> a() {
            Map<C, V> b10 = b();
            if (b10 == null) {
                return x2.w();
            }
            return new a(b10.entrySet().iterator());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Map<C, V> b() {
            Map<C, V> map = this.f33152b;
            if (map == null || (map.isEmpty() && b5.this.f33124c.containsKey(this.f33151a))) {
                Map<C, V> c10 = c();
                this.f33152b = c10;
                return c10;
            }
            return this.f33152b;
        }

        Map<C, V> c() {
            return b5.this.f33124c.get(this.f33151a);
        }

        @Override // com.google.common.collect.f3.a0, java.util.AbstractMap, java.util.Map
        public void clear() {
            Map<C, V> b10 = b();
            if (b10 != null) {
                b10.clear();
            }
            d();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            Map<C, V> b10 = b();
            return (obj == null || b10 == null || !f3.o0(b10, obj)) ? false : true;
        }

        void d() {
            if (b() == null || !this.f33152b.isEmpty()) {
                return;
            }
            b5.this.f33124c.remove(this.f33151a);
            this.f33152b = null;
        }

        Map.Entry<C, V> e(Map.Entry<C, V> entry) {
            return new b(entry);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V get(Object obj) {
            Map<C, V> b10 = b();
            if (obj == null || b10 == null) {
                return null;
            }
            return (V) f3.p0(b10, obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V put(C c10, V v9) {
            com.google.common.base.a0.E(c10);
            com.google.common.base.a0.E(v9);
            Map<C, V> map = this.f33152b;
            if (map != null && !map.isEmpty()) {
                return this.f33152b.put(c10, v9);
            }
            return (V) b5.this.put(this.f33151a, c10, v9);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V remove(Object obj) {
            Map<C, V> b10 = b();
            if (b10 == null) {
                return null;
            }
            V v9 = (V) f3.q0(b10, obj);
            d();
            return v9;
        }

        @Override // com.google.common.collect.f3.a0, java.util.AbstractMap, java.util.Map
        public int size() {
            Map<C, V> b10 = b();
            if (b10 == null) {
                return 0;
            }
            return b10.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StandardTable.java */
    /* loaded from: classes2.dex */
    public class h extends f3.r0<R, Map<C, V>> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: StandardTable.java */
        /* loaded from: classes2.dex */
        public class a extends b5<R, C, V>.i<Map.Entry<R, Map<C, V>>> {

            /* compiled from: StandardTable.java */
            /* renamed from: com.google.common.collect.b5$h$a$a  reason: collision with other inner class name */
            /* loaded from: classes2.dex */
            class C0219a implements com.google.common.base.q<R, Map<C, V>> {
                C0219a() {
                }

                @Override // com.google.common.base.q
                /* renamed from: a */
                public Map<C, V> apply(R r9) {
                    return b5.this.row(r9);
                }
            }

            a() {
                super();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(Object obj) {
                if (obj instanceof Map.Entry) {
                    Map.Entry entry = (Map.Entry) obj;
                    return entry.getKey() != null && (entry.getValue() instanceof Map) && z.k(b5.this.f33124c.entrySet(), entry);
                }
                return false;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<R, Map<C, V>>> iterator() {
                return f3.m(b5.this.f33124c.keySet(), new C0219a());
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                if (obj instanceof Map.Entry) {
                    Map.Entry entry = (Map.Entry) obj;
                    return entry.getKey() != null && (entry.getValue() instanceof Map) && b5.this.f33124c.entrySet().remove(entry);
                }
                return false;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return b5.this.f33124c.size();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public h() {
        }

        @Override // com.google.common.collect.f3.r0
        protected Set<Map.Entry<R, Map<C, V>>> a() {
            return new a();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return b5.this.containsRow(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* renamed from: d */
        public Map<C, V> get(Object obj) {
            if (b5.this.containsRow(obj)) {
                return b5.this.row(obj);
            }
            return null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* renamed from: e */
        public Map<C, V> remove(Object obj) {
            if (obj == null) {
                return null;
            }
            return b5.this.f33124c.remove(obj);
        }
    }

    /* compiled from: StandardTable.java */
    /* loaded from: classes2.dex */
    private abstract class i<T> extends o4.k<T> {
        private i() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            b5.this.f33124c.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return b5.this.f33124c.isEmpty();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b5(Map<R, Map<C, V>> map, com.google.common.base.i0<? extends Map<C, V>> i0Var) {
        this.f33124c = map;
        this.f33125d = i0Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean j(Object obj, Object obj2, Object obj3) {
        return obj3 != null && obj3.equals(get(obj, obj2));
    }

    private Map<C, V> m(R r9) {
        Map<C, V> map = this.f33124c.get(r9);
        if (map == null) {
            Map<C, V> map2 = this.f33125d.get();
            this.f33124c.put(r9, map2);
            return map2;
        }
        return map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @CanIgnoreReturnValue
    public Map<R, V> n(Object obj) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<Map.Entry<R, Map<C, V>>> it = this.f33124c.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<R, Map<C, V>> next = it.next();
            V remove = next.getValue().remove(obj);
            if (remove != null) {
                linkedHashMap.put(next.getKey(), remove);
                if (next.getValue().isEmpty()) {
                    it.remove();
                }
            }
        }
        return linkedHashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean o(Object obj, Object obj2, Object obj3) {
        if (j(obj, obj2, obj3)) {
            remove(obj, obj2);
            return true;
        }
        return false;
    }

    @Override // com.google.common.collect.q
    Iterator<d5.a<R, C, V>> a() {
        return new b();
    }

    @Override // com.google.common.collect.q, com.google.common.collect.d5
    public Set<d5.a<R, C, V>> cellSet() {
        return super.cellSet();
    }

    @Override // com.google.common.collect.q, com.google.common.collect.d5
    public void clear() {
        this.f33124c.clear();
    }

    @Override // com.google.common.collect.d5
    public Map<R, V> column(C c10) {
        return new c(c10);
    }

    @Override // com.google.common.collect.q, com.google.common.collect.d5
    public Set<C> columnKeySet() {
        Set<C> set = this.f33126e;
        if (set == null) {
            e eVar = new e();
            this.f33126e = eVar;
            return eVar;
        }
        return set;
    }

    @Override // com.google.common.collect.d5
    public Map<C, Map<R, V>> columnMap() {
        b5<R, C, V>.f fVar = this.f33128g;
        if (fVar == null) {
            b5<R, C, V>.f fVar2 = new f();
            this.f33128g = fVar2;
            return fVar2;
        }
        return fVar;
    }

    @Override // com.google.common.collect.q, com.google.common.collect.d5
    public boolean contains(@NullableDecl Object obj, @NullableDecl Object obj2) {
        return (obj == null || obj2 == null || !super.contains(obj, obj2)) ? false : true;
    }

    @Override // com.google.common.collect.q, com.google.common.collect.d5
    public boolean containsColumn(@NullableDecl Object obj) {
        if (obj == null) {
            return false;
        }
        for (Map<C, V> map : this.f33124c.values()) {
            if (f3.o0(map, obj)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.common.collect.q, com.google.common.collect.d5
    public boolean containsRow(@NullableDecl Object obj) {
        return obj != null && f3.o0(this.f33124c, obj);
    }

    @Override // com.google.common.collect.q, com.google.common.collect.d5
    public boolean containsValue(@NullableDecl Object obj) {
        return obj != null && super.containsValue(obj);
    }

    @Override // com.google.common.collect.q, com.google.common.collect.d5
    public V get(@NullableDecl Object obj, @NullableDecl Object obj2) {
        if (obj == null || obj2 == null) {
            return null;
        }
        return (V) super.get(obj, obj2);
    }

    @Override // com.google.common.collect.q, com.google.common.collect.d5
    public boolean isEmpty() {
        return this.f33124c.isEmpty();
    }

    Iterator<C> k() {
        return new d();
    }

    Map<R, Map<C, V>> l() {
        return new h();
    }

    @Override // com.google.common.collect.q, com.google.common.collect.d5
    @CanIgnoreReturnValue
    public V put(R r9, C c10, V v9) {
        com.google.common.base.a0.E(r9);
        com.google.common.base.a0.E(c10);
        com.google.common.base.a0.E(v9);
        return m(r9).put(c10, v9);
    }

    @Override // com.google.common.collect.q, com.google.common.collect.d5
    @CanIgnoreReturnValue
    public V remove(@NullableDecl Object obj, @NullableDecl Object obj2) {
        Map map;
        if (obj == null || obj2 == null || (map = (Map) f3.p0(this.f33124c, obj)) == null) {
            return null;
        }
        V v9 = (V) map.remove(obj2);
        if (map.isEmpty()) {
            this.f33124c.remove(obj);
        }
        return v9;
    }

    @Override // com.google.common.collect.d5
    public Map<C, V> row(R r9) {
        return new g(r9);
    }

    @Override // com.google.common.collect.q, com.google.common.collect.d5
    public Set<R> rowKeySet() {
        return rowMap().keySet();
    }

    @Override // com.google.common.collect.d5
    public Map<R, Map<C, V>> rowMap() {
        Map<R, Map<C, V>> map = this.f33127f;
        if (map == null) {
            Map<R, Map<C, V>> l10 = l();
            this.f33127f = l10;
            return l10;
        }
        return map;
    }

    @Override // com.google.common.collect.d5
    public int size() {
        int i4 = 0;
        for (Map<C, V> map : this.f33124c.values()) {
            i4 += map.size();
        }
        return i4;
    }

    @Override // com.google.common.collect.q, com.google.common.collect.d5
    public Collection<V> values() {
        return super.values();
    }
}
