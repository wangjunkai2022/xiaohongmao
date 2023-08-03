package com.google.common.collect;

import java.io.Serializable;
import java.util.Iterator;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ReverseOrdering.java */
@h3.b(serializable = true)
/* loaded from: classes2.dex */
public final class k4<T> extends s3<T> implements Serializable {

    /* renamed from: d  reason: collision with root package name */
    private static final long f33672d = 0;

    /* renamed from: c  reason: collision with root package name */
    final s3<? super T> f33673c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k4(s3<? super T> s3Var) {
        this.f33673c = (s3) com.google.common.base.a0.E(s3Var);
    }

    @Override // com.google.common.collect.s3
    public <E extends T> E A(Iterator<E> it) {
        return (E) this.f33673c.w(it);
    }

    @Override // com.google.common.collect.s3
    public <S extends T> s3<S> G() {
        return (s3<? super T>) this.f33673c;
    }

    @Override // com.google.common.collect.s3, java.util.Comparator
    public int compare(T t9, T t10) {
        return this.f33673c.compare(t10, t9);
    }

    @Override // java.util.Comparator
    public boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof k4) {
            return this.f33673c.equals(((k4) obj).f33673c);
        }
        return false;
    }

    public int hashCode() {
        return -this.f33673c.hashCode();
    }

    @Override // com.google.common.collect.s3
    public <E extends T> E t(Iterable<E> iterable) {
        return (E) this.f33673c.x(iterable);
    }

    public String toString() {
        return this.f33673c + ".reverse()";
    }

    @Override // com.google.common.collect.s3
    public <E extends T> E u(E e4, E e10) {
        return (E) this.f33673c.y(e4, e10);
    }

    @Override // com.google.common.collect.s3
    public <E extends T> E v(E e4, E e10, E e11, E... eArr) {
        return (E) this.f33673c.z(e4, e10, e11, eArr);
    }

    @Override // com.google.common.collect.s3
    public <E extends T> E w(Iterator<E> it) {
        return (E) this.f33673c.A(it);
    }

    @Override // com.google.common.collect.s3
    public <E extends T> E x(Iterable<E> iterable) {
        return (E) this.f33673c.t(iterable);
    }

    @Override // com.google.common.collect.s3
    public <E extends T> E y(E e4, E e10) {
        return (E) this.f33673c.u(e4, e10);
    }

    @Override // com.google.common.collect.s3
    public <E extends T> E z(E e4, E e10, E e11, E... eArr) {
        return (E) this.f33673c.v(e4, e10, e11, eArr);
    }
}
