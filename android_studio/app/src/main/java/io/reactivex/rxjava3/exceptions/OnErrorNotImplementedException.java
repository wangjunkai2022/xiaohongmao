package io.reactivex.rxjava3.exceptions;

import p7.e;

/* loaded from: classes4.dex */
public final class OnErrorNotImplementedException extends RuntimeException {

    /* renamed from: a  reason: collision with root package name */
    private static final long f76169a = -6298857009889503852L;

    public OnErrorNotImplementedException(String message, @e Throwable e4) {
        super(message, e4 == null ? new NullPointerException() : e4);
    }

    public OnErrorNotImplementedException(@e Throwable e4) {
        this("The exception was not handled due to missing onError handler in the subscribe() method call. Further reading: https://github.com/ReactiveX/RxJava/wiki/Error-Handling | " + e4, e4);
    }
}
