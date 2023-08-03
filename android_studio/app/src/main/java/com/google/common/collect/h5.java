package com.google.common.collect;

import java.util.ListIterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TransformedListIterator.java */
@h3.b
/* loaded from: classes2.dex */
public abstract class h5<F, T> extends g5<F, T> implements ListIterator<T> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public h5(ListIterator<? extends F> listIterator) {
        super(listIterator);
    }

    private ListIterator<? extends F> b() {
        return x2.f(this.f33534a);
    }

    @Override // java.util.ListIterator
    public void add(T t9) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return b().hasPrevious();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return b().nextIndex();
    }

    @Override // java.util.ListIterator
    public final T previous() {
        return a(b().previous());
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return b().previousIndex();
    }

    public void set(T t9) {
        throw new UnsupportedOperationException();
    }
}
