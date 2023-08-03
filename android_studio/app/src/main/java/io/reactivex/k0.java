package io.reactivex;

/* compiled from: SingleEmitter.java */
/* loaded from: classes3.dex */
public interface k0<T> {
    boolean a(@m7.e Throwable th);

    void b(@m7.f io.reactivex.disposables.c cVar);

    void c(@m7.f n7.f fVar);

    boolean isDisposed();

    void onError(@m7.e Throwable th);

    void onSuccess(@m7.e T t9);
}
