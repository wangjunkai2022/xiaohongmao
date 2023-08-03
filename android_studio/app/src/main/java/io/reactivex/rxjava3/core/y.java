package io.reactivex.rxjava3.core;

/* compiled from: MaybeObserver.java */
/* loaded from: classes4.dex */
public interface y<T> {
    void onComplete();

    void onError(@p7.e Throwable e4);

    void onSubscribe(@p7.e io.reactivex.rxjava3.disposables.f d4);

    void onSuccess(@p7.e T t9);
}
