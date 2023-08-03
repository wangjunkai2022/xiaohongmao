package com.google.common.collect;

import com.google.common.collect.d4;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: RegularImmutableBiMap.java */
@h3.b(emulated = true, serializable = true)
/* loaded from: classes2.dex */
final class b4<K, V> extends ImmutableBiMap<K, V> {

    /* renamed from: k  reason: collision with root package name */
    static final b4<Object, Object> f33117k = new b4<>();

    /* renamed from: f  reason: collision with root package name */
    private final transient int[] f33118f;
    @h3.d

    /* renamed from: g  reason: collision with root package name */
    final transient Object[] f33119g;

    /* renamed from: h  reason: collision with root package name */
    private final transient int f33120h;

    /* renamed from: i  reason: collision with root package name */
    private final transient int f33121i;

    /* renamed from: j  reason: collision with root package name */
    private final transient b4<V, K> f33122j;

    /* JADX WARN: Multi-variable type inference failed */
    private b4() {
        this.f33118f = null;
        this.f33119g = new Object[0];
        this.f33120h = 0;
        this.f33121i = 0;
        this.f33122j = this;
    }

    @Override // com.google.common.collect.ImmutableMap
    ImmutableSet<Map.Entry<K, V>> c() {
        return new d4.a(this, this.f33119g, this.f33120h, this.f33121i);
    }

    @Override // com.google.common.collect.ImmutableMap
    ImmutableSet<K> d() {
        return new d4.b(this, new d4.c(this.f33119g, this.f33120h, this.f33121i));
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public V get(@NullableDecl Object obj) {
        return (V) d4.o(this.f33118f, this.f33119g, this.f33121i, this.f33120h, obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableMap
    public boolean j() {
        return false;
    }

    @Override // java.util.Map
    public int size() {
        return this.f33121i;
    }

    @Override // com.google.common.collect.ImmutableBiMap, com.google.common.collect.u
    public ImmutableBiMap<V, K> inverse() {
        return this.f33122j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b4(Object[] objArr, int i4) {
        this.f33119g = objArr;
        this.f33121i = i4;
        this.f33120h = 0;
        int l10 = i4 >= 2 ? ImmutableSet.l(i4) : 0;
        this.f33118f = d4.n(objArr, i4, l10, 0);
        this.f33122j = new b4<>(d4.n(objArr, i4, l10, 1), objArr, i4, this);
    }

    private b4(int[] iArr, Object[] objArr, int i4, b4<V, K> b4Var) {
        this.f33118f = iArr;
        this.f33119g = objArr;
        this.f33120h = 1;
        this.f33121i = i4;
        this.f33122j = b4Var;
    }
}
