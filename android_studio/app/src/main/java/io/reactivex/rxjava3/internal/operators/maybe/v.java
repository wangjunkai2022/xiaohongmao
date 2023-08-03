package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;

/* compiled from: MaybeEmpty.java */
/* loaded from: classes4.dex */
public final class v extends io.reactivex.rxjava3.core.v<Object> implements io.reactivex.rxjava3.internal.fuseable.o<Object> {

    /* renamed from: a  reason: collision with root package name */
    public static final v f78785a = new v();

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super Object> observer) {
        EmptyDisposable.complete(observer);
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.o, q7.s
    public Object get() {
        return null;
    }
}
