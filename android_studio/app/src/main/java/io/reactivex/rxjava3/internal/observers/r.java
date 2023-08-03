package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.core.y;
import io.reactivex.rxjava3.exceptions.CompositeException;

/* compiled from: SafeMaybeObserver.java */
/* loaded from: classes4.dex */
public final class r<T> implements y<T> {

    /* renamed from: a  reason: collision with root package name */
    final y<? super T> f76526a;

    /* renamed from: b  reason: collision with root package name */
    boolean f76527b;

    public r(y<? super T> downstream) {
        this.f76526a = downstream;
    }

    @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
    public void onComplete() {
        if (this.f76527b) {
            return;
        }
        try {
            this.f76526a.onComplete();
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            io.reactivex.rxjava3.plugins.a.Y(th);
        }
    }

    @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
    public void onError(@p7.e Throwable e4) {
        if (this.f76527b) {
            io.reactivex.rxjava3.plugins.a.Y(e4);
            return;
        }
        try {
            this.f76526a.onError(e4);
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            io.reactivex.rxjava3.plugins.a.Y(new CompositeException(e4, th));
        }
    }

    @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
    public void onSubscribe(@p7.e io.reactivex.rxjava3.disposables.f d4) {
        try {
            this.f76526a.onSubscribe(d4);
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            this.f76527b = true;
            d4.dispose();
            io.reactivex.rxjava3.plugins.a.Y(th);
        }
    }

    @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
    public void onSuccess(@p7.e T t9) {
        if (this.f76527b) {
            return;
        }
        try {
            this.f76526a.onSuccess(t9);
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            io.reactivex.rxjava3.plugins.a.Y(th);
        }
    }
}
