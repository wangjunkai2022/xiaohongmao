package com.google.common.cache;

import com.google.common.base.a0;
import java.util.AbstractMap;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@h3.b
/* loaded from: classes2.dex */
public final class RemovalNotification<K, V> extends AbstractMap.SimpleImmutableEntry<K, V> {

    /* renamed from: b  reason: collision with root package name */
    private static final long f32339b = 0;

    /* renamed from: a  reason: collision with root package name */
    private final RemovalCause f32340a;

    private RemovalNotification(@NullableDecl K k10, @NullableDecl V v9, RemovalCause removalCause) {
        super(k10, v9);
        this.f32340a = (RemovalCause) a0.E(removalCause);
    }

    public static <K, V> RemovalNotification<K, V> create(@NullableDecl K k10, @NullableDecl V v9, RemovalCause removalCause) {
        return new RemovalNotification<>(k10, v9, removalCause);
    }

    public RemovalCause getCause() {
        return this.f32340a;
    }

    public boolean wasEvicted() {
        return this.f32340a.a();
    }
}
