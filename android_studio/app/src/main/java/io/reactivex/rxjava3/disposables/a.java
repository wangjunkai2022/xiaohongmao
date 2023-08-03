package io.reactivex.rxjava3.disposables;

/* compiled from: ActionDisposable.java */
/* loaded from: classes4.dex */
final class a extends i<q7.a> {

    /* renamed from: b  reason: collision with root package name */
    private static final long f76150b = -8219729196779211169L;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(q7.a value) {
        super(value);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.reactivex.rxjava3.disposables.i
    /* renamed from: b */
    public void a(@p7.e q7.a value) {
        try {
            value.run();
        } catch (Throwable th) {
            throw io.reactivex.rxjava3.internal.util.g.i(th);
        }
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public String toString() {
        return "ActionDisposable(disposed=" + isDisposed() + ", " + get() + ")";
    }
}
