package com.google.common.collect;

import com.google.j2objc.annotations.Weak;
import java.io.Serializable;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ImmutableMapEntrySet.java */
@h3.b(emulated = true)
/* loaded from: classes2.dex */
public abstract class m2<K, V> extends ImmutableSet<Map.Entry<K, V>> {

    /* compiled from: ImmutableMapEntrySet.java */
    @h3.c
    /* loaded from: classes2.dex */
    private static class a<K, V> implements Serializable {

        /* renamed from: b  reason: collision with root package name */
        private static final long f33737b = 0;

        /* renamed from: a  reason: collision with root package name */
        final ImmutableMap<K, V> f33738a;

        a(ImmutableMap<K, V> immutableMap) {
            this.f33738a = immutableMap;
        }

        Object a() {
            return this.f33738a.entrySet();
        }
    }

    /* compiled from: ImmutableMapEntrySet.java */
    /* loaded from: classes2.dex */
    static final class b<K, V> extends m2<K, V> {
        @Weak

        /* renamed from: f  reason: collision with root package name */
        private final transient ImmutableMap<K, V> f33739f;

        /* renamed from: g  reason: collision with root package name */
        private final transient ImmutableList<Map.Entry<K, V>> f33740g;

        b(ImmutableMap<K, V> immutableMap, Map.Entry<K, V>[] entryArr) {
            this(immutableMap, ImmutableList.j(entryArr));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        @h3.c("not used in GWT")
        public int a(Object[] objArr, int i4) {
            return this.f33740g.a(objArr, i4);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableSet
        public ImmutableList<Map.Entry<K, V>> n() {
            return this.f33740g;
        }

        @Override // com.google.common.collect.m2
        ImmutableMap<K, V> q() {
            return this.f33739f;
        }

        b(ImmutableMap<K, V> immutableMap, ImmutableList<Map.Entry<K, V>> immutableList) {
            this.f33739f = immutableMap;
            this.f33740g = immutableList;
        }

        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public k5<Map.Entry<K, V>> iterator() {
            return this.f33740g.iterator();
        }
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public boolean contains(@NullableDecl Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            V v9 = q().get(entry.getKey());
            return v9 != null && v9.equals(entry.getValue());
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public boolean e() {
        return q().j();
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
    @h3.c
    Object h() {
        return new a(q());
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public int hashCode() {
        return q().hashCode();
    }

    @Override // com.google.common.collect.ImmutableSet
    @h3.c
    boolean o() {
        return q().i();
    }

    abstract ImmutableMap<K, V> q();

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return q().size();
    }
}
