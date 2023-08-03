package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.core.n0;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.util.NotificationLite;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes4.dex */
public final class BlockingObserver<T> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements n0<T>, io.reactivex.rxjava3.disposables.f {
    public static final Object TERMINATED = new Object();

    /* renamed from: b  reason: collision with root package name */
    private static final long f76435b = -4875965440900746268L;

    /* renamed from: a  reason: collision with root package name */
    final Queue<Object> f76436a;

    public BlockingObserver(Queue<Object> queue) {
        this.f76436a = queue;
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public void dispose() {
        if (DisposableHelper.dispose(this)) {
            this.f76436a.offer(TERMINATED);
        }
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public boolean isDisposed() {
        return get() == DisposableHelper.DISPOSED;
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onComplete() {
        this.f76436a.offer(NotificationLite.complete());
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onError(Throwable t9) {
        this.f76436a.offer(NotificationLite.error(t9));
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onNext(T t9) {
        this.f76436a.offer(NotificationLite.next(t9));
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
        DisposableHelper.setOnce(this, d4);
    }
}
