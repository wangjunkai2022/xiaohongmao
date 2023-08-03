package com.google.common.util.concurrent;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@h3.c
/* loaded from: classes2.dex */
public class UncheckedTimeoutException extends RuntimeException {

    /* renamed from: a  reason: collision with root package name */
    private static final long f35031a = 0;

    public UncheckedTimeoutException() {
    }

    public UncheckedTimeoutException(@NullableDecl String str) {
        super(str);
    }

    public UncheckedTimeoutException(@NullableDecl Throwable th) {
        super(th);
    }

    public UncheckedTimeoutException(@NullableDecl String str, @NullableDecl Throwable th) {
        super(str, th);
    }
}
