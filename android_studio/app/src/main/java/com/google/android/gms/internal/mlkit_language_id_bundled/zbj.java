package com.google.android.gms.internal.mlkit_language_id_bundled;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* compiled from: com.google.mlkit:language-id@@17.0.4 */
/* loaded from: classes2.dex */
public abstract class zbj extends zbg implements List, RandomAccess {

    /* renamed from: b  reason: collision with root package name */
    private static final k f30291b = new g(i.f30287e, 0);

    public static zbj zbg(Object obj) {
        Object[] objArr = {obj};
        for (int i4 = 0; i4 <= 0; i4++) {
            if (objArr[i4] == null) {
                throw new NullPointerException("at index " + i4);
            }
        }
        return new i(objArr, 1);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_bundled.zbg
    int a(Object[] objArr, int i4) {
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            objArr[i10] = get(i10);
        }
        return size;
    }

    @Override // java.util.List
    @Deprecated
    public final void add(int i4, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final boolean addAll(int i4, Collection collection) {
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
                        if (c.a(get(i4), list.get(i4))) {
                        }
                    }
                    return true;
                }
                Iterator it = iterator();
                Iterator it2 = list.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (it2.hasNext()) {
                            if (!c.a(it.next(), it2.next())) {
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

    @Override // com.google.android.gms.internal.mlkit_language_id_bundled.zbg, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
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
    public final Object remove(int i4) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final Object set(int i4, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_bundled.zbg
    public final j zbd() {
        return listIterator(0);
    }

    @Override // java.util.List
    /* renamed from: zbf */
    public zbj subList(int i4, int i10) {
        d.c(i4, i10, size());
        int i11 = i10 - i4;
        if (i11 == size()) {
            return this;
        }
        if (i11 == 0) {
            return i.f30287e;
        }
        return new h(this, i4, i11);
    }

    @Override // java.util.List
    /* renamed from: zbh */
    public final k listIterator(int i4) {
        d.b(i4, size(), "index");
        return isEmpty() ? f30291b : new g(this, i4);
    }
}
