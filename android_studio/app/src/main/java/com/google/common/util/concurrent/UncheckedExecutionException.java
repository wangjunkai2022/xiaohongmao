package com.google.common.util.concurrent;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@h3.b
/* loaded from: classes2.dex */
public class UncheckedExecutionException extends RuntimeException {

    /* renamed from: a  reason: collision with root package name */
    private static final long f35030a = 0;

    protected UncheckedExecutionException() {
    }

    protected UncheckedExecutionException(@NullableDecl String str) {
        super(str);
    }

    public UncheckedExecutionException(@NullableDecl String str, @NullableDecl Throwable th) {
        super(str, th);
    }

    public UncheckedExecutionException(@NullableDecl Throwable th) {
        super(th);
    }
}
