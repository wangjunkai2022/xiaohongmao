package io.reactivex.internal.util;

import java.util.List;

/* loaded from: classes4.dex */
public enum ListAddBiConsumer implements n7.c<List, Object, List> {
    INSTANCE;

    public static <T> n7.c<List<T>, T, List<T>> instance() {
        return INSTANCE;
    }

    @Override // n7.c
    public List apply(List list, Object obj) throws Exception {
        list.add(obj);
        return list;
    }
}
