package com.google.common.collect;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.ListIterator;

/* compiled from: ForwardingListIterator.java */
@h3.b
/* loaded from: classes2.dex */
public abstract class n1<E> extends l1<E> implements ListIterator<E> {
    protected n1() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.l1
    /* renamed from: N */
    public abstract ListIterator<E> M();

    @Override // java.util.ListIterator
    public void add(E e4) {
        M().add(e4);
    }

    @Override // java.util.ListIterator
    public boolean hasPrevious() {
        return M().hasPrevious();
    }

    @Override // java.util.ListIterator
    public int nextIndex() {
        return M().nextIndex();
    }

    @Override // java.util.ListIterator
    @CanIgnoreReturnValue
    public E previous() {
        return M().previous();
    }

    @Override // java.util.ListIterator
    public int previousIndex() {
        return M().previousIndex();
    }

    @Override // java.util.ListIterator
    public void set(E e4) {
        M().set(e4);
    }
}
