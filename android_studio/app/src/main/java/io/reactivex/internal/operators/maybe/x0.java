package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.EmptyDisposable;

/* compiled from: MaybeNever.java */
/* loaded from: classes3.dex */
public final class x0 extends io.reactivex.q<Object> {

    /* renamed from: a  reason: collision with root package name */
    public static final x0 f73512a = new x0();

    @Override // io.reactivex.q
    protected void q1(io.reactivex.t<? super Object> tVar) {
        tVar.onSubscribe(EmptyDisposable.NEVER);
    }
}
