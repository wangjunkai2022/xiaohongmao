package com.google.common.collect;

import com.google.common.collect.ImmutableListMultimap;
import com.google.common.collect.e;
import com.google.common.collect.f3;
import com.google.common.collect.h;
import com.google.common.collect.k3;
import com.google.common.collect.l3;
import com.google.common.collect.o4;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.j2objc.annotations.Weak;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NavigableSet;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedSet;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Multimaps.java */
@h3.b(emulated = true)
/* loaded from: classes2.dex */
public final class j3 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Multimaps.java */
    /* loaded from: classes2.dex */
    public static final class a<K, V> extends f3.r0<K, Collection<V>> {
        @Weak

        /* renamed from: d  reason: collision with root package name */
        private final h3<K, V> f33607d;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Multimaps.java */
        /* renamed from: com.google.common.collect.j3$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public class C0228a extends f3.s<K, Collection<V>> {

            /* compiled from: Multimaps.java */
            /* renamed from: com.google.common.collect.j3$a$a$a  reason: collision with other inner class name */
            /* loaded from: classes2.dex */
            class C0229a implements com.google.common.base.q<K, Collection<V>> {
                C0229a() {
                }

                @Override // com.google.common.base.q
                /* renamed from: a */
                public Collection<V> apply(K k10) {
                    return a.this.f33607d.get(k10);
                }
            }

            C0228a() {
            }

            @Override // com.google.common.collect.f3.s
            Map<K, Collection<V>> e() {
                return a.this;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<K, Collection<V>>> iterator() {
                return f3.m(a.this.f33607d.keySet(), new C0229a());
            }

            @Override // com.google.common.collect.f3.s, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                if (contains(obj)) {
                    a.this.g(((Map.Entry) obj).getKey());
                    return true;
                }
                return false;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(h3<K, V> h3Var) {
            this.f33607d = (h3) com.google.common.base.a0.E(h3Var);
        }

        @Override // com.google.common.collect.f3.r0
        protected Set<Map.Entry<K, Collection<V>>> a() {
            return new C0228a();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void clear() {
            this.f33607d.clear();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return this.f33607d.containsKey(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* renamed from: e */
        public Collection<V> get(Object obj) {
            if (containsKey(obj)) {
                return this.f33607d.get(obj);
            }
            return null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* renamed from: f */
        public Collection<V> remove(Object obj) {
            if (containsKey(obj)) {
                return this.f33607d.removeAll(obj);
            }
            return null;
        }

        void g(Object obj) {
            this.f33607d.keySet().remove(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean isEmpty() {
            return this.f33607d.isEmpty();
        }

        @Override // com.google.common.collect.f3.r0, java.util.AbstractMap, java.util.Map, java.util.SortedMap
        public Set<K> keySet() {
            return this.f33607d.keySet();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return this.f33607d.keySet().size();
        }
    }

    /* compiled from: Multimaps.java */
    /* loaded from: classes2.dex */
    private static class b<K, V> extends com.google.common.collect.d<K, V> {
        @h3.c

        /* renamed from: k  reason: collision with root package name */
        private static final long f33610k = 0;

        /* renamed from: j  reason: collision with root package name */
        transient com.google.common.base.i0<? extends List<V>> f33611j;

        b(Map<K, Collection<V>> map, com.google.common.base.i0<? extends List<V>> i0Var) {
            super(map);
            this.f33611j = (com.google.common.base.i0) com.google.common.base.a0.E(i0Var);
        }

        @h3.c
        private void H(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            objectInputStream.defaultReadObject();
            this.f33611j = (com.google.common.base.i0) objectInputStream.readObject();
            B((Map) objectInputStream.readObject());
        }

        @h3.c
        private void I(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            objectOutputStream.writeObject(this.f33611j);
            objectOutputStream.writeObject(r());
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.d, com.google.common.collect.e
        /* renamed from: F */
        public List<V> s() {
            return this.f33611j.get();
        }

        @Override // com.google.common.collect.e, com.google.common.collect.h
        Map<K, Collection<V>> b() {
            return u();
        }

        @Override // com.google.common.collect.e, com.google.common.collect.h
        Set<K> d() {
            return w();
        }
    }

    /* compiled from: Multimaps.java */
    /* loaded from: classes2.dex */
    private static class c<K, V> extends com.google.common.collect.e<K, V> {
        @h3.c

        /* renamed from: j  reason: collision with root package name */
        private static final long f33612j = 0;

        /* renamed from: i  reason: collision with root package name */
        transient com.google.common.base.i0<? extends Collection<V>> f33613i;

        c(Map<K, Collection<V>> map, com.google.common.base.i0<? extends Collection<V>> i0Var) {
            super(map);
            this.f33613i = (com.google.common.base.i0) com.google.common.base.a0.E(i0Var);
        }

        @h3.c
        private void F(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            objectInputStream.defaultReadObject();
            this.f33613i = (com.google.common.base.i0) objectInputStream.readObject();
            B((Map) objectInputStream.readObject());
        }

        @h3.c
        private void G(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            objectOutputStream.writeObject(this.f33613i);
            objectOutputStream.writeObject(r());
        }

        @Override // com.google.common.collect.e
        <E> Collection<E> C(Collection<E> collection) {
            if (collection instanceof NavigableSet) {
                return o4.O((NavigableSet) collection);
            }
            if (collection instanceof SortedSet) {
                return Collections.unmodifiableSortedSet((SortedSet) collection);
            }
            if (collection instanceof Set) {
                return Collections.unmodifiableSet((Set) collection);
            }
            if (collection instanceof List) {
                return Collections.unmodifiableList((List) collection);
            }
            return Collections.unmodifiableCollection(collection);
        }

        @Override // com.google.common.collect.e
        Collection<V> D(K k10, Collection<V> collection) {
            if (collection instanceof List) {
                return E(k10, (List) collection, null);
            }
            if (collection instanceof NavigableSet) {
                return new e.m(k10, (NavigableSet) collection, null);
            }
            if (collection instanceof SortedSet) {
                return new e.o(k10, (SortedSet) collection, null);
            }
            if (collection instanceof Set) {
                return new e.n(k10, (Set) collection);
            }
            return new e.k(k10, collection, null);
        }

        @Override // com.google.common.collect.e, com.google.common.collect.h
        Map<K, Collection<V>> b() {
            return u();
        }

        @Override // com.google.common.collect.e, com.google.common.collect.h
        Set<K> d() {
            return w();
        }

        @Override // com.google.common.collect.e
        protected Collection<V> s() {
            return this.f33613i.get();
        }
    }

    /* compiled from: Multimaps.java */
    /* loaded from: classes2.dex */
    private static class d<K, V> extends com.google.common.collect.m<K, V> {
        @h3.c

        /* renamed from: k  reason: collision with root package name */
        private static final long f33614k = 0;

        /* renamed from: j  reason: collision with root package name */
        transient com.google.common.base.i0<? extends Set<V>> f33615j;

        d(Map<K, Collection<V>> map, com.google.common.base.i0<? extends Set<V>> i0Var) {
            super(map);
            this.f33615j = (com.google.common.base.i0) com.google.common.base.a0.E(i0Var);
        }

        @h3.c
        private void H(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            objectInputStream.defaultReadObject();
            this.f33615j = (com.google.common.base.i0) objectInputStream.readObject();
            B((Map) objectInputStream.readObject());
        }

        @h3.c
        private void I(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            objectOutputStream.writeObject(this.f33615j);
            objectOutputStream.writeObject(r());
        }

        @Override // com.google.common.collect.m, com.google.common.collect.e
        <E> Collection<E> C(Collection<E> collection) {
            if (collection instanceof NavigableSet) {
                return o4.O((NavigableSet) collection);
            }
            if (collection instanceof SortedSet) {
                return Collections.unmodifiableSortedSet((SortedSet) collection);
            }
            return Collections.unmodifiableSet((Set) collection);
        }

        @Override // com.google.common.collect.m, com.google.common.collect.e
        Collection<V> D(K k10, Collection<V> collection) {
            if (collection instanceof NavigableSet) {
                return new e.m(k10, (NavigableSet) collection, null);
            }
            if (collection instanceof SortedSet) {
                return new e.o(k10, (SortedSet) collection, null);
            }
            return new e.n(k10, (Set) collection);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.m, com.google.common.collect.e
        /* renamed from: F */
        public Set<V> s() {
            return this.f33615j.get();
        }

        @Override // com.google.common.collect.e, com.google.common.collect.h
        Map<K, Collection<V>> b() {
            return u();
        }

        @Override // com.google.common.collect.e, com.google.common.collect.h
        Set<K> d() {
            return w();
        }
    }

    /* compiled from: Multimaps.java */
    /* loaded from: classes2.dex */
    private static class e<K, V> extends p<K, V> {
        @h3.c

        /* renamed from: m  reason: collision with root package name */
        private static final long f33616m = 0;

        /* renamed from: k  reason: collision with root package name */
        transient com.google.common.base.i0<? extends SortedSet<V>> f33617k;

        /* renamed from: l  reason: collision with root package name */
        transient Comparator<? super V> f33618l;

        e(Map<K, Collection<V>> map, com.google.common.base.i0<? extends SortedSet<V>> i0Var) {
            super(map);
            this.f33617k = (com.google.common.base.i0) com.google.common.base.a0.E(i0Var);
            this.f33618l = i0Var.get().comparator();
        }

        @h3.c
        private void K(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            objectInputStream.defaultReadObject();
            com.google.common.base.i0<? extends SortedSet<V>> i0Var = (com.google.common.base.i0) objectInputStream.readObject();
            this.f33617k = i0Var;
            this.f33618l = i0Var.get().comparator();
            B((Map) objectInputStream.readObject());
        }

        @h3.c
        private void L(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            objectOutputStream.writeObject(this.f33617k);
            objectOutputStream.writeObject(r());
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.p, com.google.common.collect.m, com.google.common.collect.e
        /* renamed from: H */
        public SortedSet<V> s() {
            return this.f33617k.get();
        }

        @Override // com.google.common.collect.e, com.google.common.collect.h
        Map<K, Collection<V>> b() {
            return u();
        }

        @Override // com.google.common.collect.e, com.google.common.collect.h
        Set<K> d() {
            return w();
        }

        @Override // com.google.common.collect.y4
        public Comparator<? super V> valueComparator() {
            return this.f33618l;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Multimaps.java */
    /* loaded from: classes2.dex */
    public static abstract class f<K, V> extends AbstractCollection<Map.Entry<K, V>> {
        abstract h3<K, V> a();

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            a().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(@NullableDecl Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                return a().containsEntry(entry.getKey(), entry.getValue());
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(@NullableDecl Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                return a().remove(entry.getKey(), entry.getValue());
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return a().size();
        }
    }

    /* compiled from: Multimaps.java */
    /* loaded from: classes2.dex */
    static class g<K, V> extends com.google.common.collect.i<K> {
        @Weak

        /* renamed from: c  reason: collision with root package name */
        final h3<K, V> f33619c;

        /* compiled from: Multimaps.java */
        /* loaded from: classes2.dex */
        class a extends g5<Map.Entry<K, Collection<V>>, k3.a<K>> {

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: Multimaps.java */
            /* renamed from: com.google.common.collect.j3$g$a$a  reason: collision with other inner class name */
            /* loaded from: classes2.dex */
            public class C0230a extends l3.f<K> {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ Map.Entry f33621a;

                C0230a(Map.Entry entry) {
                    this.f33621a = entry;
                }

                @Override // com.google.common.collect.k3.a
                public int getCount() {
                    return ((Collection) this.f33621a.getValue()).size();
                }

                @Override // com.google.common.collect.k3.a
                public K getElement() {
                    return (K) this.f33621a.getKey();
                }
            }

            a(Iterator it) {
                super(it);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.collect.g5
            /* renamed from: b */
            public k3.a<K> a(Map.Entry<K, Collection<V>> entry) {
                return new C0230a(entry);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public g(h3<K, V> h3Var) {
            this.f33619c = h3Var;
        }

        @Override // com.google.common.collect.i
        int b() {
            return this.f33619c.asMap().size();
        }

        @Override // com.google.common.collect.i
        Iterator<K> c() {
            throw new AssertionError("should never be called");
        }

        @Override // com.google.common.collect.i, java.util.AbstractCollection, java.util.Collection
        public void clear() {
            this.f33619c.clear();
        }

        @Override // com.google.common.collect.i, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.k3
        public boolean contains(@NullableDecl Object obj) {
            return this.f33619c.containsKey(obj);
        }

        @Override // com.google.common.collect.k3
        public int count(@NullableDecl Object obj) {
            Collection collection = (Collection) f3.p0(this.f33619c.asMap(), obj);
            if (collection == null) {
                return 0;
            }
            return collection.size();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.i
        public Iterator<k3.a<K>> d() {
            return new a(this.f33619c.asMap().entrySet().iterator());
        }

        @Override // com.google.common.collect.i, com.google.common.collect.k3
        public Set<K> elementSet() {
            return this.f33619c.keySet();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, com.google.common.collect.k3
        public Iterator<K> iterator() {
            return f3.S(this.f33619c.entries().iterator());
        }

        @Override // com.google.common.collect.i, com.google.common.collect.k3
        public int remove(@NullableDecl Object obj, int i4) {
            y.b(i4, "occurrences");
            if (i4 == 0) {
                return count(obj);
            }
            Collection collection = (Collection) f3.p0(this.f33619c.asMap(), obj);
            if (collection == null) {
                return 0;
            }
            int size = collection.size();
            if (i4 >= size) {
                collection.clear();
            } else {
                Iterator it = collection.iterator();
                for (int i10 = 0; i10 < i4; i10++) {
                    it.next();
                    it.remove();
                }
            }
            return size;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.k3
        public int size() {
            return this.f33619c.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Multimaps.java */
    /* loaded from: classes2.dex */
    public static class h<K, V> extends com.google.common.collect.h<K, V> implements n4<K, V>, Serializable {

        /* renamed from: g  reason: collision with root package name */
        private static final long f33623g = 7845222491160860175L;

        /* renamed from: f  reason: collision with root package name */
        final Map<K, V> f33624f;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Multimaps.java */
        /* loaded from: classes2.dex */
        public class a extends o4.k<V> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Object f33625a;

            /* compiled from: Multimaps.java */
            /* renamed from: com.google.common.collect.j3$h$a$a  reason: collision with other inner class name */
            /* loaded from: classes2.dex */
            class C0231a implements Iterator<V> {

                /* renamed from: a  reason: collision with root package name */
                int f33627a;

                C0231a() {
                }

                @Override // java.util.Iterator
                public boolean hasNext() {
                    if (this.f33627a == 0) {
                        a aVar = a.this;
                        if (h.this.f33624f.containsKey(aVar.f33625a)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override // java.util.Iterator
                public V next() {
                    if (hasNext()) {
                        this.f33627a++;
                        a aVar = a.this;
                        return h.this.f33624f.get(aVar.f33625a);
                    }
                    throw new NoSuchElementException();
                }

                @Override // java.util.Iterator
                public void remove() {
                    y.e(this.f33627a == 1);
                    this.f33627a = -1;
                    a aVar = a.this;
                    h.this.f33624f.remove(aVar.f33625a);
                }
            }

            a(Object obj) {
                this.f33625a = obj;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<V> iterator() {
                return new C0231a();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return h.this.f33624f.containsKey(this.f33625a) ? 1 : 0;
            }
        }

        h(Map<K, V> map) {
            this.f33624f = (Map) com.google.common.base.a0.E(map);
        }

        @Override // com.google.common.collect.h
        Map<K, Collection<V>> b() {
            return new a(this);
        }

        @Override // com.google.common.collect.h
        Collection<Map.Entry<K, V>> c() {
            throw new AssertionError("unreachable");
        }

        @Override // com.google.common.collect.h3
        public void clear() {
            this.f33624f.clear();
        }

        @Override // com.google.common.collect.h, com.google.common.collect.h3
        public boolean containsEntry(Object obj, Object obj2) {
            return this.f33624f.entrySet().contains(f3.O(obj, obj2));
        }

        @Override // com.google.common.collect.h3
        public boolean containsKey(Object obj) {
            return this.f33624f.containsKey(obj);
        }

        @Override // com.google.common.collect.h, com.google.common.collect.h3
        public boolean containsValue(Object obj) {
            return this.f33624f.containsValue(obj);
        }

        @Override // com.google.common.collect.h
        Set<K> d() {
            return this.f33624f.keySet();
        }

        @Override // com.google.common.collect.h
        k3<K> e() {
            return new g(this);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.h3, com.google.common.collect.a3
        public /* bridge */ /* synthetic */ Collection get(Object obj) {
            return get((h<K, V>) obj);
        }

        @Override // com.google.common.collect.h
        Collection<V> h() {
            return this.f33624f.values();
        }

        @Override // com.google.common.collect.h, com.google.common.collect.h3
        public int hashCode() {
            return this.f33624f.hashCode();
        }

        @Override // com.google.common.collect.h
        Iterator<Map.Entry<K, V>> i() {
            return this.f33624f.entrySet().iterator();
        }

        @Override // com.google.common.collect.h, com.google.common.collect.h3
        public boolean put(K k10, V v9) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.h, com.google.common.collect.h3
        public boolean putAll(K k10, Iterable<? extends V> iterable) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.h, com.google.common.collect.h3
        public boolean remove(Object obj, Object obj2) {
            return this.f33624f.entrySet().remove(f3.O(obj, obj2));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.h, com.google.common.collect.h3, com.google.common.collect.a3
        public /* bridge */ /* synthetic */ Collection replaceValues(Object obj, Iterable iterable) {
            return replaceValues((h<K, V>) obj, iterable);
        }

        @Override // com.google.common.collect.h3
        public int size() {
            return this.f33624f.size();
        }

        @Override // com.google.common.collect.h, com.google.common.collect.h3
        public Set<Map.Entry<K, V>> entries() {
            return this.f33624f.entrySet();
        }

        @Override // com.google.common.collect.h3, com.google.common.collect.a3
        public Set<V> get(K k10) {
            return new a(k10);
        }

        @Override // com.google.common.collect.h, com.google.common.collect.h3
        public boolean putAll(h3<? extends K, ? extends V> h3Var) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.h3, com.google.common.collect.a3
        public Set<V> removeAll(Object obj) {
            HashSet hashSet = new HashSet(2);
            if (this.f33624f.containsKey(obj)) {
                hashSet.add(this.f33624f.remove(obj));
                return hashSet;
            }
            return hashSet;
        }

        @Override // com.google.common.collect.h, com.google.common.collect.h3, com.google.common.collect.a3
        public Set<V> replaceValues(K k10, Iterable<? extends V> iterable) {
            throw new UnsupportedOperationException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Multimaps.java */
    /* loaded from: classes2.dex */
    public static final class i<K, V1, V2> extends j<K, V1, V2> implements a3<K, V2> {
        i(a3<K, V1> a3Var, f3.t<? super K, ? super V1, V2> tVar) {
            super(a3Var, tVar);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.j3.j, com.google.common.collect.h3, com.google.common.collect.a3
        public /* bridge */ /* synthetic */ Collection get(Object obj) {
            return get((i<K, V1, V2>) obj);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.j3.j
        /* renamed from: l */
        public List<V2> k(K k10, Collection<V1> collection) {
            return b3.D((List) collection, f3.n(this.f33630g, k10));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.j3.j, com.google.common.collect.h, com.google.common.collect.h3, com.google.common.collect.a3
        public /* bridge */ /* synthetic */ Collection replaceValues(Object obj, Iterable iterable) {
            return replaceValues((i<K, V1, V2>) obj, iterable);
        }

        @Override // com.google.common.collect.j3.j, com.google.common.collect.h3, com.google.common.collect.a3
        public List<V2> get(K k10) {
            return k(k10, this.f33629f.get(k10));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.j3.j, com.google.common.collect.h3, com.google.common.collect.a3
        public List<V2> removeAll(Object obj) {
            return k(obj, this.f33629f.removeAll(obj));
        }

        @Override // com.google.common.collect.j3.j, com.google.common.collect.h, com.google.common.collect.h3, com.google.common.collect.a3
        public List<V2> replaceValues(K k10, Iterable<? extends V2> iterable) {
            throw new UnsupportedOperationException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Multimaps.java */
    /* loaded from: classes2.dex */
    public static class j<K, V1, V2> extends com.google.common.collect.h<K, V2> {

        /* renamed from: f  reason: collision with root package name */
        final h3<K, V1> f33629f;

        /* renamed from: g  reason: collision with root package name */
        final f3.t<? super K, ? super V1, V2> f33630g;

        /* compiled from: Multimaps.java */
        /* loaded from: classes2.dex */
        class a implements f3.t<K, Collection<V1>, Collection<V2>> {
            a() {
            }

            @Override // com.google.common.collect.f3.t
            /* renamed from: b */
            public Collection<V2> a(K k10, Collection<V1> collection) {
                return j.this.k(k10, collection);
            }
        }

        j(h3<K, V1> h3Var, f3.t<? super K, ? super V1, V2> tVar) {
            this.f33629f = (h3) com.google.common.base.a0.E(h3Var);
            this.f33630g = (f3.t) com.google.common.base.a0.E(tVar);
        }

        @Override // com.google.common.collect.h
        Map<K, Collection<V2>> b() {
            return f3.x0(this.f33629f.asMap(), new a());
        }

        @Override // com.google.common.collect.h
        Collection<Map.Entry<K, V2>> c() {
            return new h.a();
        }

        @Override // com.google.common.collect.h3
        public void clear() {
            this.f33629f.clear();
        }

        @Override // com.google.common.collect.h3
        public boolean containsKey(Object obj) {
            return this.f33629f.containsKey(obj);
        }

        @Override // com.google.common.collect.h
        Set<K> d() {
            return this.f33629f.keySet();
        }

        @Override // com.google.common.collect.h
        k3<K> e() {
            return this.f33629f.keys();
        }

        @Override // com.google.common.collect.h3, com.google.common.collect.a3
        public Collection<V2> get(K k10) {
            return k(k10, this.f33629f.get(k10));
        }

        @Override // com.google.common.collect.h
        Collection<V2> h() {
            return z.n(this.f33629f.entries(), f3.h(this.f33630g));
        }

        @Override // com.google.common.collect.h
        Iterator<Map.Entry<K, V2>> i() {
            return x2.c0(this.f33629f.entries().iterator(), f3.g(this.f33630g));
        }

        @Override // com.google.common.collect.h, com.google.common.collect.h3
        public boolean isEmpty() {
            return this.f33629f.isEmpty();
        }

        Collection<V2> k(K k10, Collection<V1> collection) {
            com.google.common.base.q n9 = f3.n(this.f33630g, k10);
            if (collection instanceof List) {
                return b3.D((List) collection, n9);
            }
            return z.n(collection, n9);
        }

        @Override // com.google.common.collect.h, com.google.common.collect.h3
        public boolean put(K k10, V2 v22) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.h, com.google.common.collect.h3
        public boolean putAll(K k10, Iterable<? extends V2> iterable) {
            throw new UnsupportedOperationException();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.h, com.google.common.collect.h3
        public boolean remove(Object obj, Object obj2) {
            return get(obj).remove(obj2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.h3, com.google.common.collect.a3
        public Collection<V2> removeAll(Object obj) {
            return k(obj, this.f33629f.removeAll(obj));
        }

        @Override // com.google.common.collect.h, com.google.common.collect.h3, com.google.common.collect.a3
        public Collection<V2> replaceValues(K k10, Iterable<? extends V2> iterable) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.h3
        public int size() {
            return this.f33629f.size();
        }

        @Override // com.google.common.collect.h, com.google.common.collect.h3
        public boolean putAll(h3<? extends K, ? extends V2> h3Var) {
            throw new UnsupportedOperationException();
        }
    }

    /* compiled from: Multimaps.java */
    /* loaded from: classes2.dex */
    private static class k<K, V> extends l<K, V> implements a3<K, V> {

        /* renamed from: h  reason: collision with root package name */
        private static final long f33632h = 0;

        k(a3<K, V> a3Var) {
            super(a3Var);
        }

        @Override // com.google.common.collect.j3.l, com.google.common.collect.r1
        /* renamed from: N */
        public a3<K, V> M() {
            return (a3) super.L();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.j3.l, com.google.common.collect.r1, com.google.common.collect.h3, com.google.common.collect.a3
        public /* bridge */ /* synthetic */ Collection get(Object obj) {
            return get((k<K, V>) obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.j3.l, com.google.common.collect.r1, com.google.common.collect.h3, com.google.common.collect.a3
        public /* bridge */ /* synthetic */ Collection replaceValues(Object obj, Iterable iterable) {
            return replaceValues((k<K, V>) obj, iterable);
        }

        @Override // com.google.common.collect.j3.l, com.google.common.collect.r1, com.google.common.collect.h3, com.google.common.collect.a3
        public List<V> get(K k10) {
            return Collections.unmodifiableList(M().get((a3<K, V>) k10));
        }

        @Override // com.google.common.collect.j3.l, com.google.common.collect.r1, com.google.common.collect.h3, com.google.common.collect.a3
        public List<V> removeAll(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.j3.l, com.google.common.collect.r1, com.google.common.collect.h3, com.google.common.collect.a3
        public List<V> replaceValues(K k10, Iterable<? extends V> iterable) {
            throw new UnsupportedOperationException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Multimaps.java */
    /* loaded from: classes2.dex */
    public static class l<K, V> extends r1<K, V> implements Serializable {

        /* renamed from: g  reason: collision with root package name */
        private static final long f33633g = 0;

        /* renamed from: a  reason: collision with root package name */
        final h3<K, V> f33634a;
        @MonotonicNonNullDecl

        /* renamed from: b  reason: collision with root package name */
        transient Collection<Map.Entry<K, V>> f33635b;
        @MonotonicNonNullDecl

        /* renamed from: c  reason: collision with root package name */
        transient k3<K> f33636c;
        @MonotonicNonNullDecl

        /* renamed from: d  reason: collision with root package name */
        transient Set<K> f33637d;
        @MonotonicNonNullDecl

        /* renamed from: e  reason: collision with root package name */
        transient Collection<V> f33638e;
        @MonotonicNonNullDecl

        /* renamed from: f  reason: collision with root package name */
        transient Map<K, Collection<V>> f33639f;

        /* compiled from: Multimaps.java */
        /* loaded from: classes2.dex */
        class a implements com.google.common.base.q<Collection<V>, Collection<V>> {
            a() {
            }

            @Override // com.google.common.base.q
            /* renamed from: a */
            public Collection<V> apply(Collection<V> collection) {
                return j3.O(collection);
            }
        }

        l(h3<K, V> h3Var) {
            this.f33634a = (h3) com.google.common.base.a0.E(h3Var);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.r1, com.google.common.collect.v1
        /* renamed from: M */
        public h3<K, V> L() {
            return this.f33634a;
        }

        @Override // com.google.common.collect.r1, com.google.common.collect.h3, com.google.common.collect.a3
        public Map<K, Collection<V>> asMap() {
            Map<K, Collection<V>> map = this.f33639f;
            if (map == null) {
                Map<K, Collection<V>> unmodifiableMap = Collections.unmodifiableMap(f3.B0(this.f33634a.asMap(), new a()));
                this.f33639f = unmodifiableMap;
                return unmodifiableMap;
            }
            return map;
        }

        @Override // com.google.common.collect.r1, com.google.common.collect.h3
        public void clear() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.r1, com.google.common.collect.h3
        public Collection<Map.Entry<K, V>> entries() {
            Collection<Map.Entry<K, V>> collection = this.f33635b;
            if (collection == null) {
                Collection<Map.Entry<K, V>> G = j3.G(this.f33634a.entries());
                this.f33635b = G;
                return G;
            }
            return collection;
        }

        @Override // com.google.common.collect.r1, com.google.common.collect.h3, com.google.common.collect.a3
        public Collection<V> get(K k10) {
            return j3.O(this.f33634a.get(k10));
        }

        @Override // com.google.common.collect.r1, com.google.common.collect.h3
        public Set<K> keySet() {
            Set<K> set = this.f33637d;
            if (set == null) {
                Set<K> unmodifiableSet = Collections.unmodifiableSet(this.f33634a.keySet());
                this.f33637d = unmodifiableSet;
                return unmodifiableSet;
            }
            return set;
        }

        @Override // com.google.common.collect.r1, com.google.common.collect.h3
        public k3<K> keys() {
            k3<K> k3Var = this.f33636c;
            if (k3Var == null) {
                k3<K> A = l3.A(this.f33634a.keys());
                this.f33636c = A;
                return A;
            }
            return k3Var;
        }

        @Override // com.google.common.collect.r1, com.google.common.collect.h3
        public boolean put(K k10, V v9) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.r1, com.google.common.collect.h3
        public boolean putAll(K k10, Iterable<? extends V> iterable) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.r1, com.google.common.collect.h3
        public boolean remove(Object obj, Object obj2) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.r1, com.google.common.collect.h3, com.google.common.collect.a3
        public Collection<V> removeAll(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.r1, com.google.common.collect.h3, com.google.common.collect.a3
        public Collection<V> replaceValues(K k10, Iterable<? extends V> iterable) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.r1, com.google.common.collect.h3
        public Collection<V> values() {
            Collection<V> collection = this.f33638e;
            if (collection == null) {
                Collection<V> unmodifiableCollection = Collections.unmodifiableCollection(this.f33634a.values());
                this.f33638e = unmodifiableCollection;
                return unmodifiableCollection;
            }
            return collection;
        }

        @Override // com.google.common.collect.r1, com.google.common.collect.h3
        public boolean putAll(h3<? extends K, ? extends V> h3Var) {
            throw new UnsupportedOperationException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Multimaps.java */
    /* loaded from: classes2.dex */
    public static class m<K, V> extends l<K, V> implements n4<K, V> {

        /* renamed from: h  reason: collision with root package name */
        private static final long f33641h = 0;

        m(n4<K, V> n4Var) {
            super(n4Var);
        }

        @Override // com.google.common.collect.j3.l, com.google.common.collect.r1
        /* renamed from: N */
        public n4<K, V> M() {
            return (n4) super.L();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.j3.l, com.google.common.collect.r1, com.google.common.collect.h3, com.google.common.collect.a3
        public /* bridge */ /* synthetic */ Collection get(Object obj) {
            return get((m<K, V>) obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.j3.l, com.google.common.collect.r1, com.google.common.collect.h3, com.google.common.collect.a3
        public /* bridge */ /* synthetic */ Collection replaceValues(Object obj, Iterable iterable) {
            return replaceValues((m<K, V>) obj, iterable);
        }

        @Override // com.google.common.collect.j3.l, com.google.common.collect.r1, com.google.common.collect.h3
        public Set<Map.Entry<K, V>> entries() {
            return f3.J0(M().entries());
        }

        @Override // com.google.common.collect.j3.l, com.google.common.collect.r1, com.google.common.collect.h3, com.google.common.collect.a3
        public Set<V> get(K k10) {
            return Collections.unmodifiableSet(M().get((n4<K, V>) k10));
        }

        @Override // com.google.common.collect.j3.l, com.google.common.collect.r1, com.google.common.collect.h3, com.google.common.collect.a3
        public Set<V> removeAll(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.j3.l, com.google.common.collect.r1, com.google.common.collect.h3, com.google.common.collect.a3
        public Set<V> replaceValues(K k10, Iterable<? extends V> iterable) {
            throw new UnsupportedOperationException();
        }
    }

    /* compiled from: Multimaps.java */
    /* loaded from: classes2.dex */
    private static class n<K, V> extends m<K, V> implements y4<K, V> {

        /* renamed from: i  reason: collision with root package name */
        private static final long f33642i = 0;

        n(y4<K, V> y4Var) {
            super(y4Var);
        }

        @Override // com.google.common.collect.j3.m
        /* renamed from: O */
        public y4<K, V> N() {
            return (y4) super.M();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.j3.m, com.google.common.collect.j3.l, com.google.common.collect.r1, com.google.common.collect.h3, com.google.common.collect.a3
        public /* bridge */ /* synthetic */ Collection get(Object obj) {
            return get((n<K, V>) obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.j3.m, com.google.common.collect.j3.l, com.google.common.collect.r1, com.google.common.collect.h3, com.google.common.collect.a3
        public /* bridge */ /* synthetic */ Collection replaceValues(Object obj, Iterable iterable) {
            return replaceValues((n<K, V>) obj, iterable);
        }

        @Override // com.google.common.collect.y4
        public Comparator<? super V> valueComparator() {
            return N().valueComparator();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.j3.m, com.google.common.collect.j3.l, com.google.common.collect.r1, com.google.common.collect.h3, com.google.common.collect.a3
        public /* bridge */ /* synthetic */ Set get(Object obj) {
            return get((n<K, V>) obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.j3.m, com.google.common.collect.j3.l, com.google.common.collect.r1, com.google.common.collect.h3, com.google.common.collect.a3
        public /* bridge */ /* synthetic */ Set replaceValues(Object obj, Iterable iterable) {
            return replaceValues((n<K, V>) obj, iterable);
        }

        @Override // com.google.common.collect.j3.m, com.google.common.collect.j3.l, com.google.common.collect.r1, com.google.common.collect.h3, com.google.common.collect.a3
        public SortedSet<V> get(K k10) {
            return Collections.unmodifiableSortedSet(N().get((y4<K, V>) k10));
        }

        @Override // com.google.common.collect.j3.m, com.google.common.collect.j3.l, com.google.common.collect.r1, com.google.common.collect.h3, com.google.common.collect.a3
        public SortedSet<V> removeAll(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.j3.m, com.google.common.collect.j3.l, com.google.common.collect.r1, com.google.common.collect.h3, com.google.common.collect.a3
        public SortedSet<V> replaceValues(K k10, Iterable<? extends V> iterable) {
            throw new UnsupportedOperationException();
        }
    }

    private j3() {
    }

    public static <K, V> n4<K, V> A(n4<K, V> n4Var) {
        return c5.v(n4Var, null);
    }

    public static <K, V> y4<K, V> B(y4<K, V> y4Var) {
        return c5.y(y4Var, null);
    }

    public static <K, V1, V2> a3<K, V2> C(a3<K, V1> a3Var, f3.t<? super K, ? super V1, V2> tVar) {
        return new i(a3Var, tVar);
    }

    public static <K, V1, V2> h3<K, V2> D(h3<K, V1> h3Var, f3.t<? super K, ? super V1, V2> tVar) {
        return new j(h3Var, tVar);
    }

    public static <K, V1, V2> a3<K, V2> E(a3<K, V1> a3Var, com.google.common.base.q<? super V1, V2> qVar) {
        com.google.common.base.a0.E(qVar);
        return C(a3Var, f3.i(qVar));
    }

    public static <K, V1, V2> h3<K, V2> F(h3<K, V1> h3Var, com.google.common.base.q<? super V1, V2> qVar) {
        com.google.common.base.a0.E(qVar);
        return D(h3Var, f3.i(qVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <K, V> Collection<Map.Entry<K, V>> G(Collection<Map.Entry<K, V>> collection) {
        if (collection instanceof Set) {
            return f3.J0((Set) collection);
        }
        return new f3.m0(Collections.unmodifiableCollection(collection));
    }

    @Deprecated
    public static <K, V> a3<K, V> H(ImmutableListMultimap<K, V> immutableListMultimap) {
        return (a3) com.google.common.base.a0.E(immutableListMultimap);
    }

    public static <K, V> a3<K, V> I(a3<K, V> a3Var) {
        return ((a3Var instanceof k) || (a3Var instanceof ImmutableListMultimap)) ? a3Var : new k(a3Var);
    }

    @Deprecated
    public static <K, V> h3<K, V> J(ImmutableMultimap<K, V> immutableMultimap) {
        return (h3) com.google.common.base.a0.E(immutableMultimap);
    }

    public static <K, V> h3<K, V> K(h3<K, V> h3Var) {
        return ((h3Var instanceof l) || (h3Var instanceof ImmutableMultimap)) ? h3Var : new l(h3Var);
    }

    @Deprecated
    public static <K, V> n4<K, V> L(ImmutableSetMultimap<K, V> immutableSetMultimap) {
        return (n4) com.google.common.base.a0.E(immutableSetMultimap);
    }

    public static <K, V> n4<K, V> M(n4<K, V> n4Var) {
        return ((n4Var instanceof m) || (n4Var instanceof ImmutableSetMultimap)) ? n4Var : new m(n4Var);
    }

    public static <K, V> y4<K, V> N(y4<K, V> y4Var) {
        return y4Var instanceof n ? y4Var : new n(y4Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <V> Collection<V> O(Collection<V> collection) {
        if (collection instanceof SortedSet) {
            return Collections.unmodifiableSortedSet((SortedSet) collection);
        }
        if (collection instanceof Set) {
            return Collections.unmodifiableSet((Set) collection);
        }
        if (collection instanceof List) {
            return Collections.unmodifiableList((List) collection);
        }
        return Collections.unmodifiableCollection(collection);
    }

    @h3.a
    public static <K, V> Map<K, List<V>> c(a3<K, V> a3Var) {
        return (Map<K, Collection<V>>) a3Var.asMap();
    }

    @h3.a
    public static <K, V> Map<K, Collection<V>> d(h3<K, V> h3Var) {
        return h3Var.asMap();
    }

    @h3.a
    public static <K, V> Map<K, Set<V>> e(n4<K, V> n4Var) {
        return (Map<K, Collection<V>>) n4Var.asMap();
    }

    @h3.a
    public static <K, V> Map<K, SortedSet<V>> f(y4<K, V> y4Var) {
        return (Map<K, Collection<V>>) y4Var.asMap();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean g(h3<?, ?> h3Var, @NullableDecl Object obj) {
        if (obj == h3Var) {
            return true;
        }
        if (obj instanceof h3) {
            return h3Var.asMap().equals(((h3) obj).asMap());
        }
        return false;
    }

    public static <K, V> h3<K, V> h(h3<K, V> h3Var, com.google.common.base.b0<? super Map.Entry<K, V>> b0Var) {
        com.google.common.base.a0.E(b0Var);
        if (h3Var instanceof n4) {
            return i((n4) h3Var, b0Var);
        }
        if (h3Var instanceof z0) {
            return j((z0) h3Var, b0Var);
        }
        return new u0((h3) com.google.common.base.a0.E(h3Var), b0Var);
    }

    public static <K, V> n4<K, V> i(n4<K, V> n4Var, com.google.common.base.b0<? super Map.Entry<K, V>> b0Var) {
        com.google.common.base.a0.E(b0Var);
        if (n4Var instanceof b1) {
            return k((b1) n4Var, b0Var);
        }
        return new v0((n4) com.google.common.base.a0.E(n4Var), b0Var);
    }

    private static <K, V> h3<K, V> j(z0<K, V> z0Var, com.google.common.base.b0<? super Map.Entry<K, V>> b0Var) {
        return new u0(z0Var.a(), com.google.common.base.c0.d(z0Var.v(), b0Var));
    }

    private static <K, V> n4<K, V> k(b1<K, V> b1Var, com.google.common.base.b0<? super Map.Entry<K, V>> b0Var) {
        return new v0(b1Var.a(), com.google.common.base.c0.d(b1Var.v(), b0Var));
    }

    public static <K, V> a3<K, V> l(a3<K, V> a3Var, com.google.common.base.b0<? super K> b0Var) {
        if (a3Var instanceof w0) {
            w0 w0Var = (w0) a3Var;
            return new w0(w0Var.a(), com.google.common.base.c0.d(w0Var.f33938g, b0Var));
        }
        return new w0(a3Var, b0Var);
    }

    public static <K, V> h3<K, V> m(h3<K, V> h3Var, com.google.common.base.b0<? super K> b0Var) {
        if (h3Var instanceof n4) {
            return n((n4) h3Var, b0Var);
        }
        if (h3Var instanceof a3) {
            return l((a3) h3Var, b0Var);
        }
        if (h3Var instanceof x0) {
            x0 x0Var = (x0) h3Var;
            return new x0(x0Var.f33937f, com.google.common.base.c0.d(x0Var.f33938g, b0Var));
        } else if (h3Var instanceof z0) {
            return j((z0) h3Var, f3.U(b0Var));
        } else {
            return new x0(h3Var, b0Var);
        }
    }

    public static <K, V> n4<K, V> n(n4<K, V> n4Var, com.google.common.base.b0<? super K> b0Var) {
        if (n4Var instanceof y0) {
            y0 y0Var = (y0) n4Var;
            return new y0(y0Var.a(), com.google.common.base.c0.d(y0Var.f33938g, b0Var));
        } else if (n4Var instanceof b1) {
            return k((b1) n4Var, f3.U(b0Var));
        } else {
            return new y0(n4Var, b0Var);
        }
    }

    public static <K, V> h3<K, V> o(h3<K, V> h3Var, com.google.common.base.b0<? super V> b0Var) {
        return h(h3Var, f3.Q0(b0Var));
    }

    public static <K, V> n4<K, V> p(n4<K, V> n4Var, com.google.common.base.b0<? super V> b0Var) {
        return i(n4Var, f3.Q0(b0Var));
    }

    public static <K, V> n4<K, V> q(Map<K, V> map) {
        return new h(map);
    }

    public static <K, V> ImmutableListMultimap<K, V> r(Iterable<V> iterable, com.google.common.base.q<? super V, K> qVar) {
        return s(iterable.iterator(), qVar);
    }

    public static <K, V> ImmutableListMultimap<K, V> s(Iterator<V> it, com.google.common.base.q<? super V, K> qVar) {
        com.google.common.base.a0.E(qVar);
        ImmutableListMultimap.a builder = ImmutableListMultimap.builder();
        while (it.hasNext()) {
            V next = it.next();
            com.google.common.base.a0.F(next, it);
            builder.f(qVar.apply(next), next);
        }
        return builder.a();
    }

    @CanIgnoreReturnValue
    public static <K, V, M extends h3<K, V>> M t(h3<? extends V, ? extends K> h3Var, M m9) {
        com.google.common.base.a0.E(m9);
        for (Map.Entry<? extends V, ? extends K> entry : h3Var.entries()) {
            m9.put(entry.getValue(), entry.getKey());
        }
        return m9;
    }

    public static <K, V> a3<K, V> u(Map<K, Collection<V>> map, com.google.common.base.i0<? extends List<V>> i0Var) {
        return new b(map, i0Var);
    }

    public static <K, V> h3<K, V> v(Map<K, Collection<V>> map, com.google.common.base.i0<? extends Collection<V>> i0Var) {
        return new c(map, i0Var);
    }

    public static <K, V> n4<K, V> w(Map<K, Collection<V>> map, com.google.common.base.i0<? extends Set<V>> i0Var) {
        return new d(map, i0Var);
    }

    public static <K, V> y4<K, V> x(Map<K, Collection<V>> map, com.google.common.base.i0<? extends SortedSet<V>> i0Var) {
        return new e(map, i0Var);
    }

    public static <K, V> a3<K, V> y(a3<K, V> a3Var) {
        return c5.k(a3Var, null);
    }

    public static <K, V> h3<K, V> z(h3<K, V> h3Var) {
        return c5.m(h3Var, null);
    }
}
