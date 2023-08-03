package com.koushikdutta.async.future;

import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public interface Future<T> extends Cancellable, java.util.concurrent.Future<T> {
    void B(FutureCallback<T> futureCallback);

    Future<T> C(Executor executor);

    T E();

    <R> Future<R> F(ThenCallback<R, T> thenCallback);

    Future<T> I(SuccessCallback<T> successCallback);

    Exception l();

    Future<T> n(FailRecoverCallback<T> failRecoverCallback);

    Future<T> o(DoneCallback<T> doneCallback);

    Future<T> p(FailCallback failCallback);

    <R> Future<R> t(ThenFutureCallback<R, T> thenFutureCallback);

    Future<T> w(FailConvertCallback<T> failConvertCallback);
}
