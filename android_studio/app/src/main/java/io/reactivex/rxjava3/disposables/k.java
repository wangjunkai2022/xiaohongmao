package io.reactivex.rxjava3.disposables;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: SerialDisposable.java */
/* loaded from: classes4.dex */
public final class k implements f {

    /* renamed from: a  reason: collision with root package name */
    final AtomicReference<f> f76159a;

    public k() {
        this.f76159a = new AtomicReference<>();
    }

    @p7.f
    public f a() {
        f fVar = this.f76159a.get();
        return fVar == DisposableHelper.DISPOSED ? e.a() : fVar;
    }

    public boolean b(@p7.f f next) {
        return DisposableHelper.replace(this.f76159a, next);
    }

    public boolean c(@p7.f f next) {
        return DisposableHelper.set(this.f76159a, next);
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public void dispose() {
        DisposableHelper.dispose(this.f76159a);
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(this.f76159a.get());
    }

    public k(@p7.f f initialDisposable) {
        this.f76159a = new AtomicReference<>(initialDisposable);
    }
}
