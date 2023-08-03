package com.google.common.collect;

import com.google.common.collect.ImmutableList;
import java.util.AbstractList;
import java.util.Collection;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CartesianList.java */
@h3.b
/* loaded from: classes2.dex */
public final class w<E> extends AbstractList<List<E>> implements RandomAccess {

    /* renamed from: a  reason: collision with root package name */
    private final transient ImmutableList<List<E>> f33913a;

    /* renamed from: b  reason: collision with root package name */
    private final transient int[] f33914b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CartesianList.java */
    /* loaded from: classes2.dex */
    public class a extends ImmutableList<E> {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f33915c;

        a(int i4) {
            this.f33915c = i4;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        public boolean e() {
            return true;
        }

        @Override // java.util.List
        public E get(int i4) {
            com.google.common.base.a0.C(i4, size());
            return (E) ((List) w.this.f33913a.get(i4)).get(w.this.e(this.f33915c, i4));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return w.this.f33913a.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public w(ImmutableList<List<E>> immutableList) {
        this.f33913a = immutableList;
        int[] iArr = new int[immutableList.size() + 1];
        iArr[immutableList.size()] = 1;
        try {
            for (int size = immutableList.size() - 1; size >= 0; size--) {
                iArr[size] = com.google.common.math.d.d(iArr[size + 1], immutableList.get(size).size());
            }
            this.f33914b = iArr;
        } catch (ArithmeticException unused) {
            throw new IllegalArgumentException("Cartesian product too large; must have size at most Integer.MAX_VALUE");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> List<List<E>> c(List<? extends List<? extends E>> list) {
        ImmutableList.a aVar = new ImmutableList.a(list.size());
        for (List<? extends E> list2 : list) {
            ImmutableList copyOf = ImmutableList.copyOf((Collection) list2);
            if (copyOf.isEmpty()) {
                return ImmutableList.of();
            }
            aVar.g(copyOf);
        }
        return new w(aVar.e());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int e(int i4, int i10) {
        return (i4 / this.f33914b[i10 + 1]) % this.f33913a.get(i10).size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(@NullableDecl Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: d */
    public ImmutableList<E> get(int i4) {
        com.google.common.base.a0.C(i4, size());
        return new a(i4);
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        if (obj instanceof List) {
            List list = (List) obj;
            if (list.size() != this.f33913a.size()) {
                return -1;
            }
            ListIterator<E> listIterator = list.listIterator();
            int i4 = 0;
            while (listIterator.hasNext()) {
                int nextIndex = listIterator.nextIndex();
                int indexOf = this.f33913a.get(nextIndex).indexOf(listIterator.next());
                if (indexOf == -1) {
                    return -1;
                }
                i4 += indexOf * this.f33914b[nextIndex + 1];
            }
            return i4;
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f33914b[0];
    }
}
