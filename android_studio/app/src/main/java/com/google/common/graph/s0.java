package com.google.common.graph;

import com.google.common.collect.HashBiMap;
import com.google.common.collect.ImmutableBiMap;
import java.util.Collections;
import java.util.Map;
import java.util.Set;

/* compiled from: UndirectedNetworkConnections.java */
/* loaded from: classes2.dex */
final class s0<N, E> extends f<N, E> {
    protected s0(Map<E, N> map) {
        super(map);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <N, E> s0<N, E> m() {
        return new s0<>(HashBiMap.create(2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <N, E> s0<N, E> n(Map<E, N> map) {
        return new s0<>(ImmutableBiMap.copyOf((Map) map));
    }

    @Override // com.google.common.graph.m0
    public Set<N> c() {
        return Collections.unmodifiableSet(((com.google.common.collect.u) this.f34116a).values());
    }

    @Override // com.google.common.graph.m0
    public Set<E> l(N n9) {
        return new q(((com.google.common.collect.u) this.f34116a).inverse(), n9);
    }
}
