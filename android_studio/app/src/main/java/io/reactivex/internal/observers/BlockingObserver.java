package io.reactivex.internal.observers;

import io.reactivex.g0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.NotificationLite;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class BlockingObserver<T> extends AtomicReference<io.reactivex.disposables.c> implements g0<T>, io.reactivex.disposables.c {
    public static final Object TERMINATED = new Object();

    /* renamed from: b  reason: collision with root package name */
    private static final long f71176b = -4875965440900746268L;

    /* renamed from: a  reason: collision with root package name */
    final Queue<Object> f71177a;

    public BlockingObserver(Queue<Object> queue) {
        this.f71177a = queue;
    }

    @Override // io.reactivex.disposables.c
    public void dispose() {
        if (DisposableHelper.dispose(this)) {
            this.f71177a.offer(TERMINATED);
        }
    }

    @Override // io.reactivex.disposables.c
    public boolean isDisposed() {
        return get() == DisposableHelper.DISPOSED;
    }

    @Override // io.reactivex.g0
    public void onComplete() {
        this.f71177a.offer(NotificationLite.complete());
    }

    @Override // io.reactivex.g0
    public void onError(Throwable th) {
        this.f71177a.offer(NotificationLite.error(th));
    }

    @Override // io.reactivex.g0
    public void onNext(T t9) {
        this.f71177a.offer(NotificationLite.next(t9));
    }

    @Override // io.reactivex.g0
    public void onSubscribe(io.reactivex.disposables.c cVar) {
        DisposableHelper.setOnce(this, cVar);
    }
}
