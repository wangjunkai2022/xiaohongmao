package io.reactivex.internal.observers;

import io.reactivex.l0;
import io.reactivex.t;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* compiled from: BlockingMultiObserver.java */
/* loaded from: classes3.dex */
public final class f<T> extends CountDownLatch implements l0<T>, io.reactivex.d, t<T> {

    /* renamed from: a  reason: collision with root package name */
    T f71220a;

    /* renamed from: b  reason: collision with root package name */
    Throwable f71221b;

    /* renamed from: c  reason: collision with root package name */
    io.reactivex.disposables.c f71222c;

    /* renamed from: d  reason: collision with root package name */
    volatile boolean f71223d;

    public f() {
        super(1);
    }

    public boolean a(long j4, TimeUnit timeUnit) {
        if (getCount() != 0) {
            try {
                io.reactivex.internal.util.c.b();
                if (!await(j4, timeUnit)) {
                    f();
                    return false;
                }
            } catch (InterruptedException e4) {
                f();
                throw io.reactivex.internal.util.g.f(e4);
            }
        }
        Throwable th = this.f71221b;
        if (th == null) {
            return true;
        }
        throw io.reactivex.internal.util.g.f(th);
    }

    public T b() {
        if (getCount() != 0) {
            try {
                io.reactivex.internal.util.c.b();
                await();
            } catch (InterruptedException e4) {
                f();
                throw io.reactivex.internal.util.g.f(e4);
            }
        }
        Throwable th = this.f71221b;
        if (th == null) {
            return this.f71220a;
        }
        throw io.reactivex.internal.util.g.f(th);
    }

    public T c(T t9) {
        if (getCount() != 0) {
            try {
                io.reactivex.internal.util.c.b();
                await();
            } catch (InterruptedException e4) {
                f();
                throw io.reactivex.internal.util.g.f(e4);
            }
        }
        Throwable th = this.f71221b;
        if (th == null) {
            T t10 = this.f71220a;
            return t10 != null ? t10 : t9;
        }
        throw io.reactivex.internal.util.g.f(th);
    }

    public Throwable d() {
        if (getCount() != 0) {
            try {
                io.reactivex.internal.util.c.b();
                await();
            } catch (InterruptedException e4) {
                f();
                return e4;
            }
        }
        return this.f71221b;
    }

    public Throwable e(long j4, TimeUnit timeUnit) {
        if (getCount() != 0) {
            try {
                io.reactivex.internal.util.c.b();
                if (!await(j4, timeUnit)) {
                    f();
                    throw io.reactivex.internal.util.g.f(new TimeoutException(io.reactivex.internal.util.g.e(j4, timeUnit)));
                }
            } catch (InterruptedException e4) {
                f();
                throw io.reactivex.internal.util.g.f(e4);
            }
        }
        return this.f71221b;
    }

    void f() {
        this.f71223d = true;
        io.reactivex.disposables.c cVar = this.f71222c;
        if (cVar != null) {
            cVar.dispose();
        }
    }

    @Override // io.reactivex.d
    public void onComplete() {
        countDown();
    }

    @Override // io.reactivex.l0
    public void onError(Throwable th) {
        this.f71221b = th;
        countDown();
    }

    @Override // io.reactivex.l0
    public void onSubscribe(io.reactivex.disposables.c cVar) {
        this.f71222c = cVar;
        if (this.f71223d) {
            cVar.dispose();
        }
    }

    @Override // io.reactivex.l0
    public void onSuccess(T t9) {
        this.f71220a = t9;
        countDown();
    }
}
