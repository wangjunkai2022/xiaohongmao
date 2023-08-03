package com.google.common.util.concurrent;

import com.google.common.util.concurrent.d;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: SettableFuture.java */
@h3.b
/* loaded from: classes2.dex */
public final class e1<V> extends d.j<V> {
    private e1() {
    }

    public static <V> e1<V> R() {
        return new e1<>();
    }

    @Override // com.google.common.util.concurrent.d
    @CanIgnoreReturnValue
    public boolean M(@NullableDecl V v9) {
        return super.M(v9);
    }

    @Override // com.google.common.util.concurrent.d
    @CanIgnoreReturnValue
    public boolean N(Throwable th) {
        return super.N(th);
    }

    @Override // com.google.common.util.concurrent.d
    @CanIgnoreReturnValue
    @h3.a
    public boolean O(q0<? extends V> q0Var) {
        return super.O(q0Var);
    }
}
