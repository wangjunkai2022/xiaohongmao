package io.reactivex.rxjava3.internal.util;

import java.util.List;

/* loaded from: classes4.dex */
public enum ListAddBiConsumer implements q7.c<List, Object, List> {
    INSTANCE;

    public static <T> q7.c<List<T>, T, List<T>> instance() {
        return INSTANCE;
    }

    @Override // q7.c
    public List apply(List t12, Object t22) {
        t12.add(t22);
        return t12;
    }
}
