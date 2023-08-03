package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;

/* compiled from: MaybeNever.java */
/* loaded from: classes4.dex */
public final class z0 extends io.reactivex.rxjava3.core.v<Object> {

    /* renamed from: a  reason: collision with root package name */
    public static final z0 f78828a = new z0();

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super Object> observer) {
        observer.onSubscribe(EmptyDisposable.NEVER);
    }
}
