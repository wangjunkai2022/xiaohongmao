package com.google.common.util.concurrent;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@h3.b
/* loaded from: classes2.dex */
public class ExecutionError extends Error {

    /* renamed from: a  reason: collision with root package name */
    private static final long f35028a = 0;

    protected ExecutionError() {
    }

    protected ExecutionError(@NullableDecl String str) {
        super(str);
    }

    public ExecutionError(@NullableDecl String str, @NullableDecl Error error) {
        super(str, error);
    }

    public ExecutionError(@NullableDecl Error error) {
        super(error);
    }
}
