package com.google.android.gms.internal.common;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Objects;
import java.util.RandomAccess;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public abstract class zzag<E> extends zzac<E> implements List<E>, RandomAccess {

    /* renamed from: b  reason: collision with root package name */
    private static final j<Object> f29416b = new e(h.f29401e, 0);

    static <E> zzag<E> h(Object[] objArr, int i4) {
        if (i4 == 0) {
            return (zzag<E>) h.f29401e;
        }
        return new h(objArr, i4);
    }

    public static <E> zzag<E> zzj(Iterable<? extends E> iterable) {
        Objects.requireNonNull(iterable);
        if (iterable instanceof Collection) {
            return zzk((Collection) iterable);
        }
        Iterator<? extends E> it = iterable.iterator();
        if (!it.hasNext()) {
            return (zzag<E>) h.f29401e;
        }
        E next = it.next();
        if (!it.hasNext()) {
            return zzm(next);
        }
        d dVar = new d(4);
        dVar.c(next);
        dVar.d(it);
        dVar.f29384c = true;
        return h(dVar.f29382a, dVar.f29383b);
    }

    public static <E> zzag<E> zzk(Collection<? extends E> collection) {
        if (collection instanceof zzac) {
            zzag<E> zzd = ((zzac) collection).zzd();
            if (zzd.d()) {
                Object[] array = zzd.toArray();
                return h(array, array.length);
            }
            return zzd;
        }
        Object[] array2 = collection.toArray();
        int length = array2.length;
        g.a(array2, length);
        return h(array2, length);
    }

    public static <E> zzag<E> zzl() {
        return (zzag<E>) h.f29401e;
    }

    public static <E> zzag<E> zzm(E e4) {
        Object[] objArr = {e4};
        g.a(objArr, 1);
        return h(objArr, 1);
    }

    public static <E> zzag<E> zzn(E e4, E e10) {
        Object[] objArr = {e4, e10};
        g.a(objArr, 2);
        return h(objArr, 2);
    }

    @Override // com.google.android.gms.internal.common.zzac
    int a(Object[] objArr, int i4) {
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            objArr[i10] = get(i10);
        }
        return size;
    }

    @Override // java.util.List
    @Deprecated
    public final void add(int i4, E e4) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final boolean addAll(int i4, Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(@r7.a Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(@r7.a Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            int size = size();
            if (size == list.size()) {
                if (list instanceof RandomAccess) {
                    for (int i4 = 0; i4 < size; i4++) {
                        if (a0.a(get(i4), list.get(i4))) {
                        }
                    }
                    return true;
                }
                Iterator<E> it = iterator();
                Iterator<E> it2 = list.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (it2.hasNext()) {
                            if (!a0.a(it.next(), it2.next())) {
                                break;
                            }
                        } else {
                            break;
                        }
                    } else if (!it2.hasNext()) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // java.util.Collection, java.util.List
    public final int hashCode() {
        int size = size();
        int i4 = 1;
        for (int i10 = 0; i10 < size; i10++) {
            i4 = (i4 * 31) + get(i10).hashCode();
        }
        return i4;
    }

    @Override // java.util.List
    public final int indexOf(@r7.a Object obj) {
        if (obj == null) {
            return -1;
        }
        int size = size();
        for (int i4 = 0; i4 < size; i4++) {
            if (obj.equals(get(i4))) {
                return i4;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.common.zzac, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    public final int lastIndexOf(@r7.a Object obj) {
        if (obj == null) {
            return -1;
        }
        for (int size = size() - 1; size >= 0; size--) {
            if (obj.equals(get(size))) {
                return size;
            }
        }
        return -1;
    }

    @Override // java.util.List
    public final /* synthetic */ ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    @Deprecated
    public final E remove(int i4) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final E set(int i4, E e4) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.common.zzac
    @Deprecated
    public final zzag<E> zzd() {
        return this;
    }

    @Override // com.google.android.gms.internal.common.zzac
    public final i<E> zze() {
        return listIterator(0);
    }

    @Override // java.util.List
    /* renamed from: zzh */
    public zzag<E> subList(int i4, int i10) {
        b0.c(i4, i10, size());
        int i11 = i10 - i4;
        if (i11 == size()) {
            return this;
        }
        if (i11 == 0) {
            return (zzag<E>) h.f29401e;
        }
        return new f(this, i4, i11);
    }

    @Override // java.util.List
    /* renamed from: zzo */
    public final j<E> listIterator(int i4) {
        b0.b(i4, size(), "index");
        return isEmpty() ? (j<E>) f29416b : new e(this, i4);
    }
}
