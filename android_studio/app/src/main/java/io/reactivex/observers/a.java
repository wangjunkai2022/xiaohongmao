package io.reactivex.observers;

import io.reactivex.g0;
import io.reactivex.internal.disposables.DisposableHelper;

/* compiled from: DefaultObserver.java */
/* loaded from: classes4.dex */
public abstract class a<T> implements g0<T> {

    /* renamed from: a  reason: collision with root package name */
    private io.reactivex.disposables.c f75946a;

    protected final void a() {
        io.reactivex.disposables.c cVar = this.f75946a;
        this.f75946a = DisposableHelper.DISPOSED;
        cVar.dispose();
    }

    protected void b() {
    }

    @Override // io.reactivex.g0
    public final void onSubscribe(@m7.e io.reactivex.disposables.c cVar) {
        if (io.reactivex.internal.util.f.e(this.f75946a, cVar, getClass())) {
            this.f75946a = cVar;
            b();
        }
    }
}
