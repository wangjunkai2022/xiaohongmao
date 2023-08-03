package io.reactivex;

/* compiled from: Observer.java */
/* loaded from: classes3.dex */
public interface g0<T> {
    void onComplete();

    void onError(@m7.e Throwable th);

    void onNext(@m7.e T t9);

    void onSubscribe(@m7.e io.reactivex.disposables.c cVar);
}
