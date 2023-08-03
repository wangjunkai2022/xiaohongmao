package com.google.common.collect;

import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.SortedSet;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: ForwardingSortedSet.java */
@h3.b
/* loaded from: classes2.dex */
public abstract class b2<E> extends x1<E> implements SortedSet<E> {
    private int d0(@NullableDecl Object obj, @NullableDecl Object obj2) {
        Comparator<? super E> comparator = comparator();
        if (comparator == null) {
            return ((Comparable) obj).compareTo(obj2);
        }
        return comparator.compare(obj, obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.e1
    @h3.a
    protected boolean P(@NullableDecl Object obj) {
        try {
            return d0(tailSet(obj).first(), obj) == 0;
        } catch (ClassCastException | NullPointerException | NoSuchElementException unused) {
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.e1
    @h3.a
    protected boolean S(@NullableDecl Object obj) {
        try {
            Iterator<E> it = tailSet(obj).iterator();
            if (it.hasNext() && d0(it.next(), obj) == 0) {
                it.remove();
                return true;
            }
        } catch (ClassCastException | NullPointerException unused) {
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.x1
    /* renamed from: b0 */
    public abstract SortedSet<E> Y();

    @h3.a
    protected SortedSet<E> c0(E e4, E e10) {
        return tailSet(e4).headSet(e10);
    }

    @Override // java.util.SortedSet
    public Comparator<? super E> comparator() {
        return Y().comparator();
    }

    @Override // java.util.SortedSet
    public E first() {
        return Y().first();
    }

    @Override // java.util.SortedSet
    public SortedSet<E> headSet(E e4) {
        return Y().headSet(e4);
    }

    @Override // java.util.SortedSet
    public E last() {
        return Y().last();
    }

    @Override // java.util.SortedSet
    public SortedSet<E> subSet(E e4, E e10) {
        return Y().subSet(e4, e10);
    }

    @Override // java.util.SortedSet
    public SortedSet<E> tailSet(E e4) {
        return Y().tailSet(e4);
    }
}
