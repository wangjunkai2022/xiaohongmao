package io.reactivex.rxjava3.disposables;

import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FutureDisposable.java */
/* loaded from: classes4.dex */
final class h extends AtomicReference<Future<?>> implements f {

    /* renamed from: b  reason: collision with root package name */
    private static final long f76155b = 6545242830671168775L;

    /* renamed from: a  reason: collision with root package name */
    private final boolean f76156a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(Future<?> run, boolean allowInterrupt) {
        super(run);
        this.f76156a = allowInterrupt;
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public void dispose() {
        Future<?> andSet = getAndSet(null);
        if (andSet != null) {
            andSet.cancel(this.f76156a);
        }
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public boolean isDisposed() {
        Future<?> future = get();
        return future == null || future.isDone();
    }
}
