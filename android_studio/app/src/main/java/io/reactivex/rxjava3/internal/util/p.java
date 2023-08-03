package io.reactivex.rxjava3.internal.util;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* compiled from: SorterFunction.java */
/* loaded from: classes4.dex */
public final class p<T> implements q7.o<List<T>, List<T>> {

    /* renamed from: a  reason: collision with root package name */
    final Comparator<? super T> f81347a;

    public p(Comparator<? super T> comparator) {
        this.f81347a = comparator;
    }

    @Override // q7.o
    /* renamed from: a */
    public List<T> apply(List<T> t9) {
        Collections.sort(t9, this.f81347a);
        return t9;
    }
}
