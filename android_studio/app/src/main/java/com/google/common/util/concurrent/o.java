package com.google.common.util.concurrent;

import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.atomic.AtomicReferenceArray;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Atomics.java */
@h3.c
/* loaded from: classes2.dex */
public final class o {
    private o() {
    }

    public static <V> AtomicReference<V> a() {
        return new AtomicReference<>();
    }

    public static <V> AtomicReference<V> b(@NullableDecl V v9) {
        return new AtomicReference<>(v9);
    }

    public static <E> AtomicReferenceArray<E> c(int i4) {
        return new AtomicReferenceArray<>(i4);
    }

    public static <E> AtomicReferenceArray<E> d(E[] eArr) {
        return new AtomicReferenceArray<>(eArr);
    }
}
