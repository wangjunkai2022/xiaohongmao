package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.exceptions.CompositeException;

/* compiled from: SafeCompletableObserver.java */
/* loaded from: classes4.dex */
public final class q implements io.reactivex.rxjava3.core.d {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.d f76524a;

    /* renamed from: b  reason: collision with root package name */
    boolean f76525b;

    public q(io.reactivex.rxjava3.core.d downstream) {
        this.f76524a = downstream;
    }

    @Override // io.reactivex.rxjava3.core.d
    public void onComplete() {
        if (this.f76525b) {
            return;
        }
        try {
            this.f76524a.onComplete();
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            io.reactivex.rxjava3.plugins.a.Y(th);
        }
    }

    @Override // io.reactivex.rxjava3.core.d
    public void onError(@p7.e Throwable e4) {
        if (this.f76525b) {
            io.reactivex.rxjava3.plugins.a.Y(e4);
            return;
        }
        try {
            this.f76524a.onError(e4);
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            io.reactivex.rxjava3.plugins.a.Y(new CompositeException(e4, th));
        }
    }

    @Override // io.reactivex.rxjava3.core.d
    public void onSubscribe(@p7.e io.reactivex.rxjava3.disposables.f d4) {
        try {
            this.f76524a.onSubscribe(d4);
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            this.f76525b = true;
            d4.dispose();
            io.reactivex.rxjava3.plugins.a.Y(th);
        }
    }
}
