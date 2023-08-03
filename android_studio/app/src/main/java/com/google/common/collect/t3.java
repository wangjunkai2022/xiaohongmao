package com.google.common.collect;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Iterator;

/* compiled from: PeekingIterator.java */
@h3.b
/* loaded from: classes2.dex */
public interface t3<E> extends Iterator<E> {
    @Override // com.google.common.collect.t3
    @CanIgnoreReturnValue
    E next();

    E peek();

    @Override // java.util.Iterator
    void remove();
}
