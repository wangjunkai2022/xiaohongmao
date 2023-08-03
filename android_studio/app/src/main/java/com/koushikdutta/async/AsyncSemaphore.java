package com.koushikdutta.async;

import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public class AsyncSemaphore {

    /* renamed from: a  reason: collision with root package name */
    Semaphore f44155a = new Semaphore(0);

    public void a() throws InterruptedException {
        ThreadQueue b10 = ThreadQueue.b(Thread.currentThread());
        AsyncSemaphore asyncSemaphore = b10.f44308a;
        b10.f44308a = this;
        Semaphore semaphore = b10.f44309b;
        try {
            if (this.f44155a.tryAcquire()) {
                return;
            }
            while (true) {
                Runnable remove = b10.remove();
                if (remove == null) {
                    semaphore.acquire(Math.max(1, semaphore.availablePermits()));
                    if (this.f44155a.tryAcquire()) {
                        return;
                    }
                } else {
                    remove.run();
                }
            }
        } finally {
            b10.f44308a = asyncSemaphore;
        }
    }

    public void b() {
        this.f44155a.release();
        ThreadQueue.c(this);
    }

    public boolean c(long j4, TimeUnit timeUnit) throws InterruptedException {
        long convert = TimeUnit.MILLISECONDS.convert(j4, timeUnit);
        ThreadQueue b10 = ThreadQueue.b(Thread.currentThread());
        AsyncSemaphore asyncSemaphore = b10.f44308a;
        b10.f44308a = this;
        Semaphore semaphore = b10.f44309b;
        try {
            if (this.f44155a.tryAcquire()) {
                return true;
            }
            long currentTimeMillis = System.currentTimeMillis();
            while (true) {
                Runnable remove = b10.remove();
                if (remove == null) {
                    if (!semaphore.tryAcquire(Math.max(1, semaphore.availablePermits()), convert, TimeUnit.MILLISECONDS)) {
                        return false;
                    }
                    if (this.f44155a.tryAcquire()) {
                        return true;
                    }
                    if (System.currentTimeMillis() - currentTimeMillis >= convert) {
                        return false;
                    }
                } else {
                    remove.run();
                }
            }
        } finally {
            b10.f44308a = asyncSemaphore;
        }
    }
}
