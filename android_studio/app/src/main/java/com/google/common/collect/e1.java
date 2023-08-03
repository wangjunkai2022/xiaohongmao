package com.google.common.collect;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Collection;
import java.util.Iterator;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: ForwardingCollection.java */
@h3.b
/* loaded from: classes2.dex */
public abstract class e1<E> extends v1 implements Collection<E> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.v1
    /* renamed from: M */
    public abstract Collection<E> L();

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean N(Collection<? extends E> collection) {
        return x2.a(this, collection.iterator());
    }

    protected void O() {
        x2.h(iterator());
    }

    protected boolean P(@NullableDecl Object obj) {
        return x2.q(iterator(), obj);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean Q(Collection<?> collection) {
        return z.c(this, collection);
    }

    protected boolean R() {
        return !iterator().hasNext();
    }

    protected boolean S(@NullableDecl Object obj) {
        Iterator<E> it = iterator();
        while (it.hasNext()) {
            if (com.google.common.base.w.a(it.next(), obj)) {
                it.remove();
                return true;
            }
        }
        return false;
    }

    protected boolean T(Collection<?> collection) {
        return x2.V(iterator(), collection);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean U(Collection<?> collection) {
        return x2.X(iterator(), collection);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Object[] V() {
        return toArray(new Object[size()]);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public <T> T[] W(T[] tArr) {
        return (T[]) p3.m(this, tArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String X() {
        return z.m(this);
    }

    @CanIgnoreReturnValue
    public boolean add(E e4) {
        return L().add(e4);
    }

    @CanIgnoreReturnValue
    public boolean addAll(Collection<? extends E> collection) {
        return L().addAll(collection);
    }

    public void clear() {
        L().clear();
    }

    public boolean contains(Object obj) {
        return L().contains(obj);
    }

    public boolean containsAll(Collection<?> collection) {
        return L().containsAll(collection);
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return L().isEmpty();
    }

    public Iterator<E> iterator() {
        return L().iterator();
    }

    @CanIgnoreReturnValue
    public boolean remove(Object obj) {
        return L().remove(obj);
    }

    @CanIgnoreReturnValue
    public boolean removeAll(Collection<?> collection) {
        return L().removeAll(collection);
    }

    @CanIgnoreReturnValue
    public boolean retainAll(Collection<?> collection) {
        return L().retainAll(collection);
    }

    @Override // java.util.Collection
    public int size() {
        return L().size();
    }

    public Object[] toArray() {
        return L().toArray();
    }

    @CanIgnoreReturnValue
    public <T> T[] toArray(T[] tArr) {
        return (T[]) L().toArray(tArr);
    }
}
