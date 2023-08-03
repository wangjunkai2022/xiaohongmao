package io.reactivex.rxjava3.internal.util;

import java.util.ArrayList;
import java.util.List;
import q7.s;

/* loaded from: classes4.dex */
public enum ArrayListSupplier implements s<List<Object>>, q7.o<Object, List<Object>> {
    INSTANCE;

    public static <T, O> q7.o<O, List<T>> asFunction() {
        return INSTANCE;
    }

    public static <T> s<List<T>> asSupplier() {
        return INSTANCE;
    }

    @Override // q7.o
    public List<Object> apply(Object o9) {
        return new ArrayList();
    }

    @Override // q7.s
    public List<Object> get() {
        return new ArrayList();
    }
}
