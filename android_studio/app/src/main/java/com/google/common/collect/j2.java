package com.google.common.collect;

import java.io.Serializable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: ImmutableEntry.java */
@h3.b(serializable = true)
/* loaded from: classes2.dex */
class j2<K, V> extends g<K, V> implements Serializable {

    /* renamed from: c  reason: collision with root package name */
    private static final long f33604c = 0;
    @NullableDecl

    /* renamed from: a  reason: collision with root package name */
    final K f33605a;
    @NullableDecl

    /* renamed from: b  reason: collision with root package name */
    final V f33606b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j2(@NullableDecl K k10, @NullableDecl V v9) {
        this.f33605a = k10;
        this.f33606b = v9;
    }

    @Override // com.google.common.collect.g, java.util.Map.Entry
    @NullableDecl
    public final K getKey() {
        return this.f33605a;
    }

    @Override // com.google.common.collect.g, java.util.Map.Entry
    @NullableDecl
    public final V getValue() {
        return this.f33606b;
    }

    @Override // com.google.common.collect.g, java.util.Map.Entry
    public final V setValue(V v9) {
        throw new UnsupportedOperationException();
    }
}
