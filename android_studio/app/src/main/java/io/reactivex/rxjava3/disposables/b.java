package io.reactivex.rxjava3.disposables;

/* compiled from: AutoCloseableDisposable.java */
/* loaded from: classes4.dex */
final class b extends i<AutoCloseable> {

    /* renamed from: b  reason: collision with root package name */
    private static final long f76151b = -6646144244598696847L;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(AutoCloseable value) {
        super(value);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.reactivex.rxjava3.disposables.i
    /* renamed from: b */
    public void a(@p7.e AutoCloseable value) {
        try {
            value.close();
        } catch (Throwable th) {
            throw io.reactivex.rxjava3.internal.util.g.i(th);
        }
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public String toString() {
        return "AutoCloseableDisposable(disposed=" + isDisposed() + ", " + get() + ")";
    }
}
