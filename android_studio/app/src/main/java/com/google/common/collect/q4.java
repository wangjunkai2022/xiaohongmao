package com.google.common.collect;

import com.google.common.collect.ImmutableTable;
import com.google.common.collect.d5;
import java.util.Map;

/* compiled from: SingletonImmutableTable.java */
@h3.b
/* loaded from: classes2.dex */
class q4<R, C, V> extends ImmutableTable<R, C, V> {

    /* renamed from: c  reason: collision with root package name */
    final R f33852c;

    /* renamed from: d  reason: collision with root package name */
    final C f33853d;

    /* renamed from: e  reason: collision with root package name */
    final V f33854e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q4(R r9, C c10, V v9) {
        this.f33852c = (R) com.google.common.base.a0.E(r9);
        this.f33853d = (C) com.google.common.base.a0.E(c10);
        this.f33854e = (V) com.google.common.base.a0.E(v9);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.d5
    public /* bridge */ /* synthetic */ Map column(Object obj) {
        return column((q4<R, C, V>) obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.q
    /* renamed from: j */
    public ImmutableSet<d5.a<R, C, V>> b() {
        return ImmutableSet.of(ImmutableTable.h(this.f33852c, this.f33853d, this.f33854e));
    }

    @Override // com.google.common.collect.ImmutableTable
    ImmutableTable.b k() {
        return ImmutableTable.b.a(this, new int[]{0}, new int[]{0});
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.q
    /* renamed from: l */
    public ImmutableCollection<V> c() {
        return ImmutableSet.of(this.f33854e);
    }

    @Override // com.google.common.collect.d5
    public int size() {
        return 1;
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.d5
    public ImmutableMap<R, V> column(C c10) {
        com.google.common.base.a0.E(c10);
        if (containsColumn(c10)) {
            return ImmutableMap.of(this.f33852c, (Object) this.f33854e);
        }
        return ImmutableMap.of();
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.d5
    public ImmutableMap<C, Map<R, V>> columnMap() {
        return ImmutableMap.of(this.f33853d, ImmutableMap.of(this.f33852c, (Object) this.f33854e));
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.d5
    public ImmutableMap<R, Map<C, V>> rowMap() {
        return ImmutableMap.of(this.f33852c, ImmutableMap.of(this.f33853d, (Object) this.f33854e));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public q4(d5.a<R, C, V> aVar) {
        this(aVar.a(), aVar.b(), aVar.getValue());
    }
}
