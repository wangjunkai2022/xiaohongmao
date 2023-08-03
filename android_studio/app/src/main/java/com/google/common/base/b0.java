package com.google.common.base;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Predicate.java */
@h3.b
/* loaded from: classes2.dex */
public interface b0<T> {
    @CanIgnoreReturnValue
    boolean apply(@NullableDecl T t9);

    boolean equals(@NullableDecl Object obj);
}
