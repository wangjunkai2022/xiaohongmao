package io.reactivex.rxjava3.disposables;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ReferenceDisposable.java */
/* loaded from: classes4.dex */
abstract class i<T> extends AtomicReference<T> implements f {

    /* renamed from: a  reason: collision with root package name */
    private static final long f76157a = 6537757548749041217L;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(T value) {
        super(value);
        Objects.requireNonNull(value, "value is null");
    }

    protected abstract void a(@p7.e T value);

    @Override // io.reactivex.rxjava3.disposables.f
    public final void dispose() {
        T andSet;
        if (get() == null || (andSet = getAndSet(null)) == null) {
            return;
        }
        a(andSet);
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public final boolean isDisposed() {
        return get() == null;
    }
}
