package com.google.common.util.concurrent;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.locks.Condition;

/* compiled from: Uninterruptibles.java */
@h3.b(emulated = true)
/* loaded from: classes2.dex */
public final class n1 {
    private n1() {
    }

    @h3.c
    public static void a(CountDownLatch countDownLatch) {
        boolean z9 = false;
        while (true) {
            try {
                countDownLatch.await();
                break;
            } catch (InterruptedException unused) {
                z9 = true;
            } catch (Throwable th) {
                if (z9) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z9) {
            Thread.currentThread().interrupt();
        }
    }

    @CanIgnoreReturnValue
    @h3.c
    public static boolean b(CountDownLatch countDownLatch, long j4, TimeUnit timeUnit) {
        boolean z9 = false;
        try {
            long nanos = timeUnit.toNanos(j4);
            while (true) {
                try {
                    break;
                } catch (InterruptedException unused) {
                    z9 = true;
                    nanos = (System.nanoTime() + nanos) - System.nanoTime();
                }
            }
            return countDownLatch.await(nanos, TimeUnit.NANOSECONDS);
        } finally {
            if (z9) {
                Thread.currentThread().interrupt();
            }
        }
    }

    @h3.c
    public static boolean c(Condition condition, long j4, TimeUnit timeUnit) {
        boolean z9 = false;
        try {
            long nanos = timeUnit.toNanos(j4);
            while (true) {
                try {
                    break;
                } catch (InterruptedException unused) {
                    z9 = true;
                    nanos = (System.nanoTime() + nanos) - System.nanoTime();
                }
            }
            return condition.await(nanos, TimeUnit.NANOSECONDS);
        } finally {
            if (z9) {
                Thread.currentThread().interrupt();
            }
        }
    }

    @CanIgnoreReturnValue
    public static <V> V d(Future<V> future) throws ExecutionException {
        V v9;
        boolean z9 = false;
        while (true) {
            try {
                v9 = future.get();
                break;
            } catch (InterruptedException unused) {
                z9 = true;
            } catch (Throwable th) {
                if (z9) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z9) {
            Thread.currentThread().interrupt();
        }
        return v9;
    }

    @CanIgnoreReturnValue
    @h3.c
    public static <V> V e(Future<V> future, long j4, TimeUnit timeUnit) throws ExecutionException, TimeoutException {
        boolean z9 = false;
        try {
            long nanos = timeUnit.toNanos(j4);
            while (true) {
                try {
                    break;
                } catch (InterruptedException unused) {
                    z9 = true;
                    nanos = (System.nanoTime() + nanos) - System.nanoTime();
                }
            }
            return future.get(nanos, TimeUnit.NANOSECONDS);
        } finally {
            if (z9) {
                Thread.currentThread().interrupt();
            }
        }
    }

    @h3.c
    public static void f(Thread thread) {
        boolean z9 = false;
        while (true) {
            try {
                thread.join();
                break;
            } catch (InterruptedException unused) {
                z9 = true;
            } catch (Throwable th) {
                if (z9) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z9) {
            Thread.currentThread().interrupt();
        }
    }

    @h3.c
    public static void g(Thread thread, long j4, TimeUnit timeUnit) {
        com.google.common.base.a0.E(thread);
        boolean z9 = false;
        try {
            long nanos = timeUnit.toNanos(j4);
            long nanoTime = System.nanoTime() + nanos;
            while (true) {
                try {
                    TimeUnit.NANOSECONDS.timedJoin(thread, nanos);
                    break;
                } catch (InterruptedException unused) {
                    z9 = true;
                    nanos = nanoTime - System.nanoTime();
                }
            }
        } finally {
            if (z9) {
                Thread.currentThread().interrupt();
            }
        }
    }

    @h3.c
    public static <E> void h(BlockingQueue<E> blockingQueue, E e4) {
        boolean z9 = false;
        while (true) {
            try {
                blockingQueue.put(e4);
                break;
            } catch (InterruptedException unused) {
                z9 = true;
            } catch (Throwable th) {
                if (z9) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z9) {
            Thread.currentThread().interrupt();
        }
    }

    @h3.c
    public static void i(long j4, TimeUnit timeUnit) {
        boolean z9 = false;
        try {
            long nanos = timeUnit.toNanos(j4);
            long nanoTime = System.nanoTime() + nanos;
            while (true) {
                try {
                    TimeUnit.NANOSECONDS.sleep(nanos);
                    break;
                } catch (InterruptedException unused) {
                    z9 = true;
                    nanos = nanoTime - System.nanoTime();
                }
            }
        } finally {
            if (z9) {
                Thread.currentThread().interrupt();
            }
        }
    }

    @h3.c
    public static <E> E j(BlockingQueue<E> blockingQueue) {
        E take;
        boolean z9 = false;
        while (true) {
            try {
                take = blockingQueue.take();
                break;
            } catch (InterruptedException unused) {
                z9 = true;
            } catch (Throwable th) {
                if (z9) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z9) {
            Thread.currentThread().interrupt();
        }
        return take;
    }

    @h3.c
    public static boolean k(Semaphore semaphore, int i4, long j4, TimeUnit timeUnit) {
        boolean z9 = false;
        try {
            long nanos = timeUnit.toNanos(j4);
            while (true) {
                try {
                    break;
                } catch (InterruptedException unused) {
                    z9 = true;
                    nanos = (System.nanoTime() + nanos) - System.nanoTime();
                }
            }
            return semaphore.tryAcquire(i4, nanos, TimeUnit.NANOSECONDS);
        } finally {
            if (z9) {
                Thread.currentThread().interrupt();
            }
        }
    }

    @h3.c
    public static boolean l(Semaphore semaphore, long j4, TimeUnit timeUnit) {
        return k(semaphore, 1, j4, timeUnit);
    }
}
