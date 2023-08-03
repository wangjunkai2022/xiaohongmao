package io.reactivex.rxjava3.core;

/* compiled from: Emitter.java */
/* loaded from: classes4.dex */
public interface i<T> {
    void onComplete();

    void onError(@p7.e Throwable error);

    void onNext(@p7.e T value);
}
