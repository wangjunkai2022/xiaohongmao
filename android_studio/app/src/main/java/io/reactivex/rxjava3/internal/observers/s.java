package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.core.s0;
import io.reactivex.rxjava3.exceptions.CompositeException;

/* compiled from: SafeSingleObserver.java */
/* loaded from: classes4.dex */
public final class s<T> implements s0<T> {

    /* renamed from: a  reason: collision with root package name */
    final s0<? super T> f76528a;

    /* renamed from: b  reason: collision with root package name */
    boolean f76529b;

    public s(s0<? super T> downstream) {
        this.f76528a = downstream;
    }

    @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
    public void onError(@p7.e Throwable e4) {
        if (this.f76529b) {
            io.reactivex.rxjava3.plugins.a.Y(e4);
            return;
        }
        try {
            this.f76528a.onError(e4);
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            io.reactivex.rxjava3.plugins.a.Y(new CompositeException(e4, th));
        }
    }

    @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
    public void onSubscribe(@p7.e io.reactivex.rxjava3.disposables.f d4) {
        try {
            this.f76528a.onSubscribe(d4);
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            this.f76529b = true;
            d4.dispose();
            io.reactivex.rxjava3.plugins.a.Y(th);
        }
    }

    @Override // io.reactivex.rxjava3.core.s0
    public void onSuccess(@p7.e T t9) {
        if (this.f76529b) {
            return;
        }
        try {
            this.f76528a.onSuccess(t9);
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            io.reactivex.rxjava3.plugins.a.Y(th);
        }
    }
}
