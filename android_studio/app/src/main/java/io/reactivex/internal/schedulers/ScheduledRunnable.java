package io.reactivex.internal.schedulers;

import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* loaded from: classes4.dex */
public final class ScheduledRunnable extends AtomicReferenceArray<Object> implements Runnable, Callable<Object>, io.reactivex.disposables.c {

    /* renamed from: b  reason: collision with root package name */
    private static final long f75619b = -6120223772001106981L;

    /* renamed from: c  reason: collision with root package name */
    static final Object f75620c = new Object();

    /* renamed from: d  reason: collision with root package name */
    static final Object f75621d = new Object();

    /* renamed from: e  reason: collision with root package name */
    static final Object f75622e = new Object();

    /* renamed from: f  reason: collision with root package name */
    static final Object f75623f = new Object();

    /* renamed from: g  reason: collision with root package name */
    static final int f75624g = 0;

    /* renamed from: h  reason: collision with root package name */
    static final int f75625h = 1;

    /* renamed from: i  reason: collision with root package name */
    static final int f75626i = 2;

    /* renamed from: a  reason: collision with root package name */
    final Runnable f75627a;

    public ScheduledRunnable(Runnable runnable, io.reactivex.internal.disposables.a aVar) {
        super(3);
        this.f75627a = runnable;
        lazySet(0, aVar);
    }

    @Override // java.util.concurrent.Callable
    public Object call() {
        run();
        return null;
    }

    @Override // io.reactivex.disposables.c
    public void dispose() {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        while (true) {
            Object obj5 = get(1);
            if (obj5 == f75623f || obj5 == (obj3 = f75621d) || obj5 == (obj4 = f75622e)) {
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
            if (obj == f75623f || obj == (obj2 = f75620c) || obj == null) {
                return;
            }
        } while (!compareAndSet(0, obj, obj2));
        ((io.reactivex.internal.disposables.a) obj).c(this);
    }

    @Override // io.reactivex.disposables.c
    public boolean isDisposed() {
        Object obj = get(0);
        return obj == f75620c || obj == f75623f;
    }

    @Override // java.lang.Runnable
    public void run() {
        Object obj;
        Object obj2;
        Object obj3;
        boolean compareAndSet;
        Object obj4;
        Object obj5;
        lazySet(2, Thread.currentThread());
        try {
            this.f75627a.run();
        } finally {
            try {
                lazySet(2, null);
                obj4 = get(0);
                if (obj4 != f75620c) {
                    ((io.reactivex.internal.disposables.a) obj4).c(this);
                }
                do {
                    obj5 = get(1);
                    if (obj5 != f75621d) {
                        return;
                    }
                    return;
                } while (!compareAndSet(1, obj5, f75623f));
            } catch (Throwable th) {
                do {
                    if (obj == obj2) {
                        break;
                    } else if (obj == obj3) {
                        break;
                    }
                } while (!compareAndSet);
            }
        }
        lazySet(2, null);
        obj4 = get(0);
        if (obj4 != f75620c && compareAndSet(0, obj4, f75623f) && obj4 != null) {
            ((io.reactivex.internal.disposables.a) obj4).c(this);
        }
        do {
            obj5 = get(1);
            if (obj5 != f75621d || obj5 == f75622e) {
                return;
            }
        } while (!compareAndSet(1, obj5, f75623f));
    }

    public void setFuture(Future<?> future) {
        Object obj;
        do {
            obj = get(1);
            if (obj == f75623f) {
                return;
            }
            if (obj == f75621d) {
                future.cancel(false);
                return;
            } else if (obj == f75622e) {
                future.cancel(true);
                return;
            }
        } while (!compareAndSet(1, obj, future));
    }
}
