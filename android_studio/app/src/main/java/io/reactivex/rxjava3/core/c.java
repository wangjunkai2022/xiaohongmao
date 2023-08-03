package io.reactivex.rxjava3.core;

/* compiled from: CompletableEmitter.java */
/* loaded from: classes4.dex */
public interface c {
    boolean a(@p7.e Throwable t9);

    void b(@p7.f io.reactivex.rxjava3.disposables.f d4);

    void c(@p7.f q7.f c10);

    boolean isDisposed();

    void onComplete();

    void onError(@p7.e Throwable t9);
}
