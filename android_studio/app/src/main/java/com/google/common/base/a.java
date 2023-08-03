package com.google.common.base;

import java.util.Collections;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Absent.java */
@h3.b
/* loaded from: classes2.dex */
public final class a<T> extends Optional<T> {

    /* renamed from: b  reason: collision with root package name */
    static final a<Object> f32084b = new a<>();

    /* renamed from: c  reason: collision with root package name */
    private static final long f32085c = 0;

    private a() {
    }

    private Object a() {
        return f32084b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> Optional<T> b() {
        return f32084b;
    }

    @Override // com.google.common.base.Optional
    public Set<T> asSet() {
        return Collections.emptySet();
    }

    @Override // com.google.common.base.Optional
    public boolean equals(@NullableDecl Object obj) {
        return obj == this;
    }

    @Override // com.google.common.base.Optional
    public T get() {
        throw new IllegalStateException("Optional.get() cannot be called on an absent value");
    }

    @Override // com.google.common.base.Optional
    public int hashCode() {
        return 2040732332;
    }

    @Override // com.google.common.base.Optional
    public boolean isPresent() {
        return false;
    }

    @Override // com.google.common.base.Optional
    public T or(T t9) {
        return (T) a0.F(t9, "use Optional.orNull() instead of Optional.or(null)");
    }

    @Override // com.google.common.base.Optional
    @NullableDecl
    public T orNull() {
        return null;
    }

    @Override // com.google.common.base.Optional
    public String toString() {
        return "Optional.absent()";
    }

    @Override // com.google.common.base.Optional
    public <V> Optional<V> transform(q<? super T, V> qVar) {
        a0.E(qVar);
        return Optional.absent();
    }

    @Override // com.google.common.base.Optional
    public Optional<T> or(Optional<? extends T> optional) {
        return (Optional) a0.E(optional);
    }

    @Override // com.google.common.base.Optional
    public T or(i0<? extends T> i0Var) {
        return (T) a0.F(i0Var.get(), "use Optional.orNull() instead of a Supplier that returns null");
    }
}
