package com.google.common.collect;

import java.io.Serializable;
import java.util.Iterator;

/* compiled from: ReverseNaturalOrdering.java */
@h3.b(serializable = true)
/* loaded from: classes2.dex */
final class j4 extends s3<Comparable> implements Serializable {

    /* renamed from: c  reason: collision with root package name */
    static final j4 f33643c = new j4();

    /* renamed from: d  reason: collision with root package name */
    private static final long f33644d = 0;

    private j4() {
    }

    private Object S() {
        return f33643c;
    }

    @Override // com.google.common.collect.s3
    public <S extends Comparable> s3<S> G() {
        return s3.B();
    }

    @Override // com.google.common.collect.s3, java.util.Comparator
    /* renamed from: J */
    public int compare(Comparable comparable, Comparable comparable2) {
        com.google.common.base.a0.E(comparable);
        if (comparable == comparable2) {
            return 0;
        }
        return comparable2.compareTo(comparable);
    }

    @Override // com.google.common.collect.s3
    /* renamed from: K */
    public <E extends Comparable> E u(E e4, E e10) {
        return (E) m3.f33741e.y(e4, e10);
    }

    @Override // com.google.common.collect.s3
    /* renamed from: L */
    public <E extends Comparable> E v(E e4, E e10, E e11, E... eArr) {
        return (E) m3.f33741e.z(e4, e10, e11, eArr);
    }

    @Override // com.google.common.collect.s3
    /* renamed from: M */
    public <E extends Comparable> E t(Iterable<E> iterable) {
        return (E) m3.f33741e.x(iterable);
    }

    @Override // com.google.common.collect.s3
    /* renamed from: N */
    public <E extends Comparable> E w(Iterator<E> it) {
        return (E) m3.f33741e.A(it);
    }

    @Override // com.google.common.collect.s3
    /* renamed from: O */
    public <E extends Comparable> E y(E e4, E e10) {
        return (E) m3.f33741e.u(e4, e10);
    }

    @Override // com.google.common.collect.s3
    /* renamed from: P */
    public <E extends Comparable> E z(E e4, E e10, E e11, E... eArr) {
        return (E) m3.f33741e.v(e4, e10, e11, eArr);
    }

    @Override // com.google.common.collect.s3
    /* renamed from: Q */
    public <E extends Comparable> E x(Iterable<E> iterable) {
        return (E) m3.f33741e.t(iterable);
    }

    @Override // com.google.common.collect.s3
    /* renamed from: R */
    public <E extends Comparable> E A(Iterator<E> it) {
        return (E) m3.f33741e.w(it);
    }

    public String toString() {
        return "Ordering.natural().reverse()";
    }
}
