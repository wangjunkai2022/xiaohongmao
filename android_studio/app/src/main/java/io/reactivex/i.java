package io.reactivex;

/* compiled from: Emitter.java */
/* loaded from: classes3.dex */
public interface i<T> {
    void onComplete();

    void onError(@m7.e Throwable th);

    void onNext(@m7.e T t9);
}
