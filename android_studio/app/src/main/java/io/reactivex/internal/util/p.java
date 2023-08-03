package io.reactivex.internal.util;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* compiled from: SorterFunction.java */
/* loaded from: classes4.dex */
public final class p<T> implements n7.o<List<T>, List<T>> {

    /* renamed from: a  reason: collision with root package name */
    final Comparator<? super T> f75932a;

    public p(Comparator<? super T> comparator) {
        this.f75932a = comparator;
    }

    @Override // n7.o
    /* renamed from: a */
    public List<T> apply(List<T> list) throws Exception {
        Collections.sort(list, this.f75932a);
        return list;
    }
}
