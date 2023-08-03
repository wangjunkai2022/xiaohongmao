package io.reactivex.rxjava3.core;

/* compiled from: SingleEmitter.java */
/* loaded from: classes4.dex */
public interface r0<T> {
    boolean a(@p7.e Throwable t9);

    void b(@p7.f io.reactivex.rxjava3.disposables.f d4);

    void c(@p7.f q7.f c10);

    boolean isDisposed();

    void onError(@p7.e Throwable t9);

    void onSuccess(@p7.e T t9);
}
