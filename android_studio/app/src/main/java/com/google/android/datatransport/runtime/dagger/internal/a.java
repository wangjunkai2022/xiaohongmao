package com.google.android.datatransport.runtime.dagger.internal;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AbstractMapFactory.java */
/* loaded from: classes2.dex */
public abstract class a<K, V, V2> implements g<Map<K, V2>> {

    /* renamed from: a  reason: collision with root package name */
    private final Map<K, u7.c<V>> f20412a;

    /* compiled from: AbstractMapFactory.java */
    /* renamed from: com.google.android.datatransport.runtime.dagger.internal.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static abstract class AbstractC0152a<K, V, V2> {

        /* renamed from: a  reason: collision with root package name */
        final LinkedHashMap<K, u7.c<V>> f20413a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public AbstractC0152a(int i4) {
            this.f20413a = d.d(i4);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Multi-variable type inference failed */
        public AbstractC0152a<K, V, V2> a(K k10, u7.c<V> cVar) {
            this.f20413a.put(p.c(k10, "key"), p.c(cVar, "provider"));
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public AbstractC0152a<K, V, V2> b(u7.c<Map<K, V2>> cVar) {
            if (cVar instanceof e) {
                return b(((e) cVar).a());
            }
            this.f20413a.putAll(((a) cVar).f20412a);
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(Map<K, u7.c<V>> map) {
        this.f20412a = Collections.unmodifiableMap(map);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Map<K, u7.c<V>> b() {
        return this.f20412a;
    }
}
