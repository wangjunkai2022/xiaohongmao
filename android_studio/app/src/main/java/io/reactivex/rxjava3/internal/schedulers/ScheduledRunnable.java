package io.reactivex.rxjava3.internal.schedulers;

import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* loaded from: classes4.dex */
public final class ScheduledRunnable extends AtomicReferenceArray<Object> implements Runnable, Callable<Object>, io.reactivex.rxjava3.disposables.f {

    /* renamed from: b  reason: collision with root package name */
    private static final long f81034b = -6120223772001106981L;

    /* renamed from: c  reason: collision with root package name */
    static final Object f81035c = new Object();

    /* renamed from: d  reason: collision with root package name */
    static final Object f81036d = new Object();

    /* renamed from: e  reason: collision with root package name */
    static final Object f81037e = new Object();

    /* renamed from: f  reason: collision with root package name */
    static final Object f81038f = new Object();

    /* renamed from: g  reason: collision with root package name */
    static final int f81039g = 0;

    /* renamed from: h  reason: collision with root package name */
    static final int f81040h = 1;

    /* renamed from: i  reason: collision with root package name */
    static final int f81041i = 2;

    /* renamed from: a  reason: collision with root package name */
    final Runnable f81042a;

    public ScheduledRunnable(Runnable actual, io.reactivex.rxjava3.disposables.g parent) {
        super(3);
        this.f81042a = actual;
        lazySet(0, parent);
    }

    @Override // java.util.concurrent.Callable
    public Object call() {
        run();
        return null;
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public void dispose() {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        while (true) {
            Object obj5 = get(1);
            if (obj5 == f81038f || obj5 == (obj3 = f81036d) || obj5 == (obj4 = f81037e)) {
                break;
            }
            boolean z9 = get(2) != Thread.currentThread();
            if (z9) {
                obj3 = obj4;
            }
            if (compareAndSet(1, obj5, obj3)) {
                if (obj5 != null) {
                    ((Future) obj5).cancel(z9);
                }
            }
        }
        do {
            obj = get(0);
            if (obj == f81038f || obj == (obj2 = f81035c) || obj == null) {
                return;
            }
        } while (!compareAndSet(0, obj, obj2));
        ((io.reactivex.rxjava3.disposables.g) obj).c(this);
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public boolean isDisposed() {
        Object obj = get(0);
        return obj == f81035c || obj == f81038f;
    }

    @Override // java.lang.Runnable
    public void run() {
        Object obj;
        Object obj2;
        lazySet(2, Thread.currentThread());
        try {
            this.f81042a.run();
            lazySet(2, null);
            Object obj3 = get(0);
            if (obj3 != f81035c && compareAndSet(0, obj3, f81038f) && obj3 != null) {
                ((io.reactivex.rxjava3.disposables.g) obj3).c(this);
            }
            do {
                obj2 = get(1);
                if (obj2 == f81036d || obj2 == f81037e) {
                    return;
                }
            } while (!compareAndSet(1, obj2, f81038f));
        } catch (Throwable th) {
            try {
                io.reactivex.rxjava3.plugins.a.Y(th);
                throw th;
            } catch (Throwable th2) {
                lazySet(2, null);
                Object obj4 = get(0);
                if (obj4 != f81035c && compareAndSet(0, obj4, f81038f) && obj4 != null) {
                    ((io.reactivex.rxjava3.disposables.g) obj4).c(this);
                }
                do {
                    obj = get(1);
                    if (obj == f81036d || obj == f81037e) {
                        break;
                    }
                } while (!compareAndSet(1, obj, f81038f));
                throw th2;
            }
        }
    }

    public void setFuture(Future<?> f10) {
        Object obj;
        do {
            obj = get(1);
            if (obj == f81038f) {
                return;
            }
            if (obj == f81036d) {
                f10.cancel(false);
                return;
            } else if (obj == f81037e) {
                f10.cancel(true);
                return;
            }
        } while (!compareAndSet(1, obj, f10));
    }
}
