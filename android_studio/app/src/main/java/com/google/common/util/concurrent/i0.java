package com.google.common.util.concurrent;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: FutureCallback.java */
@h3.b
/* loaded from: classes2.dex */
public interface i0<V> {
    void a(Throwable th);

    void onSuccess(@NullableDecl V v9);
}
