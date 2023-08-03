package com.google.common.base;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@h3.b
/* loaded from: classes2.dex */
public class VerifyException extends RuntimeException {
    public VerifyException() {
    }

    public VerifyException(@NullableDecl String str) {
        super(str);
    }

    public VerifyException(@NullableDecl Throwable th) {
        super(th);
    }

    public VerifyException(@NullableDecl String str, @NullableDecl Throwable th) {
        super(str, th);
    }
}
