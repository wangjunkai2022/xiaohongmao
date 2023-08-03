package com.google.common.graph;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Set;

/* compiled from: NetworkConnections.java */
/* loaded from: classes2.dex */
interface m0<N, E> {
    Set<N> a();

    Set<N> b();

    Set<N> c();

    @CanIgnoreReturnValue
    N d(E e4, boolean z9);

    void e(E e4, N n9);

    void f(E e4, N n9, boolean z9);

    Set<E> g();

    N h(E e4);

    Set<E> i();

    @CanIgnoreReturnValue
    N j(E e4);

    Set<E> k();

    Set<E> l(N n9);
}
