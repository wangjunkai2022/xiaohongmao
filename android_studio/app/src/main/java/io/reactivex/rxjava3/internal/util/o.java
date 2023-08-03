package io.reactivex.rxjava3.internal.util;

import io.reactivex.rxjava3.core.n0;
import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.queue.SpscArrayQueue;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: QueueDrainHelper.java */
/* loaded from: classes4.dex */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    static final long f81345a = Long.MIN_VALUE;

    /* renamed from: b  reason: collision with root package name */
    static final long f81346b = Long.MAX_VALUE;

    private o() {
        throw new IllegalStateException("No instances!");
    }

    public static <T, U> boolean a(boolean d4, boolean empty, n0<?> observer, boolean delayError, io.reactivex.rxjava3.internal.fuseable.q<?> q9, io.reactivex.rxjava3.disposables.f disposable, k<T, U> qd) {
        if (qd.d()) {
            q9.clear();
            disposable.dispose();
            return true;
        } else if (d4) {
            if (delayError) {
                if (empty) {
                    if (disposable != null) {
                        disposable.dispose();
                    }
                    Throwable f10 = qd.f();
                    if (f10 != null) {
                        observer.onError(f10);
                    } else {
                        observer.onComplete();
                    }
                    return true;
                }
                return false;
            }
            Throwable f11 = qd.f();
            if (f11 != null) {
                q9.clear();
                if (disposable != null) {
                    disposable.dispose();
                }
                observer.onError(f11);
                return true;
            } else if (empty) {
                if (disposable != null) {
                    disposable.dispose();
                }
                observer.onComplete();
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
    }

    public static <T, U> boolean b(boolean d4, boolean empty, org.reactivestreams.d<?> s9, boolean delayError, io.reactivex.rxjava3.internal.fuseable.q<?> q9, n<T, U> qd) {
        if (qd.d()) {
            q9.clear();
            return true;
        } else if (d4) {
            if (delayError) {
                if (empty) {
                    Throwable f10 = qd.f();
                    if (f10 != null) {
                        s9.onError(f10);
                    } else {
                        s9.onComplete();
                    }
                    return true;
                }
                return false;
            }
            Throwable f11 = qd.f();
            if (f11 != null) {
                q9.clear();
                s9.onError(f11);
                return true;
            } else if (empty) {
                s9.onComplete();
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
    }

    public static <T> io.reactivex.rxjava3.internal.fuseable.q<T> c(int capacityHint) {
        if (capacityHint < 0) {
            return new io.reactivex.rxjava3.internal.queue.b(-capacityHint);
        }
        return new SpscArrayQueue(capacityHint);
    }

    public static <T, U> void d(io.reactivex.rxjava3.internal.fuseable.p<T> q9, n0<? super U> a10, boolean delayError, io.reactivex.rxjava3.disposables.f dispose, k<T, U> qd) {
        int i4 = 1;
        while (!a(qd.c(), q9.isEmpty(), a10, delayError, q9, dispose, qd)) {
            while (true) {
                boolean c10 = qd.c();
                T poll = q9.poll();
                boolean z9 = poll == null;
                if (a(c10, z9, a10, delayError, q9, dispose, qd)) {
                    return;
                }
                if (z9) {
                    i4 = qd.a(-i4);
                    if (i4 == 0) {
                        return;
                    }
                } else {
                    qd.e(a10, poll);
                }
            }
        }
    }

    public static <T, U> void e(io.reactivex.rxjava3.internal.fuseable.p<T> q9, org.reactivestreams.d<? super U> a10, boolean delayError, io.reactivex.rxjava3.disposables.f dispose, n<T, U> qd) {
        int i4 = 1;
        while (true) {
            boolean c10 = qd.c();
            T poll = q9.poll();
            boolean z9 = poll == null;
            if (b(c10, z9, a10, delayError, q9, qd)) {
                if (dispose != null) {
                    dispose.dispose();
                    return;
                }
                return;
            } else if (z9) {
                i4 = qd.a(-i4);
                if (i4 == 0) {
                    return;
                }
            } else {
                long e4 = qd.e();
                if (e4 != 0) {
                    if (qd.g(a10, poll) && e4 != Long.MAX_VALUE) {
                        qd.i(1L);
                    }
                } else {
                    q9.clear();
                    if (dispose != null) {
                        dispose.dispose();
                    }
                    a10.onError(new MissingBackpressureException("Could not emit value due to lack of requests."));
                    return;
                }
            }
        }
    }

    static boolean f(q7.e cancelled) {
        try {
            return cancelled.a();
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            return true;
        }
    }

    public static <T> void g(org.reactivestreams.d<? super T> actual, Queue<T> queue, AtomicLong state, q7.e isCancelled) {
        long j4;
        long j10;
        if (queue.isEmpty()) {
            actual.onComplete();
        } else if (h(state.get(), actual, queue, state, isCancelled)) {
        } else {
            do {
                j4 = state.get();
                if ((j4 & Long.MIN_VALUE) != 0) {
                    return;
                }
                j10 = j4 | Long.MIN_VALUE;
            } while (!state.compareAndSet(j4, j10));
            if (j4 != 0) {
                h(j10, actual, queue, state, isCancelled);
            }
        }
    }

    static <T> boolean h(long n9, org.reactivestreams.d<? super T> actual, Queue<T> queue, AtomicLong state, q7.e isCancelled) {
        long j4 = n9 & Long.MIN_VALUE;
        while (true) {
            if (j4 != n9) {
                if (f(isCancelled)) {
                    return true;
                }
                Object obj = (T) queue.poll();
                if (obj == null) {
                    actual.onComplete();
                    return true;
                }
                actual.onNext(obj);
                j4++;
            } else if (f(isCancelled)) {
                return true;
            } else {
                if (queue.isEmpty()) {
                    actual.onComplete();
                    return true;
                }
                n9 = state.get();
                if (n9 == j4) {
                    long addAndGet = state.addAndGet(-(j4 & Long.MAX_VALUE));
                    if ((Long.MAX_VALUE & addAndGet) == 0) {
                        return false;
                    }
                    n9 = addAndGet;
                    j4 = addAndGet & Long.MIN_VALUE;
                } else {
                    continue;
                }
            }
        }
    }

    public static <T> boolean i(long n9, org.reactivestreams.d<? super T> actual, Queue<T> queue, AtomicLong state, q7.e isCancelled) {
        long j4;
        do {
            j4 = state.get();
        } while (!state.compareAndSet(j4, b.c(Long.MAX_VALUE & j4, n9) | (j4 & Long.MIN_VALUE)));
        if (j4 == Long.MIN_VALUE) {
            h(n9 | Long.MIN_VALUE, actual, queue, state, isCancelled);
            return true;
        }
        return false;
    }

    public static void j(org.reactivestreams.e s9, int prefetch) {
        s9.request(prefetch < 0 ? Long.MAX_VALUE : prefetch);
    }
}
