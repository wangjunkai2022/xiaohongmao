package com.google.common.graph;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: GraphConnections.java */
/* loaded from: classes2.dex */
interface y<N, V> {
    Set<N> a();

    Set<N> b();

    Set<N> c();

    @NullableDecl
    V d(N n9);

    @CanIgnoreReturnValue
    V e(N n9);

    void f(N n9);

    @CanIgnoreReturnValue
    V g(N n9, V v9);

    void h(N n9, V v9);
}
