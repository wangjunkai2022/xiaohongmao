package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.internal.operators.maybe.b1;

/* compiled from: SingleOnErrorComplete.java */
/* loaded from: classes4.dex */
public final class s0<T> extends io.reactivex.rxjava3.core.v<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.p0<T> f80917a;

    /* renamed from: b  reason: collision with root package name */
    final q7.r<? super Throwable> f80918b;

    public s0(io.reactivex.rxjava3.core.p0<T> source, q7.r<? super Throwable> predicate) {
        this.f80917a = source;
        this.f80918b = predicate;
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super T> observer) {
        this.f80917a.d(new b1.a(observer, this.f80918b));
    }
}
