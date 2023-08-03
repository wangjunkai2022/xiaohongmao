package com.google.common.collect;

import java.util.ListIterator;

/* compiled from: UnmodifiableListIterator.java */
@h3.b
/* loaded from: classes2.dex */
public abstract class l5<E> extends k5<E> implements ListIterator<E> {
    @Override // java.util.ListIterator
    @Deprecated
    public final void add(E e4) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    @Deprecated
    public final void set(E e4) {
        throw new UnsupportedOperationException();
    }
}
