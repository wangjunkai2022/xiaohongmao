package dagger.internal;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AbstractMapFactory.java */
/* loaded from: classes3.dex */
public abstract class a<K, V, V2> implements h<Map<K, V2>> {

    /* renamed from: a  reason: collision with root package name */
    private final Map<K, u7.c<V>> f62057a;

    /* compiled from: AbstractMapFactory.java */
    /* renamed from: dagger.internal.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static abstract class AbstractC0508a<K, V, V2> {

        /* renamed from: a  reason: collision with root package name */
        final LinkedHashMap<K, u7.c<V>> f62058a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public AbstractC0508a(int i4) {
            this.f62058a = d.d(i4);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Multi-variable type inference failed */
        public AbstractC0508a<K, V, V2> a(K k10, u7.c<V> cVar) {
            this.f62058a.put(p.c(k10, "key"), p.c(cVar, "provider"));
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public AbstractC0508a<K, V, V2> b(u7.c<Map<K, V2>> cVar) {
            if (cVar instanceof f) {
                return b(((f) cVar).a());
            }
            this.f62058a.putAll(((a) cVar).f62057a);
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(Map<K, u7.c<V>> map) {
        this.f62057a = Collections.unmodifiableMap(map);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Map<K, u7.c<V>> b() {
        return this.f62057a;
    }
}
