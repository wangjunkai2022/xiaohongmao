package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.core.s0;
import io.reactivex.rxjava3.core.y;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import java.util.concurrent.CountDownLatch;

/* compiled from: BlockingDisposableMultiObserver.java */
/* loaded from: classes4.dex */
public final class d<T> extends CountDownLatch implements y<T>, s0<T>, io.reactivex.rxjava3.core.d, io.reactivex.rxjava3.disposables.f {

    /* renamed from: a  reason: collision with root package name */
    T f76479a;

    /* renamed from: b  reason: collision with root package name */
    Throwable f76480b;

    /* renamed from: c  reason: collision with root package name */
    final SequentialDisposable f76481c;

    public d() {
        super(1);
        this.f76481c = new SequentialDisposable();
    }

    public void a(io.reactivex.rxjava3.core.d observer) {
        if (getCount() != 0) {
            try {
                io.reactivex.rxjava3.internal.util.c.b();
                await();
            } catch (InterruptedException e4) {
                dispose();
                observer.onError(e4);
                return;
            }
        }
        if (isDisposed()) {
            return;
        }
        Throwable th = this.f76480b;
        if (th != null) {
            observer.onError(th);
        } else {
            observer.onComplete();
        }
    }

    public void b(y<? super T> observer) {
        if (getCount() != 0) {
            try {
                io.reactivex.rxjava3.internal.util.c.b();
                await();
            } catch (InterruptedException e4) {
                dispose();
                observer.onError(e4);
                return;
            }
        }
        if (isDisposed()) {
            return;
        }
        Throwable th = this.f76480b;
        if (th != null) {
            observer.onError(th);
            return;
        }
        Object obj = (T) this.f76479a;
        if (obj == null) {
            observer.onComplete();
        } else {
            observer.onSuccess(obj);
        }
    }

    public void c(s0<? super T> observer) {
        if (getCount() != 0) {
            try {
                io.reactivex.rxjava3.internal.util.c.b();
                await();
            } catch (InterruptedException e4) {
                dispose();
                observer.onError(e4);
                return;
            }
        }
        if (isDisposed()) {
            return;
        }
        Throwable th = this.f76480b;
        if (th != null) {
            observer.onError(th);
        } else {
            observer.onSuccess((T) this.f76479a);
        }
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public void dispose() {
        this.f76481c.dispose();
        countDown();
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public boolean isDisposed() {
        return this.f76481c.isDisposed();
    }

    @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
    public void onComplete() {
        this.f76481c.lazySet(io.reactivex.rxjava3.disposables.e.a());
        countDown();
    }

    @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
    public void onError(@p7.e Throwable e4) {
        this.f76480b = e4;
        this.f76481c.lazySet(io.reactivex.rxjava3.disposables.e.a());
        countDown();
    }

    @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
    public void onSubscribe(@p7.e io.reactivex.rxjava3.disposables.f d4) {
        DisposableHelper.setOnce(this.f76481c, d4);
    }

    @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
    public void onSuccess(@p7.e T t9) {
        this.f76479a = t9;
        this.f76481c.lazySet(io.reactivex.rxjava3.disposables.e.a());
        countDown();
    }
}
