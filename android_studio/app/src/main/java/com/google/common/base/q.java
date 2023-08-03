package com.google.common.base;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Function.java */
@h3.b
/* loaded from: classes2.dex */
public interface q<F, T> {
    @CanIgnoreReturnValue
    @NullableDecl
    T apply(@NullableDecl F f10);

    boolean equals(@NullableDecl Object obj);
}
