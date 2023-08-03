package dagger.internal;

import java.util.Collections;
import java.util.Map;

/* compiled from: MapBuilder.java */
/* loaded from: classes3.dex */
public final class l<K, V> {

    /* renamed from: a  reason: collision with root package name */
    private final Map<K, V> f62067a;

    private l(int i4) {
        this.f62067a = d.d(i4);
    }

    public static <K, V> l<K, V> b(int i4) {
        return new l<>(i4);
    }

    public Map<K, V> a() {
        if (this.f62067a.isEmpty()) {
            return Collections.emptyMap();
        }
        return Collections.unmodifiableMap(this.f62067a);
    }

    public l<K, V> c(K k10, V v9) {
        this.f62067a.put(k10, v9);
        return this;
    }

    public l<K, V> d(Map<K, V> map) {
        this.f62067a.putAll(map);
        return this;
    }
}
