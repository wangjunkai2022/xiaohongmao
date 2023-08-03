package io.reactivex;

/* compiled from: MaybeEmitter.java */
/* loaded from: classes3.dex */
public interface s<T> {
    boolean a(@m7.e Throwable th);

    void b(@m7.f io.reactivex.disposables.c cVar);

    void c(@m7.f n7.f fVar);

    boolean isDisposed();

    void onComplete();

    void onError(@m7.e Throwable th);

    void onSuccess(@m7.e T t9);
}
