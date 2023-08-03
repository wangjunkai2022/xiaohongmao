package com.google.common.graph;

import com.google.common.collect.HashBiMap;
import com.google.common.collect.ImmutableBiMap;
import java.util.Collections;
import java.util.Map;
import java.util.Set;

/* compiled from: DirectedNetworkConnections.java */
/* loaded from: classes2.dex */
final class p<N, E> extends b<N, E> {
    protected p(Map<E, N> map, Map<E, N> map2, int i4) {
        super(map, map2, i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <N, E> p<N, E> n() {
        return new p<>(HashBiMap.create(2), HashBiMap.create(2), 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <N, E> p<N, E> o(Map<E, N> map, Map<E, N> map2, int i4) {
        return new p<>(ImmutableBiMap.copyOf((Map) map), ImmutableBiMap.copyOf((Map) map2), i4);
    }

    @Override // com.google.common.graph.m0
    public Set<N> a() {
        return Collections.unmodifiableSet(((com.google.common.collect.u) this.f34090b).values());
    }

    @Override // com.google.common.graph.m0
    public Set<N> b() {
        return Collections.unmodifiableSet(((com.google.common.collect.u) this.f34089a).values());
    }

    @Override // com.google.common.graph.m0
    public Set<E> l(N n9) {
        return new q(((com.google.common.collect.u) this.f34090b).inverse(), n9);
    }
}
