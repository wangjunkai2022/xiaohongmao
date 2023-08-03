package com.google.common.collect;

import java.io.Serializable;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: ImmutableMapValues.java */
@h3.b(emulated = true)
/* loaded from: classes2.dex */
final class o2<K, V> extends ImmutableCollection<V> {

    /* renamed from: b  reason: collision with root package name */
    private final ImmutableMap<K, V> f33763b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImmutableMapValues.java */
    /* loaded from: classes2.dex */
    public class a extends k5<V> {

        /* renamed from: a  reason: collision with root package name */
        final k5<Map.Entry<K, V>> f33764a;

        a() {
            this.f33764a = o2.this.f33763b.entrySet().iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f33764a.hasNext();
        }

        @Override // java.util.Iterator
        public V next() {
            return this.f33764a.next().getValue();
        }
    }

    /* compiled from: ImmutableMapValues.java */
    /* loaded from: classes2.dex */
    class b extends ImmutableList<V> {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ ImmutableList f33766c;

        b(ImmutableList immutableList) {
            this.f33766c = immutableList;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        public boolean e() {
            return true;
        }

        @Override // java.util.List
        public V get(int i4) {
            return (V) ((Map.Entry) this.f33766c.get(i4)).getValue();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f33766c.size();
        }
    }

    /* compiled from: ImmutableMapValues.java */
    @h3.c
    /* loaded from: classes2.dex */
    private static class c<V> implements Serializable {

        /* renamed from: b  reason: collision with root package name */
        private static final long f33768b = 0;

        /* renamed from: a  reason: collision with root package name */
        final ImmutableMap<?, V> f33769a;

        c(ImmutableMap<?, V> immutableMap) {
            this.f33769a = immutableMap;
        }

        Object a() {
            return this.f33769a.values();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public o2(ImmutableMap<K, V> immutableMap) {
        this.f33763b = immutableMap;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public ImmutableList<V> asList() {
        return new b(this.f33763b.entrySet().asList());
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public boolean contains(@NullableDecl Object obj) {
        return obj != null && x2.q(iterator(), obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public boolean e() {
        return true;
    }

    @Override // com.google.common.collect.ImmutableCollection
    @h3.c
    Object h() {
        return new c(this.f33763b);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        return this.f33763b.size();
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public k5<V> iterator() {
        return new a();
    }
}
