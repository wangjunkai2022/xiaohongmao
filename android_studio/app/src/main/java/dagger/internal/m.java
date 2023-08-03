package dagger.internal;

import dagger.internal.a;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

/* compiled from: MapFactory.java */
/* loaded from: classes3.dex */
public final class m<K, V> extends dagger.internal.a<K, V, V> {

    /* renamed from: b  reason: collision with root package name */
    private static final u7.c<Map<Object, Object>> f62068b = k.a(Collections.emptyMap());

    /* compiled from: MapFactory.java */
    /* loaded from: classes3.dex */
    public static final class b<K, V> extends a.AbstractC0508a<K, V, V> {
        public m<K, V> c() {
            return new m<>(this.f62058a);
        }

        @Override // dagger.internal.a.AbstractC0508a
        /* renamed from: d */
        public b<K, V> a(K k10, u7.c<V> cVar) {
            super.a(k10, cVar);
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // dagger.internal.a.AbstractC0508a
        /* renamed from: e */
        public b<K, V> b(u7.c<Map<K, V>> cVar) {
            super.b(cVar);
            return this;
        }

        private b(int i4) {
            super(i4);
        }
    }

    public static <K, V> b<K, V> c(int i4) {
        return new b<>(i4);
    }

    public static <K, V> u7.c<Map<K, V>> d() {
        return (u7.c<Map<K, V>>) f62068b;
    }

    @Override // u7.c
    /* renamed from: e */
    public Map<K, V> get() {
        LinkedHashMap d4 = d.d(b().size());
        for (Map.Entry<K, u7.c<V>> entry : b().entrySet()) {
            d4.put(entry.getKey(), entry.getValue().get());
        }
        return Collections.unmodifiableMap(d4);
    }

    private m(Map<K, u7.c<V>> map) {
        super(map);
    }
}
