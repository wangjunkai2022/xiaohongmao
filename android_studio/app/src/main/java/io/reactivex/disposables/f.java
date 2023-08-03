package io.reactivex.disposables;

import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ReferenceDisposable.java */
/* loaded from: classes3.dex */
abstract class f<T> extends AtomicReference<T> implements c {

    /* renamed from: a  reason: collision with root package name */
    private static final long f71088a = 6537757548749041217L;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(T t9) {
        super(io.reactivex.internal.functions.b.g(t9, "value is null"));
    }

    protected abstract void a(@m7.e T t9);

    @Override // io.reactivex.disposables.c
    public final void dispose() {
        T andSet;
        if (get() == null || (andSet = getAndSet(null)) == null) {
            return;
        }
        a(andSet);
    }

    @Override // io.reactivex.disposables.c
    public final boolean isDisposed() {
        return get() == null;
    }
}
