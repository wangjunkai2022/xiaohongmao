package io.reactivex.rxjava3.internal.operators.flowable;

import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: FlowableAutoConnect.java */
/* loaded from: classes4.dex */
public final class k<T> extends io.reactivex.rxjava3.core.m<T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.flowables.a<? extends T> f77415b;

    /* renamed from: c  reason: collision with root package name */
    final int f77416c;

    /* renamed from: d  reason: collision with root package name */
    final q7.g<? super io.reactivex.rxjava3.disposables.f> f77417d;

    /* renamed from: e  reason: collision with root package name */
    final AtomicInteger f77418e = new AtomicInteger();

    public k(io.reactivex.rxjava3.flowables.a<? extends T> source, int numberOfSubscribers, q7.g<? super io.reactivex.rxjava3.disposables.f> connection) {
        this.f77415b = source;
        this.f77416c = numberOfSubscribers;
        this.f77417d = connection;
    }

    @Override // io.reactivex.rxjava3.core.m
    public void H6(org.reactivestreams.d<? super T> child) {
        this.f77415b.i(child);
        if (this.f77418e.incrementAndGet() == this.f77416c) {
            this.f77415b.k9(this.f77417d);
        }
    }
}
