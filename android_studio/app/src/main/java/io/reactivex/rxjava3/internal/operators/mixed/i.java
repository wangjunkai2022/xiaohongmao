package io.reactivex.rxjava3.internal.operators.mixed;

import io.reactivex.rxjava3.internal.operators.mixed.h;

/* compiled from: FlowableSwitchMapCompletablePublisher.java */
/* loaded from: classes4.dex */
public final class i<T> extends io.reactivex.rxjava3.core.a {

    /* renamed from: a  reason: collision with root package name */
    final org.reactivestreams.c<T> f78931a;

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, ? extends io.reactivex.rxjava3.core.g> f78932b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f78933c;

    public i(org.reactivestreams.c<T> source, q7.o<? super T, ? extends io.reactivex.rxjava3.core.g> mapper, boolean delayErrors) {
        this.f78931a = source;
        this.f78932b = mapper;
        this.f78933c = delayErrors;
    }

    @Override // io.reactivex.rxjava3.core.a
    protected void Y0(io.reactivex.rxjava3.core.d observer) {
        this.f78931a.i(new h.a(observer, this.f78932b, this.f78933c));
    }
}
