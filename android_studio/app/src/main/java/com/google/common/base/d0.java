package com.google.common.base;

import java.util.Collections;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Present.java */
@h3.b
/* loaded from: classes2.dex */
public final class d0<T> extends Optional<T> {

    /* renamed from: c  reason: collision with root package name */
    private static final long f32186c = 0;

    /* renamed from: b  reason: collision with root package name */
    private final T f32187b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d0(T t9) {
        this.f32187b = t9;
    }

    @Override // com.google.common.base.Optional
    public Set<T> asSet() {
        return Collections.singleton(this.f32187b);
    }

    @Override // com.google.common.base.Optional
    public boolean equals(@NullableDecl Object obj) {
        if (obj instanceof d0) {
            return this.f32187b.equals(((d0) obj).f32187b);
        }
        return false;
    }

    @Override // com.google.common.base.Optional
    public T get() {
        return this.f32187b;
    }

    @Override // com.google.common.base.Optional
    public int hashCode() {
        return this.f32187b.hashCode() + 1502476572;
    }

    @Override // com.google.common.base.Optional
    public boolean isPresent() {
        return true;
    }

    @Override // com.google.common.base.Optional
    public T or(T t9) {
        a0.F(t9, "use Optional.orNull() instead of Optional.or(null)");
        return this.f32187b;
    }

    @Override // com.google.common.base.Optional
    public T orNull() {
        return this.f32187b;
    }

    @Override // com.google.common.base.Optional
    public String toString() {
        return "Optional.of(" + this.f32187b + ")";
    }

    @Override // com.google.common.base.Optional
    public <V> Optional<V> transform(q<? super T, V> qVar) {
        return new d0(a0.F(qVar.apply((T) this.f32187b), "the Function passed to Optional.transform() must not return null."));
    }

    @Override // com.google.common.base.Optional
    public Optional<T> or(Optional<? extends T> optional) {
        a0.E(optional);
        return this;
    }

    @Override // com.google.common.base.Optional
    public T or(i0<? extends T> i0Var) {
        a0.E(i0Var);
        return this.f32187b;
    }
}
