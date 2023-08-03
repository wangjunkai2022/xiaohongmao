package com.google.common.collect;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Iterator;

/* compiled from: ForwardingIterator.java */
@h3.b
/* loaded from: classes2.dex */
public abstract class l1<T> extends v1 implements Iterator<T> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.v1
    /* renamed from: M */
    public abstract Iterator<T> L();

    @Override // java.util.Iterator
    public boolean hasNext() {
        return L().hasNext();
    }

    @CanIgnoreReturnValue
    public T next() {
        return L().next();
    }

    public void remove() {
        L().remove();
    }
}
