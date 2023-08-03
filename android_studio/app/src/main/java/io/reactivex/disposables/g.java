package io.reactivex.disposables;

/* compiled from: RunnableDisposable.java */
/* loaded from: classes3.dex */
final class g extends f<Runnable> {

    /* renamed from: b  reason: collision with root package name */
    private static final long f71089b = -8219729196779211169L;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(Runnable runnable) {
        super(runnable);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.reactivex.disposables.f
    /* renamed from: b */
    public void a(@m7.e Runnable runnable) {
        runnable.run();
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public String toString() {
        return "RunnableDisposable(disposed=" + isDisposed() + ", " + get() + ")";
    }
}
