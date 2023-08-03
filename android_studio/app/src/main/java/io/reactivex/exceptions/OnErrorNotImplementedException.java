package io.reactivex.exceptions;

import m7.e;

/* loaded from: classes3.dex */
public final class OnErrorNotImplementedException extends RuntimeException {

    /* renamed from: a  reason: collision with root package name */
    private static final long f71101a = -6298857009889503852L;

    public OnErrorNotImplementedException(String str, @e Throwable th) {
        super(str, th == null ? new NullPointerException() : th);
    }

    public OnErrorNotImplementedException(@e Throwable th) {
        this("The exception was not handled due to missing onError handler in the subscribe() method call. Further reading: https://github.com/ReactiveX/RxJava/wiki/Error-Handling | " + th, th);
    }
}
