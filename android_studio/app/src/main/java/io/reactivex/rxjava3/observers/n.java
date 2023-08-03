package io.reactivex.rxjava3.observers;

import io.reactivex.rxjava3.core.n0;
import io.reactivex.rxjava3.core.s0;
import io.reactivex.rxjava3.core.y;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: TestObserver.java */
/* loaded from: classes4.dex */
public class n<T> extends io.reactivex.rxjava3.observers.a<T, n<T>> implements n0<T>, io.reactivex.rxjava3.disposables.f, y<T>, s0<T>, io.reactivex.rxjava3.core.d {

    /* renamed from: i  reason: collision with root package name */
    private final n0<? super T> f81380i;

    /* renamed from: j  reason: collision with root package name */
    private final AtomicReference<io.reactivex.rxjava3.disposables.f> f81381j;

    /* compiled from: TestObserver.java */
    /* loaded from: classes4.dex */
    enum a implements n0<Object> {
        INSTANCE;

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(Object t9) {
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
        }
    }

    public n() {
        this(a.INSTANCE);
    }

    @p7.e
    public static <T> n<T> D() {
        return new n<>();
    }

    @p7.e
    public static <T> n<T> E(@p7.e n0<? super T> delegate) {
        return new n<>(delegate);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.reactivex.rxjava3.observers.a
    @p7.e
    /* renamed from: C */
    public final n<T> l() {
        if (this.f81381j.get() != null) {
            return this;
        }
        throw y("Not subscribed!");
    }

    public final boolean F() {
        return this.f81381j.get() != null;
    }

    @Override // io.reactivex.rxjava3.observers.a, io.reactivex.rxjava3.disposables.f
    public final void dispose() {
        DisposableHelper.dispose(this.f81381j);
    }

    @Override // io.reactivex.rxjava3.observers.a, io.reactivex.rxjava3.disposables.f
    public final boolean isDisposed() {
        return DisposableHelper.isDisposed(this.f81381j.get());
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onComplete() {
        if (!this.f81354f) {
            this.f81354f = true;
            if (this.f81381j.get() == null) {
                this.f81351c.add(new IllegalStateException("onSubscribe not called in proper order"));
            }
        }
        try {
            this.f81353e = Thread.currentThread();
            this.f81352d++;
            this.f81380i.onComplete();
        } finally {
            this.f81349a.countDown();
        }
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onError(@p7.e Throwable t9) {
        if (!this.f81354f) {
            this.f81354f = true;
            if (this.f81381j.get() == null) {
                this.f81351c.add(new IllegalStateException("onSubscribe not called in proper order"));
            }
        }
        try {
            this.f81353e = Thread.currentThread();
            if (t9 == null) {
                this.f81351c.add(new NullPointerException("onError received a null Throwable"));
            } else {
                this.f81351c.add(t9);
            }
            this.f81380i.onError(t9);
        } finally {
            this.f81349a.countDown();
        }
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onNext(@p7.e T t9) {
        if (!this.f81354f) {
            this.f81354f = true;
            if (this.f81381j.get() == null) {
                this.f81351c.add(new IllegalStateException("onSubscribe not called in proper order"));
            }
        }
        this.f81353e = Thread.currentThread();
        this.f81350b.add(t9);
        if (t9 == null) {
            this.f81351c.add(new NullPointerException("onNext received a null value"));
        }
        this.f81380i.onNext(t9);
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onSubscribe(@p7.e io.reactivex.rxjava3.disposables.f d4) {
        this.f81353e = Thread.currentThread();
        if (d4 == null) {
            this.f81351c.add(new NullPointerException("onSubscribe received a null Subscription"));
        } else if (!this.f81381j.compareAndSet(null, d4)) {
            d4.dispose();
            if (this.f81381j.get() != DisposableHelper.DISPOSED) {
                List<Throwable> list = this.f81351c;
                list.add(new IllegalStateException("onSubscribe received multiple subscriptions: " + d4));
            }
        } else {
            this.f81380i.onSubscribe(d4);
        }
    }

    @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
    public void onSuccess(@p7.e T value) {
        onNext(value);
        onComplete();
    }

    public n(@p7.e n0<? super T> downstream) {
        this.f81381j = new AtomicReference<>();
        this.f81380i = downstream;
    }
}
