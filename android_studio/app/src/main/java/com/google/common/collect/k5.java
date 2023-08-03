package com.google.common.collect;

import java.util.Iterator;

/* compiled from: UnmodifiableIterator.java */
@h3.b
/* loaded from: classes2.dex */
public abstract class k5<E> implements Iterator<E> {
    @Override // java.util.Iterator
    @Deprecated
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
