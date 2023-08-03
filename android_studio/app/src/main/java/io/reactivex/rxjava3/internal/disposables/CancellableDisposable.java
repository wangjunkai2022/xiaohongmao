package io.reactivex.rxjava3.internal.disposables;

import java.util.concurrent.atomic.AtomicReference;
import q7.f;

/* loaded from: classes4.dex */
public final class CancellableDisposable extends AtomicReference<f> implements io.reactivex.rxjava3.disposables.f {

    /* renamed from: a  reason: collision with root package name */
    private static final long f76174a = 5718521705281392066L;

    public CancellableDisposable(f cancellable) {
        super(cancellable);
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public void dispose() {
        f andSet;
        if (get() == null || (andSet = getAndSet(null)) == null) {
            return;
        }
        try {
            andSet.cancel();
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            io.reactivex.rxjava3.plugins.a.Y(th);
        }
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public boolean isDisposed() {
        return get() == null;
    }
}
