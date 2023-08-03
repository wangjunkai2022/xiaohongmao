package io.reactivex.rxjava3.core;

/* compiled from: ObservableEmitter.java */
/* loaded from: classes4.dex */
public interface i0<T> extends i<T> {
    boolean a(@p7.e Throwable t9);

    void b(@p7.f io.reactivex.rxjava3.disposables.f d4);

    void c(@p7.f q7.f c10);

    boolean isDisposed();

    @p7.e
    i0<T> serialize();
}
