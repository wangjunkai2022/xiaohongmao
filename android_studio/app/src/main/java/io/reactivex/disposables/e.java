package io.reactivex.disposables;

import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FutureDisposable.java */
/* loaded from: classes3.dex */
final class e extends AtomicReference<Future<?>> implements c {

    /* renamed from: b  reason: collision with root package name */
    private static final long f71086b = 6545242830671168775L;

    /* renamed from: a  reason: collision with root package name */
    private final boolean f71087a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(Future<?> future, boolean z9) {
        super(future);
        this.f71087a = z9;
    }

    @Override // io.reactivex.disposables.c
    public void dispose() {
        Future<?> andSet = getAndSet(null);
        if (andSet != null) {
            andSet.cancel(this.f71087a);
        }
    }

    @Override // io.reactivex.disposables.c
    public boolean isDisposed() {
        Future<?> future = get();
        return future == null || future.isDone();
    }
}
