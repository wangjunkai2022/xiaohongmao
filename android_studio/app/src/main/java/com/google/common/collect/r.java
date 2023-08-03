package com.google.common.collect;

import java.io.Serializable;
import java.util.List;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: AllEqualOrdering.java */
@h3.b(serializable = true)
/* loaded from: classes2.dex */
final class r extends s3<Object> implements Serializable {

    /* renamed from: c  reason: collision with root package name */
    static final r f33855c = new r();

    /* renamed from: d  reason: collision with root package name */
    private static final long f33856d = 0;

    r() {
    }

    private Object J() {
        return f33855c;
    }

    @Override // com.google.common.collect.s3
    public <S> s3<S> G() {
        return this;
    }

    @Override // com.google.common.collect.s3
    public <E> List<E> H(Iterable<E> iterable) {
        return b3.r(iterable);
    }

    @Override // com.google.common.collect.s3, java.util.Comparator
    public int compare(@NullableDecl Object obj, @NullableDecl Object obj2) {
        return 0;
    }

    @Override // com.google.common.collect.s3
    public <E> ImmutableList<E> n(Iterable<E> iterable) {
        return ImmutableList.copyOf(iterable);
    }

    public String toString() {
        return "Ordering.allEqual()";
    }
}
