package io.reactivex.internal.util;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.g0;
import io.reactivex.internal.queue.SpscArrayQueue;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: QueueDrainHelper.java */
/* loaded from: classes4.dex */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    static final long f75930a = Long.MIN_VALUE;

    /* renamed from: b  reason: collision with root package name */
    static final long f75931b = Long.MAX_VALUE;

    private o() {
        throw new IllegalStateException("No instances!");
    }

    public static <T, U> boolean a(boolean z9, boolean z10, g0<?> g0Var, boolean z11, o7.o<?> oVar, io.reactivex.disposables.c cVar, k<T, U> kVar) {
        if (kVar.d()) {
            oVar.clear();
            cVar.dispose();
            return true;
        } else if (z9) {
            if (z11) {
                if (z10) {
                    if (cVar != null) {
                        cVar.dispose();
                    }
                    Throwable f10 = kVar.f();
                    if (f10 != null) {
                        g0Var.onError(f10);
                    } else {
                        g0Var.onComplete();
                    }
                    return true;
                }
                return false;
            }
            Throwable f11 = kVar.f();
            if (f11 != null) {
                oVar.clear();
                if (cVar != null) {
                    cVar.dispose();
                }
                g0Var.onError(f11);
                return true;
            } else if (z10) {
                if (cVar != null) {
                    cVar.dispose();
                }
                g0Var.onComplete();
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
    }

    public static <T, U> boolean b(boolean z9, boolean z10, org.reactivestreams.d<?> dVar, boolean z11, o7.o<?> oVar, n<T, U> nVar) {
        if (nVar.d()) {
            oVar.clear();
            return true;
        } else if (z9) {
            if (z11) {
                if (z10) {
                    Throwable f10 = nVar.f();
                    if (f10 != null) {
                        dVar.onError(f10);
                    } else {
                        dVar.onComplete();
                    }
                    return true;
                }
                return false;
            }
            Throwable f11 = nVar.f();
            if (f11 != null) {
                oVar.clear();
                dVar.onError(f11);
                return true;
            } else if (z10) {
                dVar.onComplete();
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
    }

    public static <T> o7.o<T> c(int i4) {
        if (i4 < 0) {
            return new io.reactivex.internal.queue.b(-i4);
        }
        return new SpscArrayQueue(i4);
    }

    public static <T, U> void d(o7.n<T> nVar, g0<? super U> g0Var, boolean z9, io.reactivex.disposables.c cVar, k<T, U> kVar) {
        int i4 = 1;
        while (!a(kVar.c(), nVar.isEmpty(), g0Var, z9, nVar, cVar, kVar)) {
            while (true) {
                boolean c10 = kVar.c();
                T poll = nVar.poll();
                boolean z10 = poll == null;
                if (a(c10, z10, g0Var, z9, nVar, cVar, kVar)) {
                    return;
                }
                if (z10) {
                    i4 = kVar.a(-i4);
                    if (i4 == 0) {
                        return;
                    }
                } else {
                    kVar.g(g0Var, poll);
                }
            }
        }
    }

    public static <T, U> void e(o7.n<T> nVar, org.reactivestreams.d<? super U> dVar, boolean z9, io.reactivex.disposables.c cVar, n<T, U> nVar2) {
        int i4 = 1;
        while (true) {
            boolean c10 = nVar2.c();
            T poll = nVar.poll();
            boolean z10 = poll == null;
            if (b(c10, z10, dVar, z9, nVar, nVar2)) {
                if (cVar != null) {
                    cVar.dispose();
                    return;
                }
                return;
            } else if (z10) {
                i4 = nVar2.a(-i4);
                if (i4 == 0) {
                    return;
                }
            } else {
                long e4 = nVar2.e();
                if (e4 != 0) {
                    if (nVar2.g(dVar, poll) && e4 != Long.MAX_VALUE) {
                        nVar2.i(1L);
                    }
                } else {
                    nVar.clear();
                    if (cVar != null) {
                        cVar.dispose();
                    }
                    dVar.onError(new MissingBackpressureException("Could not emit value due to lack of requests."));
                    return;
                }
            }
        }
    }

    static boolean f(n7.e eVar) {
        try {
            return eVar.a();
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            return true;
        }
    }

    public static <T> void g(org.reactivestreams.d<? super T> dVar, Queue<T> queue, AtomicLong atomicLong, n7.e eVar) {
        long j4;
        long j10;
        if (queue.isEmpty()) {
            dVar.onComplete();
        } else if (h(atomicLong.get(), dVar, queue, atomicLong, eVar)) {
        } else {
            do {
                j4 = atomicLong.get();
                if ((j4 & Long.MIN_VALUE) != 0) {
                    return;
                }
                j10 = j4 | Long.MIN_VALUE;
            } while (!atomicLong.compareAndSet(j4, j10));
            if (j4 != 0) {
                h(j10, dVar, queue, atomicLong, eVar);
            }
        }
    }

    static <T> boolean h(long j4, org.reactivestreams.d<? super T> dVar, Queue<T> queue, AtomicLong atomicLong, n7.e eVar) {
        long j10 = j4 & Long.MIN_VALUE;
        while (true) {
            if (j10 != j4) {
                if (f(eVar)) {
                    return true;
                }
                Object obj = (T) queue.poll();
                if (obj == null) {
                    dVar.onComplete();
                    return true;
                }
                dVar.onNext(obj);
                j10++;
            } else if (f(eVar)) {
                return true;
            } else {
                if (queue.isEmpty()) {
                    dVar.onComplete();
                    return true;
                }
                j4 = atomicLong.get();
                if (j4 == j10) {
                    long addAndGet = atomicLong.addAndGet(-(j10 & Long.MAX_VALUE));
                    if ((Long.MAX_VALUE & addAndGet) == 0) {
                        return false;
                    }
                    j4 = addAndGet;
                    j10 = addAndGet & Long.MIN_VALUE;
                } else {
                    continue;
                }
            }
        }
    }

    public static <T> boolean i(long j4, org.reactivestreams.d<? super T> dVar, Queue<T> queue, AtomicLong atomicLong, n7.e eVar) {
        long j10;
        do {
            j10 = atomicLong.get();
        } while (!atomicLong.compareAndSet(j10, b.c(Long.MAX_VALUE & j10, j4) | (j10 & Long.MIN_VALUE)));
        if (j10 == Long.MIN_VALUE) {
            h(j4 | Long.MIN_VALUE, dVar, queue, atomicLong, eVar);
            return true;
        }
        return false;
    }

    public static void j(org.reactivestreams.e eVar, int i4) {
        eVar.request(i4 < 0 ? Long.MAX_VALUE : i4);
    }
}
