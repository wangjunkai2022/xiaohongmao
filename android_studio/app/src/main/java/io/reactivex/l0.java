package io.reactivex;

/* compiled from: SingleObserver.java */
/* loaded from: classes3.dex */
public interface l0<T> {
    void onError(@m7.e Throwable th);

    void onSubscribe(@m7.e io.reactivex.disposables.c cVar);

    void onSuccess(@m7.e T t9);
}
