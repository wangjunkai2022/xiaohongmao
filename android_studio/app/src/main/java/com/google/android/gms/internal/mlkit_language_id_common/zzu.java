package com.google.android.gms.internal.mlkit_language_id_common;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* compiled from: com.google.mlkit:language-id-common@@16.0.0 */
/* loaded from: classes2.dex */
public abstract class zzu extends zzq implements List, RandomAccess {

    /* renamed from: b  reason: collision with root package name */
    private static final h f31069b = new db(gb.f30521e, 0);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzu e(Object[] objArr) {
        return h(objArr, objArr.length);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzu h(Object[] objArr, int i4) {
        if (i4 == 0) {
            return gb.f30521e;
        }
        return new gb(objArr, i4);
    }

    public static zzu zzi(Object obj, Object obj2) {
        Object[] objArr = {obj, obj2};
        for (int i4 = 0; i4 < 2; i4++) {
            if (objArr[i4] == null) {
                throw new NullPointerException("at index " + i4);
            }
        }
        return h(objArr, 2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.mlkit_language_id_common.zzq
    public int a(Object[] objArr, int i4) {
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

    @Override // com.google.android.gms.internal.mlkit_language_id_common.zzq, java.util.AbstractCollection, java.util.Collection, java.util.Set
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
                        if (f5.a(get(i4), list.get(i4))) {
                        }
                    }
                    return true;
                }
                Iterator it = iterator();
                Iterator it2 = list.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (it2.hasNext()) {
                            if (!f5.a(it.next(), it2.next())) {
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

    @Override // com.google.android.gms.internal.mlkit_language_id_common.zzq, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
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

    @Override // com.google.android.gms.internal.mlkit_language_id_common.zzq
    public final g zzd() {
        return listIterator(0);
    }

    @Override // java.util.List
    /* renamed from: zzf */
    public zzu subList(int i4, int i10) {
        g9.c(i4, i10, size());
        int i11 = i10 - i4;
        if (i11 == size()) {
            return this;
        }
        if (i11 == 0) {
            return gb.f30521e;
        }
        return new eb(this, i4, i11);
    }

    @Override // java.util.List
    /* renamed from: zzj */
    public final h listIterator(int i4) {
        g9.b(i4, size(), "index");
        return isEmpty() ? f31069b : new db(this, i4);
    }
}
