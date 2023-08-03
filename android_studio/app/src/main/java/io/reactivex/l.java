package io.reactivex;

/* compiled from: FlowableEmitter.java */
/* loaded from: classes3.dex */
public interface l<T> extends i<T> {
    boolean a(@m7.e Throwable th);

    void b(@m7.f io.reactivex.disposables.c cVar);

    void c(@m7.f n7.f fVar);

    long e();

    boolean isCancelled();

    @m7.e
    l<T> serialize();
}
