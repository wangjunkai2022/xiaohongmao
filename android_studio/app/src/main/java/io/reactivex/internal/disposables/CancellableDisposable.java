package io.reactivex.internal.disposables;

import java.util.concurrent.atomic.AtomicReference;
import n7.f;

/* loaded from: classes.dex */
public final class CancellableDisposable extends AtomicReference<f> implements io.reactivex.disposables.c {

    /* renamed from: a  reason: collision with root package name */
    private static final long f71121a = 5718521705281392066L;

    public CancellableDisposable(f fVar) {
        super(fVar);
    }

    @Override // io.reactivex.disposables.c
    public void dispose() {
        f andSet;
        if (get() == null || (andSet = getAndSet(null)) == null) {
            return;
        }
        try {
            andSet.cancel();
        } catch (Exception e4) {
            io.reactivex.exceptions.a.b(e4);
            io.reactivex.plugins.a.Y(e4);
        }
    }

    @Override // io.reactivex.disposables.c
    public boolean isDisposed() {
        return get() == null;
    }
}
