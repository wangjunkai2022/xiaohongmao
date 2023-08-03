package com.facebook.imagepipeline.memory;

import com.facebook.infer.annotation.Nullsafe;

/* compiled from: PoolBackend.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
interface c0<T> {
    int a(T item);

    @r7.h
    T get(int size);

    @r7.h
    T pop();

    void put(T item);
}
