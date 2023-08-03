package com.google.common.base;

import java.io.Serializable;
import java.util.Iterator;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: PairwiseEquivalence.java */
@h3.b(serializable = true)
/* loaded from: classes2.dex */
final class x<T> extends Equivalence<Iterable<T>> implements Serializable {

    /* renamed from: b  reason: collision with root package name */
    private static final long f32325b = 1;

    /* renamed from: a  reason: collision with root package name */
    final Equivalence<? super T> f32326a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x(Equivalence<? super T> equivalence) {
        this.f32326a = (Equivalence) a0.E(equivalence);
    }

    public boolean equals(@NullableDecl Object obj) {
        if (obj instanceof x) {
            return this.f32326a.equals(((x) obj).f32326a);
        }
        return false;
    }

    public int hashCode() {
        return this.f32326a.hashCode() ^ 1185147655;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.base.Equivalence
    /* renamed from: m */
    public boolean a(Iterable<T> iterable, Iterable<T> iterable2) {
        Iterator<T> it = iterable.iterator();
        Iterator<T> it2 = iterable2.iterator();
        while (it.hasNext() && it2.hasNext()) {
            if (!this.f32326a.d(it.next(), it2.next())) {
                return false;
            }
        }
        return (it.hasNext() || it2.hasNext()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.base.Equivalence
    /* renamed from: n */
    public int b(Iterable<T> iterable) {
        int i4 = 78721;
        for (T t9 : iterable) {
            i4 = (i4 * 24943) + this.f32326a.h(t9);
        }
        return i4;
    }

    public String toString() {
        return this.f32326a + ".pairwise()";
    }
}
