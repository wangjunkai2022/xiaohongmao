package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.core.s0;
import io.reactivex.rxjava3.core.y;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* compiled from: BlockingMultiObserver.java */
/* loaded from: classes4.dex */
public final class g<T> extends CountDownLatch implements s0<T>, io.reactivex.rxjava3.core.d, y<T> {

    /* renamed from: a  reason: collision with root package name */
    T f76482a;

    /* renamed from: b  reason: collision with root package name */
    Throwable f76483b;

    /* renamed from: c  reason: collision with root package name */
    io.reactivex.rxjava3.disposables.f f76484c;

    /* renamed from: d  reason: collision with root package name */
    volatile boolean f76485d;

    public g() {
        super(1);
    }

    public boolean a(long timeout, TimeUnit unit) {
        if (getCount() != 0) {
            try {
                io.reactivex.rxjava3.internal.util.c.b();
                if (!await(timeout, unit)) {
                    e();
                    return false;
                }
            } catch (InterruptedException e4) {
                e();
                throw io.reactivex.rxjava3.internal.util.g.i(e4);
            }
        }
        Throwable th = this.f76483b;
        if (th == null) {
            return true;
        }
        throw io.reactivex.rxjava3.internal.util.g.i(th);
    }

    public void b(q7.g<? super T> onSuccess, q7.g<? super Throwable> onError, q7.a onComplete) {
        try {
            if (getCount() != 0) {
                try {
                    io.reactivex.rxjava3.internal.util.c.b();
                    await();
                } catch (InterruptedException e4) {
                    e();
                    onError.accept(e4);
                    return;
                }
            }
            Throwable th = this.f76483b;
            if (th != null) {
                onError.accept(th);
                return;
            }
            Object obj = (T) this.f76482a;
            if (obj != null) {
                onSuccess.accept(obj);
            } else {
                onComplete.run();
            }
        } catch (Throwable th2) {
            io.reactivex.rxjava3.exceptions.a.b(th2);
            io.reactivex.rxjava3.plugins.a.Y(th2);
        }
    }

    public T c() {
        if (getCount() != 0) {
            try {
                io.reactivex.rxjava3.internal.util.c.b();
                await();
            } catch (InterruptedException e4) {
                e();
                throw io.reactivex.rxjava3.internal.util.g.i(e4);
            }
        }
        Throwable th = this.f76483b;
        if (th == null) {
            return this.f76482a;
        }
        throw io.reactivex.rxjava3.internal.util.g.i(th);
    }

    public T d(T defaultValue) {
        if (getCount() != 0) {
            try {
                io.reactivex.rxjava3.internal.util.c.b();
                await();
            } catch (InterruptedException e4) {
                e();
                throw io.reactivex.rxjava3.internal.util.g.i(e4);
            }
        }
        Throwable th = this.f76483b;
        if (th == null) {
            T t9 = this.f76482a;
            return t9 != null ? t9 : defaultValue;
        }
        throw io.reactivex.rxjava3.internal.util.g.i(th);
    }

    void e() {
        this.f76485d = true;
        io.reactivex.rxjava3.disposables.f fVar = this.f76484c;
        if (fVar != null) {
            fVar.dispose();
        }
    }

    @Override // io.reactivex.rxjava3.core.d
    public void onComplete() {
        countDown();
    }

    @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
    public void onError(Throwable e4) {
        this.f76483b = e4;
        countDown();
    }

    @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
    public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
        this.f76484c = d4;
        if (this.f76485d) {
            d4.dispose();
        }
    }

    @Override // io.reactivex.rxjava3.core.s0
    public void onSuccess(T value) {
        this.f76482a = value;
        countDown();
    }
}
