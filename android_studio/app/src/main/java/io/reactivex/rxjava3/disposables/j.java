package io.reactivex.rxjava3.disposables;

/* compiled from: RunnableDisposable.java */
/* loaded from: classes4.dex */
final class j extends i<Runnable> {

    /* renamed from: b  reason: collision with root package name */
    private static final long f76158b = -8219729196779211169L;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(Runnable value) {
        super(value);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.reactivex.rxjava3.disposables.i
    /* renamed from: b */
    public void a(@p7.e Runnable value) {
        value.run();
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public String toString() {
        return "RunnableDisposable(disposed=" + isDisposed() + ", " + get() + ")";
    }
}
