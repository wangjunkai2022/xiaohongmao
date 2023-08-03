package io.reactivex.rxjava3.internal.util;

import java.util.HashMap;
import java.util.Map;
import q7.s;

/* loaded from: classes4.dex */
public enum HashMapSupplier implements s<Map<Object, Object>> {
    INSTANCE;

    public static <K, V> s<Map<K, V>> asSupplier() {
        return INSTANCE;
    }

    @Override // q7.s
    public Map<Object, Object> get() {
        return new HashMap();
    }
}
