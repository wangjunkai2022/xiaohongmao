package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.core.s0;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ResumeSingleObserver.java */
/* loaded from: classes4.dex */
public final class p<T> implements s0<T> {

    /* renamed from: a  reason: collision with root package name */
    final AtomicReference<io.reactivex.rxjava3.disposables.f> f76522a;

    /* renamed from: b  reason: collision with root package name */
    final s0<? super T> f76523b;

    public p(AtomicReference<io.reactivex.rxjava3.disposables.f> parent, s0<? super T> downstream) {
        this.f76522a = parent;
        this.f76523b = downstream;
    }

    @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
    public void onError(Throwable e4) {
        this.f76523b.onError(e4);
    }

    @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
    public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
        DisposableHelper.replace(this.f76522a, d4);
    }

    @Override // io.reactivex.rxjava3.core.s0
    public void onSuccess(T value) {
        this.f76523b.onSuccess(value);
    }
}
