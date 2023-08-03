package com.google.common.collect;

import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: MapDifference.java */
@h3.b
/* loaded from: classes2.dex */
public interface c3<K, V> {

    /* compiled from: MapDifference.java */
    /* loaded from: classes2.dex */
    public interface a<V> {
        V a();

        V b();

        boolean equals(@NullableDecl Object obj);

        int hashCode();
    }

    Map<K, V> a();

    Map<K, V> b();

    Map<K, a<V>> c();

    Map<K, V> d();

    boolean e();

    boolean equals(@NullableDecl Object obj);

    int hashCode();
}
