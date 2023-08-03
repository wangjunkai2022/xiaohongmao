package io.reactivex.rxjava3.core;

/* compiled from: Observer.java */
/* loaded from: classes4.dex */
public interface n0<T> {
    void onComplete();

    void onError(@p7.e Throwable e4);

    void onNext(@p7.e T t9);

    void onSubscribe(@p7.e io.reactivex.rxjava3.disposables.f d4);
}
