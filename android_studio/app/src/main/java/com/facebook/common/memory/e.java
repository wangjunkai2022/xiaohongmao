package com.facebook.common.memory;

/* compiled from: Pool.java */
/* loaded from: classes.dex */
public interface e<V> extends com.facebook.common.references.h<V>, b {
    V get(int size);

    @Override // com.facebook.common.references.h
    void release(V value);
}
