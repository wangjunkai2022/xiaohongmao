package com.google.common.collect;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Comparator;

/* compiled from: CompoundOrdering.java */
@h3.b(serializable = true)
/* loaded from: classes2.dex */
final class h0<T> extends s3<T> implements Serializable {

    /* renamed from: d  reason: collision with root package name */
    private static final long f33543d = 0;

    /* renamed from: c  reason: collision with root package name */
    final Comparator<? super T>[] f33544c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h0(Comparator<? super T> comparator, Comparator<? super T> comparator2) {
        this.f33544c = new Comparator[]{comparator, comparator2};
    }

    @Override // com.google.common.collect.s3, java.util.Comparator
    public int compare(T t9, T t10) {
        int i4 = 0;
        while (true) {
            Comparator<? super T>[] comparatorArr = this.f33544c;
            if (i4 >= comparatorArr.length) {
                return 0;
            }
            int compare = comparatorArr[i4].compare(t9, t10);
            if (compare != 0) {
                return compare;
            }
            i4++;
        }
    }

    @Override // java.util.Comparator
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof h0) {
            return Arrays.equals(this.f33544c, ((h0) obj).f33544c);
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(this.f33544c);
    }

    public String toString() {
        return "Ordering.compound(" + Arrays.toString(this.f33544c) + ")";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h0(Iterable<? extends Comparator<? super T>> iterable) {
        this.f33544c = (Comparator[]) w2.R(iterable, new Comparator[0]);
    }
}
