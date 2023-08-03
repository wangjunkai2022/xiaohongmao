package io.reactivex.internal.operators.completable;

import io.reactivex.internal.disposables.EmptyDisposable;

/* compiled from: CompletableNever.java */
/* loaded from: classes3.dex */
public final class f0 extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    public static final io.reactivex.a f71341a = new f0();

    private f0() {
    }

    @Override // io.reactivex.a
    protected void I0(io.reactivex.d dVar) {
        dVar.onSubscribe(EmptyDisposable.NEVER);
    }
}
