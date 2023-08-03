package io.reactivex;

/* compiled from: ObservableEmitter.java */
/* loaded from: classes3.dex */
public interface b0<T> extends i<T> {
    boolean a(@m7.e Throwable th);

    void b(@m7.f io.reactivex.disposables.c cVar);

    void c(@m7.f n7.f fVar);

    boolean isDisposed();

    @m7.e
    b0<T> serialize();
}
