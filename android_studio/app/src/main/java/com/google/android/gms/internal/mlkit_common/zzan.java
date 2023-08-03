package com.google.android.gms.internal.mlkit_common;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
public abstract class zzan extends zzaj implements List, RandomAccess {

    /* renamed from: b  reason: collision with root package name */
    private static final y f30257b = new l(p.f29889e, 0);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzan e(Object[] objArr) {
        return h(objArr, objArr.length);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzan h(Object[] objArr, int i4) {
        if (i4 == 0) {
            return p.f29889e;
        }
        return new p(objArr, i4);
    }

    public static k zzg() {
        return new k(4);
    }

    public static zzan zzj(Object obj) {
        Object[] objArr = {obj};
        o.a(objArr, 1);
        return h(objArr, 1);
    }

    public static zzan zzk(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9) {
        Object[] objArr = {obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9};
        o.a(objArr, 9);
        return h(objArr, 9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.mlkit_common.zzaj
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

    @Override // com.google.android.gms.internal.mlkit_common.zzaj, java.util.AbstractCollection, java.util.Collection, java.util.Set
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
                        if (lc.a(get(i4), list.get(i4))) {
                        }
                    }
                    return true;
                }
                Iterator it = iterator();
                Iterator it2 = list.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (it2.hasNext()) {
                            if (!lc.a(it.next(), it2.next())) {
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

    @Override // com.google.android.gms.internal.mlkit_common.zzaj, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
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

    @Override // com.google.android.gms.internal.mlkit_common.zzaj
    public final w zzd() {
        return listIterator(0);
    }

    @Override // java.util.List
    /* renamed from: zzf */
    public zzan subList(int i4, int i10) {
        d.c(i4, i10, size());
        int i11 = i10 - i4;
        if (i11 == size()) {
            return this;
        }
        if (i11 == 0) {
            return p.f29889e;
        }
        return new m(this, i4, i11);
    }

    @Override // java.util.List
    /* renamed from: zzl */
    public final y listIterator(int i4) {
        d.b(i4, size(), "index");
        return isEmpty() ? f30257b : new l(this, i4);
    }
}
