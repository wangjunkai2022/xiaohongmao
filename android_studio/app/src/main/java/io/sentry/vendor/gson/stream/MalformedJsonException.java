package io.sentry.vendor.gson.stream;

import java.io.IOException;
import m8.a;

@a.c
/* loaded from: classes4.dex */
public final class MalformedJsonException extends IOException {

    /* renamed from: a  reason: collision with root package name */
    private static final long f84131a = 1;

    public MalformedJsonException(String str) {
        super(str);
    }

    public MalformedJsonException(String str, Throwable th) {
        super(str);
        initCause(th);
    }

    public MalformedJsonException(Throwable th) {
        initCause(th);
    }
}
