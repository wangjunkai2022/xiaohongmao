package dagger.internal;

import dagger.internal.a;
import java.util.Map;

/* compiled from: MapProviderFactory.java */
/* loaded from: classes3.dex */
public final class n<K, V> extends dagger.internal.a<K, V, u7.c<V>> implements d6.e<Map<K, u7.c<V>>> {

    /* compiled from: MapProviderFactory.java */
    /* loaded from: classes3.dex */
    public static final class b<K, V> extends a.AbstractC0508a<K, V, u7.c<V>> {
        public n<K, V> c() {
            return new n<>(this.f62058a);
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
        public b<K, V> b(u7.c<Map<K, u7.c<V>>> cVar) {
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

    @Override // u7.c
    /* renamed from: d */
    public Map<K, u7.c<V>> get() {
        return b();
    }

    private n(Map<K, u7.c<V>> map) {
        super(map);
    }
}
