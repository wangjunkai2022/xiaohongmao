package com.google.common.collect;

import java.util.Iterator;

/* compiled from: TransformedIterator.java */
@h3.b
/* loaded from: classes2.dex */
abstract class g5<F, T> implements Iterator<T> {

    /* renamed from: a  reason: collision with root package name */
    final Iterator<? extends F> f33534a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g5(Iterator<? extends F> it) {
        this.f33534a = (Iterator) com.google.common.base.a0.E(it);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract T a(F f10);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f33534a.hasNext();
    }

    @Override // java.util.Iterator
    public final T next() {
        return a(this.f33534a.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f33534a.remove();
    }
}
