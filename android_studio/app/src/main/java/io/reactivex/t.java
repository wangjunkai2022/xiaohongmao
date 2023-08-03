package io.reactivex;

/* compiled from: MaybeObserver.java */
/* loaded from: classes3.dex */
public interface t<T> {
    void onComplete();

    void onError(@m7.e Throwable th);

    void onSubscribe(@m7.e io.reactivex.disposables.c cVar);

    void onSuccess(@m7.e T t9);
}
