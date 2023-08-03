package com.google.common.collect;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.j2objc.annotations.RetainedWith;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AbstractBiMap.java */
@h3.b(emulated = true)
/* loaded from: classes2.dex */
public abstract class a<K, V> extends p1<K, V> implements u<K, V>, Serializable {
    @h3.c

    /* renamed from: f  reason: collision with root package name */
    private static final long f33018f = 0;
    @MonotonicNonNullDecl

    /* renamed from: a  reason: collision with root package name */
    private transient Map<K, V> f33019a;
    @RetainedWith
    @MonotonicNonNullDecl

    /* renamed from: b  reason: collision with root package name */
    transient a<V, K> f33020b;
    @MonotonicNonNullDecl

    /* renamed from: c  reason: collision with root package name */
    private transient Set<K> f33021c;
    @MonotonicNonNullDecl

    /* renamed from: d  reason: collision with root package name */
    private transient Set<V> f33022d;
    @MonotonicNonNullDecl

    /* renamed from: e  reason: collision with root package name */
    private transient Set<Map.Entry<K, V>> f33023e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractBiMap.java */
    /* renamed from: com.google.common.collect.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class C0216a implements Iterator<Map.Entry<K, V>> {
        @NullableDecl

        /* renamed from: a  reason: collision with root package name */
        Map.Entry<K, V> f33024a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Iterator f33025b;

        C0216a(Iterator it) {
            this.f33025b = it;
        }

        @Override // java.util.Iterator
        /* renamed from: a */
        public Map.Entry<K, V> next() {
            Map.Entry<K, V> entry = (Map.Entry) this.f33025b.next();
            this.f33024a = entry;
            return new b(entry);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f33025b.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            y.e(this.f33024a != null);
            V value = this.f33024a.getValue();
            this.f33025b.remove();
            a.this.g0(value);
            this.f33024a = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractBiMap.java */
    /* loaded from: classes2.dex */
    public class b extends q1<K, V> {

        /* renamed from: a  reason: collision with root package name */
        private final Map.Entry<K, V> f33027a;

        b(Map.Entry<K, V> entry) {
            this.f33027a = entry;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.q1, com.google.common.collect.v1
        /* renamed from: M */
        public Map.Entry<K, V> L() {
            return this.f33027a;
        }

        @Override // com.google.common.collect.q1, java.util.Map.Entry
        public V setValue(V v9) {
            a.this.b0(v9);
            com.google.common.base.a0.h0(a.this.entrySet().contains(this), "entry no longer in map");
            if (com.google.common.base.w.a(v9, getValue())) {
                return v9;
            }
            com.google.common.base.a0.u(!a.this.containsValue(v9), "value already present: %s", v9);
            V value = this.f33027a.setValue(v9);
            com.google.common.base.a0.h0(com.google.common.base.w.a(v9, a.this.get(getKey())), "entry no longer in map");
            a.this.j0(getKey(), true, value, v9);
            return value;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractBiMap.java */
    /* loaded from: classes2.dex */
    public class c extends x1<Map.Entry<K, V>> {

        /* renamed from: a  reason: collision with root package name */
        final Set<Map.Entry<K, V>> f33029a;

        private c() {
            this.f33029a = a.this.f33019a.entrySet();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.x1, com.google.common.collect.e1
        /* renamed from: Y */
        public Set<Map.Entry<K, V>> M() {
            return this.f33029a;
        }

        @Override // com.google.common.collect.e1, java.util.Collection, java.util.Set
        public void clear() {
            a.this.clear();
        }

        @Override // com.google.common.collect.e1, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return f3.p(M(), obj);
        }

        @Override // com.google.common.collect.e1, java.util.Collection, java.util.Set
        public boolean containsAll(Collection<?> collection) {
            return Q(collection);
        }

        @Override // com.google.common.collect.e1, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return a.this.c0();
        }

        @Override // com.google.common.collect.e1, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (this.f33029a.contains(obj)) {
                Map.Entry entry = (Map.Entry) obj;
                ((a) a.this.f33020b).f33019a.remove(entry.getValue());
                this.f33029a.remove(entry);
                return true;
            }
            return false;
        }

        @Override // com.google.common.collect.e1, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            return T(collection);
        }

        @Override // com.google.common.collect.e1, java.util.Collection, java.util.Set
        public boolean retainAll(Collection<?> collection) {
            return U(collection);
        }

        @Override // com.google.common.collect.e1, java.util.Collection, java.util.Set
        public Object[] toArray() {
            return V();
        }

        @Override // com.google.common.collect.e1, java.util.Collection, java.util.Set
        public <T> T[] toArray(T[] tArr) {
            return (T[]) W(tArr);
        }

        /* synthetic */ c(a aVar, C0216a c0216a) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractBiMap.java */
    /* loaded from: classes2.dex */
    public static class d<K, V> extends a<K, V> {
        @h3.c

        /* renamed from: g  reason: collision with root package name */
        private static final long f33031g = 0;

        d(Map<K, V> map, a<V, K> aVar) {
            super(map, aVar, null);
        }

        @h3.c
        private void k0(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            objectInputStream.defaultReadObject();
            i0((a) objectInputStream.readObject());
        }

        @h3.c
        private void m0(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            objectOutputStream.writeObject(inverse());
        }

        @Override // com.google.common.collect.a, com.google.common.collect.p1, com.google.common.collect.v1
        protected /* bridge */ /* synthetic */ Object L() {
            return super.L();
        }

        @Override // com.google.common.collect.a
        K a0(K k10) {
            return this.f33020b.b0(k10);
        }

        @Override // com.google.common.collect.a
        V b0(V v9) {
            return this.f33020b.a0(v9);
        }

        @h3.c
        Object l0() {
            return inverse().inverse();
        }

        @Override // com.google.common.collect.a, com.google.common.collect.p1, java.util.Map, com.google.common.collect.u
        public /* bridge */ /* synthetic */ Collection values() {
            return super.values();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractBiMap.java */
    /* loaded from: classes2.dex */
    public class e extends x1<K> {
        private e() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.x1, com.google.common.collect.e1
        /* renamed from: Y */
        public Set<K> M() {
            return a.this.f33019a.keySet();
        }

        @Override // com.google.common.collect.e1, java.util.Collection, java.util.Set
        public void clear() {
            a.this.clear();
        }

        @Override // com.google.common.collect.e1, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return f3.S(a.this.entrySet().iterator());
        }

        @Override // com.google.common.collect.e1, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (contains(obj)) {
                a.this.f0(obj);
                return true;
            }
            return false;
        }

        @Override // com.google.common.collect.e1, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            return T(collection);
        }

        @Override // com.google.common.collect.e1, java.util.Collection, java.util.Set
        public boolean retainAll(Collection<?> collection) {
            return U(collection);
        }

        /* synthetic */ e(a aVar, C0216a c0216a) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractBiMap.java */
    /* loaded from: classes2.dex */
    public class f extends x1<V> {

        /* renamed from: a  reason: collision with root package name */
        final Set<V> f33033a;

        private f() {
            this.f33033a = a.this.f33020b.keySet();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.x1, com.google.common.collect.e1
        /* renamed from: Y */
        public Set<V> M() {
            return this.f33033a;
        }

        @Override // com.google.common.collect.e1, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<V> iterator() {
            return f3.O0(a.this.entrySet().iterator());
        }

        @Override // com.google.common.collect.e1, java.util.Collection, java.util.Set
        public Object[] toArray() {
            return V();
        }

        @Override // com.google.common.collect.v1
        public String toString() {
            return X();
        }

        @Override // com.google.common.collect.e1, java.util.Collection, java.util.Set
        public <T> T[] toArray(T[] tArr) {
            return (T[]) W(tArr);
        }

        /* synthetic */ f(a aVar, C0216a c0216a) {
            this();
        }
    }

    /* synthetic */ a(Map map, a aVar, C0216a c0216a) {
        this(map, aVar);
    }

    private V e0(@NullableDecl K k10, @NullableDecl V v9, boolean z9) {
        a0(k10);
        b0(v9);
        boolean containsKey = containsKey(k10);
        if (containsKey && com.google.common.base.w.a(v9, get(k10))) {
            return v9;
        }
        if (z9) {
            inverse().remove(v9);
        } else {
            com.google.common.base.a0.u(!containsValue(v9), "value already present: %s", v9);
        }
        V put = this.f33019a.put(k10, v9);
        j0(k10, containsKey, put, v9);
        return put;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @CanIgnoreReturnValue
    public V f0(Object obj) {
        V remove = this.f33019a.remove(obj);
        g0(remove);
        return remove;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g0(V v9) {
        this.f33020b.f33019a.remove(v9);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j0(K k10, boolean z9, V v9, V v10) {
        if (z9) {
            g0(v9);
        }
        this.f33020b.f33019a.put(v10, k10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.p1, com.google.common.collect.v1
    /* renamed from: M */
    public Map<K, V> L() {
        return this.f33019a;
    }

    @CanIgnoreReturnValue
    K a0(@NullableDecl K k10) {
        return k10;
    }

    @CanIgnoreReturnValue
    V b0(@NullableDecl V v9) {
        return v9;
    }

    Iterator<Map.Entry<K, V>> c0() {
        return new C0216a(this.f33019a.entrySet().iterator());
    }

    @Override // com.google.common.collect.p1, java.util.Map
    public void clear() {
        this.f33019a.clear();
        this.f33020b.f33019a.clear();
    }

    @Override // com.google.common.collect.p1, java.util.Map
    public boolean containsValue(@NullableDecl Object obj) {
        return this.f33020b.containsKey(obj);
    }

    a<V, K> d0(Map<V, K> map) {
        return new d(map, this);
    }

    @Override // com.google.common.collect.p1, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.f33023e;
        if (set == null) {
            c cVar = new c(this, null);
            this.f33023e = cVar;
            return cVar;
        }
        return set;
    }

    @CanIgnoreReturnValue
    public V forcePut(@NullableDecl K k10, @NullableDecl V v9) {
        return e0(k10, v9, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h0(Map<K, V> map, Map<V, K> map2) {
        com.google.common.base.a0.g0(this.f33019a == null);
        com.google.common.base.a0.g0(this.f33020b == null);
        com.google.common.base.a0.d(map.isEmpty());
        com.google.common.base.a0.d(map2.isEmpty());
        com.google.common.base.a0.d(map != map2);
        this.f33019a = map;
        this.f33020b = d0(map2);
    }

    void i0(a<V, K> aVar) {
        this.f33020b = aVar;
    }

    public u<V, K> inverse() {
        return this.f33020b;
    }

    @Override // com.google.common.collect.p1, java.util.Map
    public Set<K> keySet() {
        Set<K> set = this.f33021c;
        if (set == null) {
            e eVar = new e(this, null);
            this.f33021c = eVar;
            return eVar;
        }
        return set;
    }

    @Override // com.google.common.collect.p1, java.util.Map, com.google.common.collect.u
    @CanIgnoreReturnValue
    public V put(@NullableDecl K k10, @NullableDecl V v9) {
        return e0(k10, v9, false);
    }

    @Override // com.google.common.collect.p1, java.util.Map, com.google.common.collect.u
    public void putAll(Map<? extends K, ? extends V> map) {
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // com.google.common.collect.p1, java.util.Map
    @CanIgnoreReturnValue
    public V remove(@NullableDecl Object obj) {
        if (containsKey(obj)) {
            return f0(obj);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(Map<K, V> map, Map<V, K> map2) {
        h0(map, map2);
    }

    @Override // com.google.common.collect.p1, java.util.Map, com.google.common.collect.u
    public Set<V> values() {
        Set<V> set = this.f33022d;
        if (set == null) {
            f fVar = new f(this, null);
            this.f33022d = fVar;
            return fVar;
        }
        return set;
    }

    private a(Map<K, V> map, a<V, K> aVar) {
        this.f33019a = map;
        this.f33020b = aVar;
    }
}
