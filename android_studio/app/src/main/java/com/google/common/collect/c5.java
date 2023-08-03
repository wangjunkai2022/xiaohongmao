package com.google.common.collect;

import com.google.common.collect.d5;
import com.google.common.collect.k3;
import com.google.j2objc.annotations.RetainedWith;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Collection;
import java.util.Comparator;
import java.util.Deque;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Queue;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Synchronized.java */
@h3.b(emulated = true)
/* loaded from: classes2.dex */
public final class c5 {

    /* compiled from: Synchronized.java */
    /* loaded from: classes2.dex */
    private static class b<K, V> extends k<K, Collection<V>> {

        /* renamed from: j  reason: collision with root package name */
        private static final long f33183j = 0;
        @MonotonicNonNullDecl

        /* renamed from: h  reason: collision with root package name */
        transient Set<Map.Entry<K, Collection<V>>> f33184h;
        @MonotonicNonNullDecl

        /* renamed from: i  reason: collision with root package name */
        transient Collection<Collection<V>> f33185i;

        b(Map<K, Collection<V>> map, @NullableDecl Object obj) {
            super(map, obj);
        }

        @Override // com.google.common.collect.c5.k, java.util.Map
        public boolean containsValue(Object obj) {
            return values().contains(obj);
        }

        @Override // com.google.common.collect.c5.k, java.util.Map
        public Set<Map.Entry<K, Collection<V>>> entrySet() {
            Set<Map.Entry<K, Collection<V>>> set;
            synchronized (this.f33221b) {
                if (this.f33184h == null) {
                    this.f33184h = new c(b().entrySet(), this.f33221b);
                }
                set = this.f33184h;
            }
            return set;
        }

        @Override // com.google.common.collect.c5.k, java.util.Map
        public Collection<Collection<V>> values() {
            Collection<Collection<V>> collection;
            synchronized (this.f33221b) {
                if (this.f33185i == null) {
                    this.f33185i = new d(b().values(), this.f33221b);
                }
                collection = this.f33185i;
            }
            return collection;
        }

        @Override // com.google.common.collect.c5.k, java.util.Map
        public Collection<V> get(Object obj) {
            Collection<V> A;
            synchronized (this.f33221b) {
                Collection collection = (Collection) super.get(obj);
                A = collection == null ? null : c5.A(collection, this.f33221b);
            }
            return A;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Synchronized.java */
    /* loaded from: classes2.dex */
    public static class d<V> extends f<Collection<V>> {

        /* renamed from: e  reason: collision with root package name */
        private static final long f33190e = 0;

        /* compiled from: Synchronized.java */
        /* loaded from: classes2.dex */
        class a extends g5<Collection<V>, Collection<V>> {
            a(Iterator it) {
                super(it);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.collect.g5
            /* renamed from: b */
            public Collection<V> a(Collection<V> collection) {
                return c5.A(collection, d.this.f33221b);
            }
        }

        d(Collection<Collection<V>> collection, @NullableDecl Object obj) {
            super(collection, obj);
        }

        @Override // com.google.common.collect.c5.f, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Collection<V>> iterator() {
            return new a(super.iterator());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Synchronized.java */
    @h3.d
    /* loaded from: classes2.dex */
    public static class e<K, V> extends k<K, V> implements com.google.common.collect.u<K, V>, Serializable {

        /* renamed from: j  reason: collision with root package name */
        private static final long f33192j = 0;
        @MonotonicNonNullDecl

        /* renamed from: h  reason: collision with root package name */
        private transient Set<V> f33193h;
        @RetainedWith
        @MonotonicNonNullDecl

        /* renamed from: i  reason: collision with root package name */
        private transient com.google.common.collect.u<V, K> f33194i;

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.c5.k
        /* renamed from: e */
        public com.google.common.collect.u<K, V> d() {
            return (com.google.common.collect.u) super.b();
        }

        @Override // com.google.common.collect.u
        public V forcePut(K k10, V v9) {
            V forcePut;
            synchronized (this.f33221b) {
                forcePut = d().forcePut(k10, v9);
            }
            return forcePut;
        }

        @Override // com.google.common.collect.u
        public com.google.common.collect.u<V, K> inverse() {
            com.google.common.collect.u<V, K> uVar;
            synchronized (this.f33221b) {
                if (this.f33194i == null) {
                    this.f33194i = new e(d().inverse(), this.f33221b, this);
                }
                uVar = this.f33194i;
            }
            return uVar;
        }

        private e(com.google.common.collect.u<K, V> uVar, @NullableDecl Object obj, @NullableDecl com.google.common.collect.u<V, K> uVar2) {
            super(uVar, obj);
            this.f33194i = uVar2;
        }

        @Override // com.google.common.collect.c5.k, java.util.Map
        public Set<V> values() {
            Set<V> set;
            synchronized (this.f33221b) {
                if (this.f33193h == null) {
                    this.f33193h = c5.u(d().values(), this.f33221b);
                }
                set = this.f33193h;
            }
            return set;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Synchronized.java */
    @h3.d
    /* loaded from: classes2.dex */
    public static class f<E> extends p implements Collection<E> {

        /* renamed from: d  reason: collision with root package name */
        private static final long f33195d = 0;

        @Override // java.util.Collection
        public boolean add(E e4) {
            boolean add;
            synchronized (this.f33221b) {
                add = b().add(e4);
            }
            return add;
        }

        @Override // java.util.Collection
        public boolean addAll(Collection<? extends E> collection) {
            boolean addAll;
            synchronized (this.f33221b) {
                addAll = b().addAll(collection);
            }
            return addAll;
        }

        @Override // java.util.Collection
        public void clear() {
            synchronized (this.f33221b) {
                b().clear();
            }
        }

        public boolean contains(Object obj) {
            boolean contains;
            synchronized (this.f33221b) {
                contains = b().contains(obj);
            }
            return contains;
        }

        public boolean containsAll(Collection<?> collection) {
            boolean containsAll;
            synchronized (this.f33221b) {
                containsAll = b().containsAll(collection);
            }
            return containsAll;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.c5.p
        /* renamed from: d */
        public Collection<E> b() {
            return (Collection) super.b();
        }

        @Override // java.util.Collection
        public boolean isEmpty() {
            boolean isEmpty;
            synchronized (this.f33221b) {
                isEmpty = b().isEmpty();
            }
            return isEmpty;
        }

        public Iterator<E> iterator() {
            return b().iterator();
        }

        public boolean remove(Object obj) {
            boolean remove;
            synchronized (this.f33221b) {
                remove = b().remove(obj);
            }
            return remove;
        }

        public boolean removeAll(Collection<?> collection) {
            boolean removeAll;
            synchronized (this.f33221b) {
                removeAll = b().removeAll(collection);
            }
            return removeAll;
        }

        public boolean retainAll(Collection<?> collection) {
            boolean retainAll;
            synchronized (this.f33221b) {
                retainAll = b().retainAll(collection);
            }
            return retainAll;
        }

        @Override // java.util.Collection
        public int size() {
            int size;
            synchronized (this.f33221b) {
                size = b().size();
            }
            return size;
        }

        public Object[] toArray() {
            Object[] array;
            synchronized (this.f33221b) {
                array = b().toArray();
            }
            return array;
        }

        private f(Collection<E> collection, @NullableDecl Object obj) {
            super(collection, obj);
        }

        public <T> T[] toArray(T[] tArr) {
            T[] tArr2;
            synchronized (this.f33221b) {
                tArr2 = (T[]) b().toArray(tArr);
            }
            return tArr2;
        }
    }

    /* compiled from: Synchronized.java */
    /* loaded from: classes2.dex */
    private static final class g<E> extends q<E> implements Deque<E> {

        /* renamed from: f  reason: collision with root package name */
        private static final long f33196f = 0;

        g(Deque<E> deque, @NullableDecl Object obj) {
            super(deque, obj);
        }

        @Override // java.util.Deque
        public void addFirst(E e4) {
            synchronized (this.f33221b) {
                e().addFirst(e4);
            }
        }

        @Override // java.util.Deque
        public void addLast(E e4) {
            synchronized (this.f33221b) {
                e().addLast(e4);
            }
        }

        @Override // java.util.Deque
        public Iterator<E> descendingIterator() {
            Iterator<E> descendingIterator;
            synchronized (this.f33221b) {
                descendingIterator = e().descendingIterator();
            }
            return descendingIterator;
        }

        @Override // java.util.Deque
        public E getFirst() {
            E first;
            synchronized (this.f33221b) {
                first = e().getFirst();
            }
            return first;
        }

        @Override // java.util.Deque
        public E getLast() {
            E last;
            synchronized (this.f33221b) {
                last = e().getLast();
            }
            return last;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.c5.q
        /* renamed from: h */
        public Deque<E> e() {
            return (Deque) super.d();
        }

        @Override // java.util.Deque
        public boolean offerFirst(E e4) {
            boolean offerFirst;
            synchronized (this.f33221b) {
                offerFirst = e().offerFirst(e4);
            }
            return offerFirst;
        }

        @Override // java.util.Deque
        public boolean offerLast(E e4) {
            boolean offerLast;
            synchronized (this.f33221b) {
                offerLast = e().offerLast(e4);
            }
            return offerLast;
        }

        @Override // java.util.Deque
        public E peekFirst() {
            E peekFirst;
            synchronized (this.f33221b) {
                peekFirst = e().peekFirst();
            }
            return peekFirst;
        }

        @Override // java.util.Deque
        public E peekLast() {
            E peekLast;
            synchronized (this.f33221b) {
                peekLast = e().peekLast();
            }
            return peekLast;
        }

        @Override // java.util.Deque
        public E pollFirst() {
            E pollFirst;
            synchronized (this.f33221b) {
                pollFirst = e().pollFirst();
            }
            return pollFirst;
        }

        @Override // java.util.Deque
        public E pollLast() {
            E pollLast;
            synchronized (this.f33221b) {
                pollLast = e().pollLast();
            }
            return pollLast;
        }

        @Override // java.util.Deque
        public E pop() {
            E pop;
            synchronized (this.f33221b) {
                pop = e().pop();
            }
            return pop;
        }

        @Override // java.util.Deque
        public void push(E e4) {
            synchronized (this.f33221b) {
                e().push(e4);
            }
        }

        @Override // java.util.Deque
        public E removeFirst() {
            E removeFirst;
            synchronized (this.f33221b) {
                removeFirst = e().removeFirst();
            }
            return removeFirst;
        }

        @Override // java.util.Deque
        public boolean removeFirstOccurrence(Object obj) {
            boolean removeFirstOccurrence;
            synchronized (this.f33221b) {
                removeFirstOccurrence = e().removeFirstOccurrence(obj);
            }
            return removeFirstOccurrence;
        }

        @Override // java.util.Deque
        public E removeLast() {
            E removeLast;
            synchronized (this.f33221b) {
                removeLast = e().removeLast();
            }
            return removeLast;
        }

        @Override // java.util.Deque
        public boolean removeLastOccurrence(Object obj) {
            boolean removeLastOccurrence;
            synchronized (this.f33221b) {
                removeLastOccurrence = e().removeLastOccurrence(obj);
            }
            return removeLastOccurrence;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Synchronized.java */
    @h3.c
    /* loaded from: classes2.dex */
    public static class h<K, V> extends p implements Map.Entry<K, V> {

        /* renamed from: d  reason: collision with root package name */
        private static final long f33197d = 0;

        h(Map.Entry<K, V> entry, @NullableDecl Object obj) {
            super(entry, obj);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.c5.p
        /* renamed from: d */
        public Map.Entry<K, V> b() {
            return (Map.Entry) super.b();
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            boolean equals;
            synchronized (this.f33221b) {
                equals = b().equals(obj);
            }
            return equals;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            K key;
            synchronized (this.f33221b) {
                key = b().getKey();
            }
            return key;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            V value;
            synchronized (this.f33221b) {
                value = b().getValue();
            }
            return value;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            int hashCode;
            synchronized (this.f33221b) {
                hashCode = b().hashCode();
            }
            return hashCode;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v9) {
            V value;
            synchronized (this.f33221b) {
                value = b().setValue(v9);
            }
            return value;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Synchronized.java */
    /* loaded from: classes2.dex */
    public static class i<E> extends f<E> implements List<E> {

        /* renamed from: e  reason: collision with root package name */
        private static final long f33198e = 0;

        i(List<E> list, @NullableDecl Object obj) {
            super(list, obj);
        }

        @Override // java.util.List
        public void add(int i4, E e4) {
            synchronized (this.f33221b) {
                d().add(i4, e4);
            }
        }

        @Override // java.util.List
        public boolean addAll(int i4, Collection<? extends E> collection) {
            boolean addAll;
            synchronized (this.f33221b) {
                addAll = d().addAll(i4, collection);
            }
            return addAll;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.c5.f
        /* renamed from: e */
        public List<E> d() {
            return (List) super.b();
        }

        @Override // java.util.Collection, java.util.List
        public boolean equals(Object obj) {
            boolean equals;
            if (obj == this) {
                return true;
            }
            synchronized (this.f33221b) {
                equals = d().equals(obj);
            }
            return equals;
        }

        @Override // java.util.List
        public E get(int i4) {
            E e4;
            synchronized (this.f33221b) {
                e4 = d().get(i4);
            }
            return e4;
        }

        @Override // java.util.Collection, java.util.List
        public int hashCode() {
            int hashCode;
            synchronized (this.f33221b) {
                hashCode = d().hashCode();
            }
            return hashCode;
        }

        @Override // java.util.List
        public int indexOf(Object obj) {
            int indexOf;
            synchronized (this.f33221b) {
                indexOf = d().indexOf(obj);
            }
            return indexOf;
        }

        @Override // java.util.List
        public int lastIndexOf(Object obj) {
            int lastIndexOf;
            synchronized (this.f33221b) {
                lastIndexOf = d().lastIndexOf(obj);
            }
            return lastIndexOf;
        }

        @Override // java.util.List
        public ListIterator<E> listIterator() {
            return d().listIterator();
        }

        @Override // java.util.List
        public E remove(int i4) {
            E remove;
            synchronized (this.f33221b) {
                remove = d().remove(i4);
            }
            return remove;
        }

        @Override // java.util.List
        public E set(int i4, E e4) {
            E e10;
            synchronized (this.f33221b) {
                e10 = d().set(i4, e4);
            }
            return e10;
        }

        @Override // java.util.List
        public List<E> subList(int i4, int i10) {
            List<E> j4;
            synchronized (this.f33221b) {
                j4 = c5.j(d().subList(i4, i10), this.f33221b);
            }
            return j4;
        }

        @Override // java.util.List
        public ListIterator<E> listIterator(int i4) {
            return d().listIterator(i4);
        }
    }

    /* compiled from: Synchronized.java */
    /* loaded from: classes2.dex */
    private static class j<K, V> extends l<K, V> implements a3<K, V> {

        /* renamed from: j  reason: collision with root package name */
        private static final long f33199j = 0;

        j(a3<K, V> a3Var, @NullableDecl Object obj) {
            super(a3Var, obj);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.c5.l
        /* renamed from: e */
        public a3<K, V> d() {
            return (a3) super.b();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.c5.l, com.google.common.collect.h3, com.google.common.collect.a3
        public /* bridge */ /* synthetic */ Collection get(Object obj) {
            return get((j<K, V>) obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.c5.l, com.google.common.collect.h3, com.google.common.collect.a3
        public /* bridge */ /* synthetic */ Collection replaceValues(Object obj, Iterable iterable) {
            return replaceValues((j<K, V>) obj, iterable);
        }

        @Override // com.google.common.collect.c5.l, com.google.common.collect.h3, com.google.common.collect.a3
        public List<V> get(K k10) {
            List<V> j4;
            synchronized (this.f33221b) {
                j4 = c5.j(d().get((a3<K, V>) k10), this.f33221b);
            }
            return j4;
        }

        @Override // com.google.common.collect.c5.l, com.google.common.collect.h3, com.google.common.collect.a3
        public List<V> removeAll(Object obj) {
            List<V> removeAll;
            synchronized (this.f33221b) {
                removeAll = d().removeAll(obj);
            }
            return removeAll;
        }

        @Override // com.google.common.collect.c5.l, com.google.common.collect.h3, com.google.common.collect.a3
        public List<V> replaceValues(K k10, Iterable<? extends V> iterable) {
            List<V> replaceValues;
            synchronized (this.f33221b) {
                replaceValues = d().replaceValues((a3<K, V>) k10, (Iterable) iterable);
            }
            return replaceValues;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Synchronized.java */
    /* loaded from: classes2.dex */
    public static class k<K, V> extends p implements Map<K, V> {

        /* renamed from: g  reason: collision with root package name */
        private static final long f33200g = 0;
        @MonotonicNonNullDecl

        /* renamed from: d  reason: collision with root package name */
        transient Set<K> f33201d;
        @MonotonicNonNullDecl

        /* renamed from: e  reason: collision with root package name */
        transient Collection<V> f33202e;
        @MonotonicNonNullDecl

        /* renamed from: f  reason: collision with root package name */
        transient Set<Map.Entry<K, V>> f33203f;

        k(Map<K, V> map, @NullableDecl Object obj) {
            super(map, obj);
        }

        @Override // java.util.Map
        public void clear() {
            synchronized (this.f33221b) {
                b().clear();
            }
        }

        @Override // java.util.Map
        public boolean containsKey(Object obj) {
            boolean containsKey;
            synchronized (this.f33221b) {
                containsKey = b().containsKey(obj);
            }
            return containsKey;
        }

        public boolean containsValue(Object obj) {
            boolean containsValue;
            synchronized (this.f33221b) {
                containsValue = b().containsValue(obj);
            }
            return containsValue;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.c5.p
        /* renamed from: d */
        public Map<K, V> b() {
            return (Map) super.b();
        }

        public Set<Map.Entry<K, V>> entrySet() {
            Set<Map.Entry<K, V>> set;
            synchronized (this.f33221b) {
                if (this.f33203f == null) {
                    this.f33203f = c5.u(b().entrySet(), this.f33221b);
                }
                set = this.f33203f;
            }
            return set;
        }

        @Override // java.util.Map
        public boolean equals(Object obj) {
            boolean equals;
            if (obj == this) {
                return true;
            }
            synchronized (this.f33221b) {
                equals = b().equals(obj);
            }
            return equals;
        }

        public V get(Object obj) {
            V v9;
            synchronized (this.f33221b) {
                v9 = b().get(obj);
            }
            return v9;
        }

        @Override // java.util.Map
        public int hashCode() {
            int hashCode;
            synchronized (this.f33221b) {
                hashCode = b().hashCode();
            }
            return hashCode;
        }

        @Override // java.util.Map
        public boolean isEmpty() {
            boolean isEmpty;
            synchronized (this.f33221b) {
                isEmpty = b().isEmpty();
            }
            return isEmpty;
        }

        @Override // java.util.Map
        public Set<K> keySet() {
            Set<K> set;
            synchronized (this.f33221b) {
                if (this.f33201d == null) {
                    this.f33201d = c5.u(b().keySet(), this.f33221b);
                }
                set = this.f33201d;
            }
            return set;
        }

        @Override // java.util.Map
        public V put(K k10, V v9) {
            V put;
            synchronized (this.f33221b) {
                put = b().put(k10, v9);
            }
            return put;
        }

        @Override // java.util.Map
        public void putAll(Map<? extends K, ? extends V> map) {
            synchronized (this.f33221b) {
                b().putAll(map);
            }
        }

        @Override // java.util.Map
        public V remove(Object obj) {
            V remove;
            synchronized (this.f33221b) {
                remove = b().remove(obj);
            }
            return remove;
        }

        @Override // java.util.Map
        public int size() {
            int size;
            synchronized (this.f33221b) {
                size = b().size();
            }
            return size;
        }

        public Collection<V> values() {
            Collection<V> collection;
            synchronized (this.f33221b) {
                if (this.f33202e == null) {
                    this.f33202e = c5.h(b().values(), this.f33221b);
                }
                collection = this.f33202e;
            }
            return collection;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Synchronized.java */
    /* loaded from: classes2.dex */
    public static class p implements Serializable {
        @h3.c

        /* renamed from: c  reason: collision with root package name */
        private static final long f33219c = 0;

        /* renamed from: a  reason: collision with root package name */
        final Object f33220a;

        /* renamed from: b  reason: collision with root package name */
        final Object f33221b;

        p(Object obj, @NullableDecl Object obj2) {
            this.f33220a = com.google.common.base.a0.E(obj);
            this.f33221b = obj2 == null ? this : obj2;
        }

        @h3.c
        private void c(ObjectOutputStream objectOutputStream) throws IOException {
            synchronized (this.f33221b) {
                objectOutputStream.defaultWriteObject();
            }
        }

        Object b() {
            return this.f33220a;
        }

        public String toString() {
            String obj;
            synchronized (this.f33221b) {
                obj = this.f33220a.toString();
            }
            return obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Synchronized.java */
    /* loaded from: classes2.dex */
    public static class q<E> extends f<E> implements Queue<E> {

        /* renamed from: e  reason: collision with root package name */
        private static final long f33222e = 0;

        q(Queue<E> queue, @NullableDecl Object obj) {
            super(queue, obj);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.c5.f
        /* renamed from: e */
        public Queue<E> d() {
            return (Queue) super.b();
        }

        @Override // java.util.Queue
        public E element() {
            E element;
            synchronized (this.f33221b) {
                element = d().element();
            }
            return element;
        }

        @Override // java.util.Queue
        public boolean offer(E e4) {
            boolean offer;
            synchronized (this.f33221b) {
                offer = d().offer(e4);
            }
            return offer;
        }

        @Override // java.util.Queue
        public E peek() {
            E peek;
            synchronized (this.f33221b) {
                peek = d().peek();
            }
            return peek;
        }

        @Override // java.util.Queue
        public E poll() {
            E poll;
            synchronized (this.f33221b) {
                poll = d().poll();
            }
            return poll;
        }

        @Override // java.util.Queue
        public E remove() {
            E remove;
            synchronized (this.f33221b) {
                remove = d().remove();
            }
            return remove;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Synchronized.java */
    /* loaded from: classes2.dex */
    public static class r<E> extends i<E> implements RandomAccess {

        /* renamed from: f  reason: collision with root package name */
        private static final long f33223f = 0;

        r(List<E> list, @NullableDecl Object obj) {
            super(list, obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Synchronized.java */
    /* loaded from: classes2.dex */
    public static class s<E> extends f<E> implements Set<E> {

        /* renamed from: e  reason: collision with root package name */
        private static final long f33224e = 0;

        s(Set<E> set, @NullableDecl Object obj) {
            super(set, obj);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.c5.f
        /* renamed from: e */
        public Set<E> d() {
            return (Set) super.b();
        }

        public boolean equals(Object obj) {
            boolean equals;
            if (obj == this) {
                return true;
            }
            synchronized (this.f33221b) {
                equals = d().equals(obj);
            }
            return equals;
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            int hashCode;
            synchronized (this.f33221b) {
                hashCode = d().hashCode();
            }
            return hashCode;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Synchronized.java */
    /* loaded from: classes2.dex */
    public static class t<K, V> extends l<K, V> implements n4<K, V> {

        /* renamed from: k  reason: collision with root package name */
        private static final long f33225k = 0;
        @MonotonicNonNullDecl

        /* renamed from: j  reason: collision with root package name */
        transient Set<Map.Entry<K, V>> f33226j;

        t(n4<K, V> n4Var, @NullableDecl Object obj) {
            super(n4Var, obj);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.c5.l
        /* renamed from: e */
        public n4<K, V> d() {
            return (n4) super.b();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.c5.l, com.google.common.collect.h3, com.google.common.collect.a3
        public /* bridge */ /* synthetic */ Collection get(Object obj) {
            return get((t<K, V>) obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.c5.l, com.google.common.collect.h3, com.google.common.collect.a3
        public /* bridge */ /* synthetic */ Collection replaceValues(Object obj, Iterable iterable) {
            return replaceValues((t<K, V>) obj, iterable);
        }

        @Override // com.google.common.collect.c5.l, com.google.common.collect.h3
        public Set<Map.Entry<K, V>> entries() {
            Set<Map.Entry<K, V>> set;
            synchronized (this.f33221b) {
                if (this.f33226j == null) {
                    this.f33226j = c5.u(d().entries(), this.f33221b);
                }
                set = this.f33226j;
            }
            return set;
        }

        @Override // com.google.common.collect.c5.l, com.google.common.collect.h3, com.google.common.collect.a3
        public Set<V> get(K k10) {
            Set<V> u9;
            synchronized (this.f33221b) {
                u9 = c5.u(d().get((n4<K, V>) k10), this.f33221b);
            }
            return u9;
        }

        @Override // com.google.common.collect.c5.l, com.google.common.collect.h3, com.google.common.collect.a3
        public Set<V> removeAll(Object obj) {
            Set<V> removeAll;
            synchronized (this.f33221b) {
                removeAll = d().removeAll(obj);
            }
            return removeAll;
        }

        @Override // com.google.common.collect.c5.l, com.google.common.collect.h3, com.google.common.collect.a3
        public Set<V> replaceValues(K k10, Iterable<? extends V> iterable) {
            Set<V> replaceValues;
            synchronized (this.f33221b) {
                replaceValues = d().replaceValues((n4<K, V>) k10, (Iterable) iterable);
            }
            return replaceValues;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Synchronized.java */
    /* loaded from: classes2.dex */
    public static class u<K, V> extends k<K, V> implements SortedMap<K, V> {

        /* renamed from: h  reason: collision with root package name */
        private static final long f33227h = 0;

        u(SortedMap<K, V> sortedMap, @NullableDecl Object obj) {
            super(sortedMap, obj);
        }

        @Override // java.util.SortedMap
        public Comparator<? super K> comparator() {
            Comparator<? super K> comparator;
            synchronized (this.f33221b) {
                comparator = d().comparator();
            }
            return comparator;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.c5.k
        /* renamed from: e */
        public SortedMap<K, V> d() {
            return (SortedMap) super.b();
        }

        @Override // java.util.SortedMap
        public K firstKey() {
            K firstKey;
            synchronized (this.f33221b) {
                firstKey = d().firstKey();
            }
            return firstKey;
        }

        public SortedMap<K, V> headMap(K k10) {
            SortedMap<K, V> w9;
            synchronized (this.f33221b) {
                w9 = c5.w(d().headMap(k10), this.f33221b);
            }
            return w9;
        }

        @Override // java.util.SortedMap
        public K lastKey() {
            K lastKey;
            synchronized (this.f33221b) {
                lastKey = d().lastKey();
            }
            return lastKey;
        }

        public SortedMap<K, V> subMap(K k10, K k11) {
            SortedMap<K, V> w9;
            synchronized (this.f33221b) {
                w9 = c5.w(d().subMap(k10, k11), this.f33221b);
            }
            return w9;
        }

        public SortedMap<K, V> tailMap(K k10) {
            SortedMap<K, V> w9;
            synchronized (this.f33221b) {
                w9 = c5.w(d().tailMap(k10), this.f33221b);
            }
            return w9;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Synchronized.java */
    /* loaded from: classes2.dex */
    public static class v<E> extends s<E> implements SortedSet<E> {

        /* renamed from: f  reason: collision with root package name */
        private static final long f33228f = 0;

        v(SortedSet<E> sortedSet, @NullableDecl Object obj) {
            super(sortedSet, obj);
        }

        @Override // java.util.SortedSet
        public Comparator<? super E> comparator() {
            Comparator<? super E> comparator;
            synchronized (this.f33221b) {
                comparator = e().comparator();
            }
            return comparator;
        }

        @Override // java.util.SortedSet
        public E first() {
            E first;
            synchronized (this.f33221b) {
                first = e().first();
            }
            return first;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.c5.s
        /* renamed from: h */
        public SortedSet<E> e() {
            return (SortedSet) super.d();
        }

        public SortedSet<E> headSet(E e4) {
            SortedSet<E> x9;
            synchronized (this.f33221b) {
                x9 = c5.x(e().headSet(e4), this.f33221b);
            }
            return x9;
        }

        @Override // java.util.SortedSet
        public E last() {
            E last;
            synchronized (this.f33221b) {
                last = e().last();
            }
            return last;
        }

        public SortedSet<E> subSet(E e4, E e10) {
            SortedSet<E> x9;
            synchronized (this.f33221b) {
                x9 = c5.x(e().subSet(e4, e10), this.f33221b);
            }
            return x9;
        }

        public SortedSet<E> tailSet(E e4) {
            SortedSet<E> x9;
            synchronized (this.f33221b) {
                x9 = c5.x(e().tailSet(e4), this.f33221b);
            }
            return x9;
        }
    }

    /* compiled from: Synchronized.java */
    /* loaded from: classes2.dex */
    private static class w<K, V> extends t<K, V> implements y4<K, V> {

        /* renamed from: l  reason: collision with root package name */
        private static final long f33229l = 0;

        w(y4<K, V> y4Var, @NullableDecl Object obj) {
            super(y4Var, obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.c5.t, com.google.common.collect.c5.l, com.google.common.collect.h3, com.google.common.collect.a3
        public /* bridge */ /* synthetic */ Collection get(Object obj) {
            return get((w<K, V>) obj);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.c5.t
        /* renamed from: h */
        public y4<K, V> e() {
            return (y4) super.d();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.c5.t, com.google.common.collect.c5.l, com.google.common.collect.h3, com.google.common.collect.a3
        public /* bridge */ /* synthetic */ Collection replaceValues(Object obj, Iterable iterable) {
            return replaceValues((w<K, V>) obj, iterable);
        }

        @Override // com.google.common.collect.y4
        public Comparator<? super V> valueComparator() {
            Comparator<? super V> valueComparator;
            synchronized (this.f33221b) {
                valueComparator = e().valueComparator();
            }
            return valueComparator;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.c5.t, com.google.common.collect.c5.l, com.google.common.collect.h3, com.google.common.collect.a3
        public /* bridge */ /* synthetic */ Set get(Object obj) {
            return get((w<K, V>) obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.c5.t, com.google.common.collect.c5.l, com.google.common.collect.h3, com.google.common.collect.a3
        public /* bridge */ /* synthetic */ Set replaceValues(Object obj, Iterable iterable) {
            return replaceValues((w<K, V>) obj, iterable);
        }

        @Override // com.google.common.collect.c5.t, com.google.common.collect.c5.l, com.google.common.collect.h3, com.google.common.collect.a3
        public SortedSet<V> get(K k10) {
            SortedSet<V> x9;
            synchronized (this.f33221b) {
                x9 = c5.x(e().get((y4<K, V>) k10), this.f33221b);
            }
            return x9;
        }

        @Override // com.google.common.collect.c5.t, com.google.common.collect.c5.l, com.google.common.collect.h3, com.google.common.collect.a3
        public SortedSet<V> removeAll(Object obj) {
            SortedSet<V> removeAll;
            synchronized (this.f33221b) {
                removeAll = e().removeAll(obj);
            }
            return removeAll;
        }

        @Override // com.google.common.collect.c5.t, com.google.common.collect.c5.l, com.google.common.collect.h3, com.google.common.collect.a3
        public SortedSet<V> replaceValues(K k10, Iterable<? extends V> iterable) {
            SortedSet<V> replaceValues;
            synchronized (this.f33221b) {
                replaceValues = e().replaceValues((y4<K, V>) k10, (Iterable) iterable);
            }
            return replaceValues;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Synchronized.java */
    /* loaded from: classes2.dex */
    public static final class x<R, C, V> extends p implements d5<R, C, V> {

        /* compiled from: Synchronized.java */
        /* loaded from: classes2.dex */
        class a implements com.google.common.base.q<Map<C, V>, Map<C, V>> {
            a() {
            }

            @Override // com.google.common.base.q
            /* renamed from: a */
            public Map<C, V> apply(Map<C, V> map) {
                return c5.l(map, x.this.f33221b);
            }
        }

        /* compiled from: Synchronized.java */
        /* loaded from: classes2.dex */
        class b implements com.google.common.base.q<Map<R, V>, Map<R, V>> {
            b() {
            }

            @Override // com.google.common.base.q
            /* renamed from: a */
            public Map<R, V> apply(Map<R, V> map) {
                return c5.l(map, x.this.f33221b);
            }
        }

        x(d5<R, C, V> d5Var, Object obj) {
            super(d5Var, obj);
        }

        @Override // com.google.common.collect.d5
        public Set<d5.a<R, C, V>> cellSet() {
            Set<d5.a<R, C, V>> u9;
            synchronized (this.f33221b) {
                u9 = c5.u(b().cellSet(), this.f33221b);
            }
            return u9;
        }

        @Override // com.google.common.collect.d5
        public void clear() {
            synchronized (this.f33221b) {
                b().clear();
            }
        }

        @Override // com.google.common.collect.d5
        public Map<R, V> column(@NullableDecl C c10) {
            Map<R, V> l10;
            synchronized (this.f33221b) {
                l10 = c5.l(b().column(c10), this.f33221b);
            }
            return l10;
        }

        @Override // com.google.common.collect.d5
        public Set<C> columnKeySet() {
            Set<C> u9;
            synchronized (this.f33221b) {
                u9 = c5.u(b().columnKeySet(), this.f33221b);
            }
            return u9;
        }

        @Override // com.google.common.collect.d5
        public Map<C, Map<R, V>> columnMap() {
            Map<C, Map<R, V>> l10;
            synchronized (this.f33221b) {
                l10 = c5.l(f3.B0(b().columnMap(), new b()), this.f33221b);
            }
            return l10;
        }

        @Override // com.google.common.collect.d5
        public boolean contains(@NullableDecl Object obj, @NullableDecl Object obj2) {
            boolean contains;
            synchronized (this.f33221b) {
                contains = b().contains(obj, obj2);
            }
            return contains;
        }

        @Override // com.google.common.collect.d5
        public boolean containsColumn(@NullableDecl Object obj) {
            boolean containsColumn;
            synchronized (this.f33221b) {
                containsColumn = b().containsColumn(obj);
            }
            return containsColumn;
        }

        @Override // com.google.common.collect.d5
        public boolean containsRow(@NullableDecl Object obj) {
            boolean containsRow;
            synchronized (this.f33221b) {
                containsRow = b().containsRow(obj);
            }
            return containsRow;
        }

        @Override // com.google.common.collect.d5
        public boolean containsValue(@NullableDecl Object obj) {
            boolean containsValue;
            synchronized (this.f33221b) {
                containsValue = b().containsValue(obj);
            }
            return containsValue;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.c5.p
        /* renamed from: d */
        public d5<R, C, V> b() {
            return (d5) super.b();
        }

        @Override // com.google.common.collect.d5
        public boolean equals(@NullableDecl Object obj) {
            boolean equals;
            if (this == obj) {
                return true;
            }
            synchronized (this.f33221b) {
                equals = b().equals(obj);
            }
            return equals;
        }

        @Override // com.google.common.collect.d5
        public V get(@NullableDecl Object obj, @NullableDecl Object obj2) {
            V v9;
            synchronized (this.f33221b) {
                v9 = b().get(obj, obj2);
            }
            return v9;
        }

        @Override // com.google.common.collect.d5
        public int hashCode() {
            int hashCode;
            synchronized (this.f33221b) {
                hashCode = b().hashCode();
            }
            return hashCode;
        }

        @Override // com.google.common.collect.d5
        public boolean isEmpty() {
            boolean isEmpty;
            synchronized (this.f33221b) {
                isEmpty = b().isEmpty();
            }
            return isEmpty;
        }

        @Override // com.google.common.collect.d5
        public V put(@NullableDecl R r9, @NullableDecl C c10, @NullableDecl V v9) {
            V put;
            synchronized (this.f33221b) {
                put = b().put(r9, c10, v9);
            }
            return put;
        }

        @Override // com.google.common.collect.d5
        public void putAll(d5<? extends R, ? extends C, ? extends V> d5Var) {
            synchronized (this.f33221b) {
                b().putAll(d5Var);
            }
        }

        @Override // com.google.common.collect.d5
        public V remove(@NullableDecl Object obj, @NullableDecl Object obj2) {
            V remove;
            synchronized (this.f33221b) {
                remove = b().remove(obj, obj2);
            }
            return remove;
        }

        @Override // com.google.common.collect.d5
        public Map<C, V> row(@NullableDecl R r9) {
            Map<C, V> l10;
            synchronized (this.f33221b) {
                l10 = c5.l(b().row(r9), this.f33221b);
            }
            return l10;
        }

        @Override // com.google.common.collect.d5
        public Set<R> rowKeySet() {
            Set<R> u9;
            synchronized (this.f33221b) {
                u9 = c5.u(b().rowKeySet(), this.f33221b);
            }
            return u9;
        }

        @Override // com.google.common.collect.d5
        public Map<R, Map<C, V>> rowMap() {
            Map<R, Map<C, V>> l10;
            synchronized (this.f33221b) {
                l10 = c5.l(f3.B0(b().rowMap(), new a()), this.f33221b);
            }
            return l10;
        }

        @Override // com.google.common.collect.d5
        public int size() {
            int size;
            synchronized (this.f33221b) {
                size = b().size();
            }
            return size;
        }

        @Override // com.google.common.collect.d5
        public Collection<V> values() {
            Collection<V> h4;
            synchronized (this.f33221b) {
                h4 = c5.h(b().values(), this.f33221b);
            }
            return h4;
        }
    }

    private c5() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> Collection<E> A(Collection<E> collection, @NullableDecl Object obj) {
        if (collection instanceof SortedSet) {
            return x((SortedSet) collection, obj);
        }
        if (collection instanceof Set) {
            return u((Set) collection, obj);
        }
        if (collection instanceof List) {
            return j((List) collection, obj);
        }
        return h(collection, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> Set<E> B(Set<E> set, @NullableDecl Object obj) {
        if (set instanceof SortedSet) {
            return x((SortedSet) set, obj);
        }
        return u(set, obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> com.google.common.collect.u<K, V> g(com.google.common.collect.u<K, V> uVar, @NullableDecl Object obj) {
        return ((uVar instanceof e) || (uVar instanceof ImmutableBiMap)) ? uVar : new e(uVar, obj, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> Collection<E> h(Collection<E> collection, @NullableDecl Object obj) {
        return new f(collection, obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> Deque<E> i(Deque<E> deque, @NullableDecl Object obj) {
        return new g(deque, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> List<E> j(List<E> list, @NullableDecl Object obj) {
        return list instanceof RandomAccess ? new r(list, obj) : new i(list, obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> a3<K, V> k(a3<K, V> a3Var, @NullableDecl Object obj) {
        return ((a3Var instanceof j) || (a3Var instanceof com.google.common.collect.t)) ? a3Var : new j(a3Var, obj);
    }

    @h3.d
    static <K, V> Map<K, V> l(Map<K, V> map, @NullableDecl Object obj) {
        return new k(map, obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> h3<K, V> m(h3<K, V> h3Var, @NullableDecl Object obj) {
        return ((h3Var instanceof l) || (h3Var instanceof com.google.common.collect.t)) ? h3Var : new l(h3Var, obj);
    }

    static <E> k3<E> n(k3<E> k3Var, @NullableDecl Object obj) {
        return ((k3Var instanceof m) || (k3Var instanceof ImmutableMultiset)) ? k3Var : new m(k3Var, obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @h3.c
    public static <K, V> NavigableMap<K, V> o(NavigableMap<K, V> navigableMap) {
        return p(navigableMap, null);
    }

    @h3.c
    static <K, V> NavigableMap<K, V> p(NavigableMap<K, V> navigableMap, @NullableDecl Object obj) {
        return new n(navigableMap, obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @h3.c
    public static <E> NavigableSet<E> q(NavigableSet<E> navigableSet) {
        return r(navigableSet, null);
    }

    @h3.c
    static <E> NavigableSet<E> r(NavigableSet<E> navigableSet, @NullableDecl Object obj) {
        return new o(navigableSet, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @h3.c
    public static <K, V> Map.Entry<K, V> s(@NullableDecl Map.Entry<K, V> entry, @NullableDecl Object obj) {
        if (entry == null) {
            return null;
        }
        return new h(entry, obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> Queue<E> t(Queue<E> queue, @NullableDecl Object obj) {
        return queue instanceof q ? queue : new q(queue, obj);
    }

    @h3.d
    static <E> Set<E> u(Set<E> set, @NullableDecl Object obj) {
        return new s(set, obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> n4<K, V> v(n4<K, V> n4Var, @NullableDecl Object obj) {
        return ((n4Var instanceof t) || (n4Var instanceof com.google.common.collect.t)) ? n4Var : new t(n4Var, obj);
    }

    static <K, V> SortedMap<K, V> w(SortedMap<K, V> sortedMap, @NullableDecl Object obj) {
        return new u(sortedMap, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> SortedSet<E> x(SortedSet<E> sortedSet, @NullableDecl Object obj) {
        return new v(sortedSet, obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> y4<K, V> y(y4<K, V> y4Var, @NullableDecl Object obj) {
        return y4Var instanceof w ? y4Var : new w(y4Var, obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <R, C, V> d5<R, C, V> z(d5<R, C, V> d5Var, Object obj) {
        return new x(d5Var, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Synchronized.java */
    /* loaded from: classes2.dex */
    public static class c<K, V> extends s<Map.Entry<K, Collection<V>>> {

        /* renamed from: f  reason: collision with root package name */
        private static final long f33186f = 0;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Synchronized.java */
        /* loaded from: classes2.dex */
        public class a extends g5<Map.Entry<K, Collection<V>>, Map.Entry<K, Collection<V>>> {

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: Synchronized.java */
            /* renamed from: com.google.common.collect.c5$c$a$a  reason: collision with other inner class name */
            /* loaded from: classes2.dex */
            public class C0220a extends q1<K, Collection<V>> {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ Map.Entry f33188a;

                C0220a(Map.Entry entry) {
                    this.f33188a = entry;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.google.common.collect.q1, com.google.common.collect.v1
                /* renamed from: M */
                public Map.Entry<K, Collection<V>> L() {
                    return this.f33188a;
                }

                @Override // com.google.common.collect.q1, java.util.Map.Entry
                /* renamed from: Q */
                public Collection<V> getValue() {
                    return c5.A((Collection) this.f33188a.getValue(), c.this.f33221b);
                }
            }

            a(Iterator it) {
                super(it);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.collect.g5
            /* renamed from: b */
            public Map.Entry<K, Collection<V>> a(Map.Entry<K, Collection<V>> entry) {
                return new C0220a(entry);
            }
        }

        c(Set<Map.Entry<K, Collection<V>>> set, @NullableDecl Object obj) {
            super(set, obj);
        }

        @Override // com.google.common.collect.c5.f, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            boolean p9;
            synchronized (this.f33221b) {
                p9 = f3.p(d(), obj);
            }
            return p9;
        }

        @Override // com.google.common.collect.c5.f, java.util.Collection, java.util.Set
        public boolean containsAll(Collection<?> collection) {
            boolean c10;
            synchronized (this.f33221b) {
                c10 = z.c(d(), collection);
            }
            return c10;
        }

        @Override // com.google.common.collect.c5.s, java.util.Collection, java.util.Set
        public boolean equals(Object obj) {
            boolean g4;
            if (obj == this) {
                return true;
            }
            synchronized (this.f33221b) {
                g4 = o4.g(d(), obj);
            }
            return g4;
        }

        @Override // com.google.common.collect.c5.f, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, Collection<V>>> iterator() {
            return new a(super.iterator());
        }

        @Override // com.google.common.collect.c5.f, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            boolean k02;
            synchronized (this.f33221b) {
                k02 = f3.k0(d(), obj);
            }
            return k02;
        }

        @Override // com.google.common.collect.c5.f, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            boolean V;
            synchronized (this.f33221b) {
                V = x2.V(d().iterator(), collection);
            }
            return V;
        }

        @Override // com.google.common.collect.c5.f, java.util.Collection, java.util.Set
        public boolean retainAll(Collection<?> collection) {
            boolean X;
            synchronized (this.f33221b) {
                X = x2.X(d().iterator(), collection);
            }
            return X;
        }

        @Override // com.google.common.collect.c5.f, java.util.Collection, java.util.Set
        public Object[] toArray() {
            Object[] l10;
            synchronized (this.f33221b) {
                l10 = p3.l(d());
            }
            return l10;
        }

        @Override // com.google.common.collect.c5.f, java.util.Collection, java.util.Set
        public <T> T[] toArray(T[] tArr) {
            T[] tArr2;
            synchronized (this.f33221b) {
                tArr2 = (T[]) p3.m(d(), tArr);
            }
            return tArr2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Synchronized.java */
    /* loaded from: classes2.dex */
    public static class l<K, V> extends p implements h3<K, V> {

        /* renamed from: i  reason: collision with root package name */
        private static final long f33204i = 0;
        @MonotonicNonNullDecl

        /* renamed from: d  reason: collision with root package name */
        transient Set<K> f33205d;
        @MonotonicNonNullDecl

        /* renamed from: e  reason: collision with root package name */
        transient Collection<V> f33206e;
        @MonotonicNonNullDecl

        /* renamed from: f  reason: collision with root package name */
        transient Collection<Map.Entry<K, V>> f33207f;
        @MonotonicNonNullDecl

        /* renamed from: g  reason: collision with root package name */
        transient Map<K, Collection<V>> f33208g;
        @MonotonicNonNullDecl

        /* renamed from: h  reason: collision with root package name */
        transient k3<K> f33209h;

        l(h3<K, V> h3Var, @NullableDecl Object obj) {
            super(h3Var, obj);
        }

        @Override // com.google.common.collect.h3, com.google.common.collect.a3
        public Map<K, Collection<V>> asMap() {
            Map<K, Collection<V>> map;
            synchronized (this.f33221b) {
                if (this.f33208g == null) {
                    this.f33208g = new b(b().asMap(), this.f33221b);
                }
                map = this.f33208g;
            }
            return map;
        }

        @Override // com.google.common.collect.h3
        public void clear() {
            synchronized (this.f33221b) {
                b().clear();
            }
        }

        @Override // com.google.common.collect.h3
        public boolean containsEntry(Object obj, Object obj2) {
            boolean containsEntry;
            synchronized (this.f33221b) {
                containsEntry = b().containsEntry(obj, obj2);
            }
            return containsEntry;
        }

        @Override // com.google.common.collect.h3
        public boolean containsKey(Object obj) {
            boolean containsKey;
            synchronized (this.f33221b) {
                containsKey = b().containsKey(obj);
            }
            return containsKey;
        }

        @Override // com.google.common.collect.h3
        public boolean containsValue(Object obj) {
            boolean containsValue;
            synchronized (this.f33221b) {
                containsValue = b().containsValue(obj);
            }
            return containsValue;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.c5.p
        /* renamed from: d */
        public h3<K, V> b() {
            return (h3) super.b();
        }

        @Override // com.google.common.collect.h3
        public Collection<Map.Entry<K, V>> entries() {
            Collection<Map.Entry<K, V>> collection;
            synchronized (this.f33221b) {
                if (this.f33207f == null) {
                    this.f33207f = c5.A(b().entries(), this.f33221b);
                }
                collection = this.f33207f;
            }
            return collection;
        }

        @Override // com.google.common.collect.h3, com.google.common.collect.a3
        public boolean equals(Object obj) {
            boolean equals;
            if (obj == this) {
                return true;
            }
            synchronized (this.f33221b) {
                equals = b().equals(obj);
            }
            return equals;
        }

        public Collection<V> get(K k10) {
            Collection<V> A;
            synchronized (this.f33221b) {
                A = c5.A(b().get(k10), this.f33221b);
            }
            return A;
        }

        @Override // com.google.common.collect.h3
        public int hashCode() {
            int hashCode;
            synchronized (this.f33221b) {
                hashCode = b().hashCode();
            }
            return hashCode;
        }

        @Override // com.google.common.collect.h3
        public boolean isEmpty() {
            boolean isEmpty;
            synchronized (this.f33221b) {
                isEmpty = b().isEmpty();
            }
            return isEmpty;
        }

        @Override // com.google.common.collect.h3
        public Set<K> keySet() {
            Set<K> set;
            synchronized (this.f33221b) {
                if (this.f33205d == null) {
                    this.f33205d = c5.B(b().keySet(), this.f33221b);
                }
                set = this.f33205d;
            }
            return set;
        }

        @Override // com.google.common.collect.h3
        public k3<K> keys() {
            k3<K> k3Var;
            synchronized (this.f33221b) {
                if (this.f33209h == null) {
                    this.f33209h = c5.n(b().keys(), this.f33221b);
                }
                k3Var = this.f33209h;
            }
            return k3Var;
        }

        @Override // com.google.common.collect.h3
        public boolean put(K k10, V v9) {
            boolean put;
            synchronized (this.f33221b) {
                put = b().put(k10, v9);
            }
            return put;
        }

        @Override // com.google.common.collect.h3
        public boolean putAll(K k10, Iterable<? extends V> iterable) {
            boolean putAll;
            synchronized (this.f33221b) {
                putAll = b().putAll(k10, iterable);
            }
            return putAll;
        }

        @Override // com.google.common.collect.h3
        public boolean remove(Object obj, Object obj2) {
            boolean remove;
            synchronized (this.f33221b) {
                remove = b().remove(obj, obj2);
            }
            return remove;
        }

        public Collection<V> removeAll(Object obj) {
            Collection<V> removeAll;
            synchronized (this.f33221b) {
                removeAll = b().removeAll(obj);
            }
            return removeAll;
        }

        public Collection<V> replaceValues(K k10, Iterable<? extends V> iterable) {
            Collection<V> replaceValues;
            synchronized (this.f33221b) {
                replaceValues = b().replaceValues(k10, iterable);
            }
            return replaceValues;
        }

        @Override // com.google.common.collect.h3
        public int size() {
            int size;
            synchronized (this.f33221b) {
                size = b().size();
            }
            return size;
        }

        @Override // com.google.common.collect.h3
        public Collection<V> values() {
            Collection<V> collection;
            synchronized (this.f33221b) {
                if (this.f33206e == null) {
                    this.f33206e = c5.h(b().values(), this.f33221b);
                }
                collection = this.f33206e;
            }
            return collection;
        }

        @Override // com.google.common.collect.h3
        public boolean putAll(h3<? extends K, ? extends V> h3Var) {
            boolean putAll;
            synchronized (this.f33221b) {
                putAll = b().putAll(h3Var);
            }
            return putAll;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Synchronized.java */
    /* loaded from: classes2.dex */
    public static class m<E> extends f<E> implements k3<E> {

        /* renamed from: g  reason: collision with root package name */
        private static final long f33210g = 0;
        @MonotonicNonNullDecl

        /* renamed from: e  reason: collision with root package name */
        transient Set<E> f33211e;
        @MonotonicNonNullDecl

        /* renamed from: f  reason: collision with root package name */
        transient Set<k3.a<E>> f33212f;

        m(k3<E> k3Var, @NullableDecl Object obj) {
            super(k3Var, obj);
        }

        @Override // com.google.common.collect.k3
        public int add(E e4, int i4) {
            int add;
            synchronized (this.f33221b) {
                add = d().add(e4, i4);
            }
            return add;
        }

        @Override // com.google.common.collect.k3
        public int count(Object obj) {
            int count;
            synchronized (this.f33221b) {
                count = d().count(obj);
            }
            return count;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.c5.f
        /* renamed from: e */
        public k3<E> d() {
            return (k3) super.b();
        }

        @Override // com.google.common.collect.k3
        public Set<E> elementSet() {
            Set<E> set;
            synchronized (this.f33221b) {
                if (this.f33211e == null) {
                    this.f33211e = c5.B(d().elementSet(), this.f33221b);
                }
                set = this.f33211e;
            }
            return set;
        }

        @Override // com.google.common.collect.k3
        public Set<k3.a<E>> entrySet() {
            Set<k3.a<E>> set;
            synchronized (this.f33221b) {
                if (this.f33212f == null) {
                    this.f33212f = c5.B(d().entrySet(), this.f33221b);
                }
                set = this.f33212f;
            }
            return set;
        }

        @Override // java.util.Collection, com.google.common.collect.k3
        public boolean equals(Object obj) {
            boolean equals;
            if (obj == this) {
                return true;
            }
            synchronized (this.f33221b) {
                equals = d().equals(obj);
            }
            return equals;
        }

        @Override // java.util.Collection, com.google.common.collect.k3
        public int hashCode() {
            int hashCode;
            synchronized (this.f33221b) {
                hashCode = d().hashCode();
            }
            return hashCode;
        }

        @Override // com.google.common.collect.k3
        public int remove(Object obj, int i4) {
            int remove;
            synchronized (this.f33221b) {
                remove = d().remove(obj, i4);
            }
            return remove;
        }

        @Override // com.google.common.collect.k3
        public int setCount(E e4, int i4) {
            int count;
            synchronized (this.f33221b) {
                count = d().setCount(e4, i4);
            }
            return count;
        }

        @Override // com.google.common.collect.k3
        public boolean setCount(E e4, int i4, int i10) {
            boolean count;
            synchronized (this.f33221b) {
                count = d().setCount(e4, i4, i10);
            }
            return count;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Synchronized.java */
    @h3.c
    @h3.d
    /* loaded from: classes2.dex */
    public static class n<K, V> extends u<K, V> implements NavigableMap<K, V> {

        /* renamed from: l  reason: collision with root package name */
        private static final long f33213l = 0;
        @MonotonicNonNullDecl

        /* renamed from: i  reason: collision with root package name */
        transient NavigableSet<K> f33214i;
        @MonotonicNonNullDecl

        /* renamed from: j  reason: collision with root package name */
        transient NavigableMap<K, V> f33215j;
        @MonotonicNonNullDecl

        /* renamed from: k  reason: collision with root package name */
        transient NavigableSet<K> f33216k;

        n(NavigableMap<K, V> navigableMap, @NullableDecl Object obj) {
            super(navigableMap, obj);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> ceilingEntry(K k10) {
            Map.Entry<K, V> s9;
            synchronized (this.f33221b) {
                s9 = c5.s(e().ceilingEntry(k10), this.f33221b);
            }
            return s9;
        }

        @Override // java.util.NavigableMap
        public K ceilingKey(K k10) {
            K ceilingKey;
            synchronized (this.f33221b) {
                ceilingKey = e().ceilingKey(k10);
            }
            return ceilingKey;
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> descendingKeySet() {
            synchronized (this.f33221b) {
                NavigableSet<K> navigableSet = this.f33214i;
                if (navigableSet == null) {
                    NavigableSet<K> r9 = c5.r(e().descendingKeySet(), this.f33221b);
                    this.f33214i = r9;
                    return r9;
                }
                return navigableSet;
            }
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> descendingMap() {
            synchronized (this.f33221b) {
                NavigableMap<K, V> navigableMap = this.f33215j;
                if (navigableMap == null) {
                    NavigableMap<K, V> p9 = c5.p(e().descendingMap(), this.f33221b);
                    this.f33215j = p9;
                    return p9;
                }
                return navigableMap;
            }
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> firstEntry() {
            Map.Entry<K, V> s9;
            synchronized (this.f33221b) {
                s9 = c5.s(e().firstEntry(), this.f33221b);
            }
            return s9;
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> floorEntry(K k10) {
            Map.Entry<K, V> s9;
            synchronized (this.f33221b) {
                s9 = c5.s(e().floorEntry(k10), this.f33221b);
            }
            return s9;
        }

        @Override // java.util.NavigableMap
        public K floorKey(K k10) {
            K floorKey;
            synchronized (this.f33221b) {
                floorKey = e().floorKey(k10);
            }
            return floorKey;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.c5.u
        /* renamed from: h */
        public NavigableMap<K, V> e() {
            return (NavigableMap) super.d();
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> headMap(K k10, boolean z9) {
            NavigableMap<K, V> p9;
            synchronized (this.f33221b) {
                p9 = c5.p(e().headMap(k10, z9), this.f33221b);
            }
            return p9;
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> higherEntry(K k10) {
            Map.Entry<K, V> s9;
            synchronized (this.f33221b) {
                s9 = c5.s(e().higherEntry(k10), this.f33221b);
            }
            return s9;
        }

        @Override // java.util.NavigableMap
        public K higherKey(K k10) {
            K higherKey;
            synchronized (this.f33221b) {
                higherKey = e().higherKey(k10);
            }
            return higherKey;
        }

        @Override // com.google.common.collect.c5.k, java.util.Map
        public Set<K> keySet() {
            return navigableKeySet();
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> lastEntry() {
            Map.Entry<K, V> s9;
            synchronized (this.f33221b) {
                s9 = c5.s(e().lastEntry(), this.f33221b);
            }
            return s9;
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> lowerEntry(K k10) {
            Map.Entry<K, V> s9;
            synchronized (this.f33221b) {
                s9 = c5.s(e().lowerEntry(k10), this.f33221b);
            }
            return s9;
        }

        @Override // java.util.NavigableMap
        public K lowerKey(K k10) {
            K lowerKey;
            synchronized (this.f33221b) {
                lowerKey = e().lowerKey(k10);
            }
            return lowerKey;
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> navigableKeySet() {
            synchronized (this.f33221b) {
                NavigableSet<K> navigableSet = this.f33216k;
                if (navigableSet == null) {
                    NavigableSet<K> r9 = c5.r(e().navigableKeySet(), this.f33221b);
                    this.f33216k = r9;
                    return r9;
                }
                return navigableSet;
            }
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> pollFirstEntry() {
            Map.Entry<K, V> s9;
            synchronized (this.f33221b) {
                s9 = c5.s(e().pollFirstEntry(), this.f33221b);
            }
            return s9;
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> pollLastEntry() {
            Map.Entry<K, V> s9;
            synchronized (this.f33221b) {
                s9 = c5.s(e().pollLastEntry(), this.f33221b);
            }
            return s9;
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> subMap(K k10, boolean z9, K k11, boolean z10) {
            NavigableMap<K, V> p9;
            synchronized (this.f33221b) {
                p9 = c5.p(e().subMap(k10, z9, k11, z10), this.f33221b);
            }
            return p9;
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> tailMap(K k10, boolean z9) {
            NavigableMap<K, V> p9;
            synchronized (this.f33221b) {
                p9 = c5.p(e().tailMap(k10, z9), this.f33221b);
            }
            return p9;
        }

        @Override // com.google.common.collect.c5.u, java.util.SortedMap, java.util.NavigableMap
        public SortedMap<K, V> headMap(K k10) {
            return headMap(k10, false);
        }

        @Override // com.google.common.collect.c5.u, java.util.SortedMap, java.util.NavigableMap
        public SortedMap<K, V> subMap(K k10, K k11) {
            return subMap(k10, true, k11, false);
        }

        @Override // com.google.common.collect.c5.u, java.util.SortedMap, java.util.NavigableMap
        public SortedMap<K, V> tailMap(K k10) {
            return tailMap(k10, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Synchronized.java */
    @h3.c
    @h3.d
    /* loaded from: classes2.dex */
    public static class o<E> extends v<E> implements NavigableSet<E> {

        /* renamed from: h  reason: collision with root package name */
        private static final long f33217h = 0;
        @MonotonicNonNullDecl

        /* renamed from: g  reason: collision with root package name */
        transient NavigableSet<E> f33218g;

        o(NavigableSet<E> navigableSet, @NullableDecl Object obj) {
            super(navigableSet, obj);
        }

        @Override // java.util.NavigableSet
        public E ceiling(E e4) {
            E ceiling;
            synchronized (this.f33221b) {
                ceiling = h().ceiling(e4);
            }
            return ceiling;
        }

        @Override // java.util.NavigableSet
        public Iterator<E> descendingIterator() {
            return h().descendingIterator();
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> descendingSet() {
            synchronized (this.f33221b) {
                NavigableSet<E> navigableSet = this.f33218g;
                if (navigableSet == null) {
                    NavigableSet<E> r9 = c5.r(h().descendingSet(), this.f33221b);
                    this.f33218g = r9;
                    return r9;
                }
                return navigableSet;
            }
        }

        @Override // java.util.NavigableSet
        public E floor(E e4) {
            E floor;
            synchronized (this.f33221b) {
                floor = h().floor(e4);
            }
            return floor;
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> headSet(E e4, boolean z9) {
            NavigableSet<E> r9;
            synchronized (this.f33221b) {
                r9 = c5.r(h().headSet(e4, z9), this.f33221b);
            }
            return r9;
        }

        @Override // java.util.NavigableSet
        public E higher(E e4) {
            E higher;
            synchronized (this.f33221b) {
                higher = h().higher(e4);
            }
            return higher;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.c5.v
        /* renamed from: j */
        public NavigableSet<E> h() {
            return (NavigableSet) super.e();
        }

        @Override // java.util.NavigableSet
        public E lower(E e4) {
            E lower;
            synchronized (this.f33221b) {
                lower = h().lower(e4);
            }
            return lower;
        }

        @Override // java.util.NavigableSet
        public E pollFirst() {
            E pollFirst;
            synchronized (this.f33221b) {
                pollFirst = h().pollFirst();
            }
            return pollFirst;
        }

        @Override // java.util.NavigableSet
        public E pollLast() {
            E pollLast;
            synchronized (this.f33221b) {
                pollLast = h().pollLast();
            }
            return pollLast;
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> subSet(E e4, boolean z9, E e10, boolean z10) {
            NavigableSet<E> r9;
            synchronized (this.f33221b) {
                r9 = c5.r(h().subSet(e4, z9, e10, z10), this.f33221b);
            }
            return r9;
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> tailSet(E e4, boolean z9) {
            NavigableSet<E> r9;
            synchronized (this.f33221b) {
                r9 = c5.r(h().tailSet(e4, z9), this.f33221b);
            }
            return r9;
        }

        @Override // com.google.common.collect.c5.v, java.util.SortedSet, java.util.NavigableSet
        public SortedSet<E> headSet(E e4) {
            return headSet(e4, false);
        }

        @Override // com.google.common.collect.c5.v, java.util.SortedSet, java.util.NavigableSet
        public SortedSet<E> tailSet(E e4) {
            return tailSet(e4, true);
        }

        @Override // com.google.common.collect.c5.v, java.util.SortedSet, java.util.NavigableSet
        public SortedSet<E> subSet(E e4, E e10) {
            return subSet(e4, true, e10, false);
        }
    }
}
