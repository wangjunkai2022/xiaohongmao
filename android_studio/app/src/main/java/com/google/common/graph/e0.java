package com.google.common.graph;

import com.google.common.collect.k5;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MapIteratorCache.java */
/* loaded from: classes2.dex */
public class e0<K, V> {

    /* renamed from: a  reason: collision with root package name */
    private final Map<K, V> f34111a;
    @NullableDecl

    /* renamed from: b  reason: collision with root package name */
    private transient Map.Entry<K, V> f34112b;

    /* compiled from: MapIteratorCache.java */
    /* loaded from: classes2.dex */
    class a extends AbstractSet<K> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: MapIteratorCache.java */
        /* renamed from: com.google.common.graph.e0$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public class C0251a extends k5<K> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Iterator f34114a;

            C0251a(Iterator it) {
                this.f34114a = it;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f34114a.hasNext();
            }

            @Override // java.util.Iterator
            public K next() {
                Map.Entry entry = (Map.Entry) this.f34114a.next();
                e0.this.f34112b = entry;
                return (K) entry.getKey();
            }
        }

        a() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* renamed from: a */
        public k5<K> iterator() {
            return new C0251a(e0.this.f34111a.entrySet().iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@NullableDecl Object obj) {
            return e0.this.e(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return e0.this.f34111a.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e0(Map<K, V> map) {
        this.f34111a = (Map) com.google.common.base.a0.E(map);
    }

    public void c() {
        d();
        this.f34111a.clear();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void d() {
        this.f34112b = null;
    }

    public final boolean e(@NullableDecl Object obj) {
        return g(obj) != null || this.f34111a.containsKey(obj);
    }

    public V f(@NullableDecl Object obj) {
        V g4 = g(obj);
        return g4 != null ? g4 : h(obj);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public V g(@NullableDecl Object obj) {
        Map.Entry<K, V> entry = this.f34112b;
        if (entry == null || entry.getKey() != obj) {
            return null;
        }
        return entry.getValue();
    }

    public final V h(@NullableDecl Object obj) {
        return this.f34111a.get(obj);
    }

    @CanIgnoreReturnValue
    public V i(@NullableDecl K k10, @NullableDecl V v9) {
        d();
        return this.f34111a.put(k10, v9);
    }

    @CanIgnoreReturnValue
    public V j(@NullableDecl Object obj) {
        d();
        return this.f34111a.remove(obj);
    }

    public final Set<K> k() {
        return new a();
    }
}
