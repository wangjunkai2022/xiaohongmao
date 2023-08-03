package io.reactivex.rxjava3.observers;

import io.reactivex.rxjava3.core.n0;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* compiled from: DefaultObserver.java */
/* loaded from: classes4.dex */
public abstract class b<T> implements n0<T> {

    /* renamed from: a  reason: collision with root package name */
    private io.reactivex.rxjava3.disposables.f f81357a;

    protected final void a() {
        io.reactivex.rxjava3.disposables.f fVar = this.f81357a;
        this.f81357a = DisposableHelper.DISPOSED;
        fVar.dispose();
    }

    protected void b() {
    }

    @Override // io.reactivex.rxjava3.core.n0
    public final void onSubscribe(@p7.e io.reactivex.rxjava3.disposables.f d4) {
        if (io.reactivex.rxjava3.internal.util.f.e(this.f81357a, d4, getClass())) {
            this.f81357a = d4;
            b();
        }
    }
}
