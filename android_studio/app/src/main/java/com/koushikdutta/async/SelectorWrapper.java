package com.koushikdutta.async;

import java.io.Closeable;
import java.io.IOException;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.util.Set;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class SelectorWrapper implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    private Selector f44302a;

    /* renamed from: b  reason: collision with root package name */
    public AtomicBoolean f44303b = new AtomicBoolean(false);

    /* renamed from: c  reason: collision with root package name */
    Semaphore f44304c = new Semaphore(0);

    public SelectorWrapper(Selector selector) {
        this.f44302a = selector;
    }

    public Selector a() {
        return this.f44302a;
    }

    public Set<SelectionKey> b() {
        return this.f44302a.keys();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f44302a.close();
    }

    public void d() throws IOException {
        h(0L);
    }

    public void h(long j4) throws IOException {
        try {
            this.f44304c.drainPermits();
            this.f44302a.select(j4);
        } finally {
            this.f44304c.release(Integer.MAX_VALUE);
        }
    }

    public int i() throws IOException {
        return this.f44302a.selectNow();
    }

    public boolean isOpen() {
        return this.f44302a.isOpen();
    }

    public Set<SelectionKey> k() {
        return this.f44302a.selectedKeys();
    }

    public boolean p() {
        for (int i4 = 0; i4 < 100; i4++) {
            try {
                this.f44304c.tryAcquire(10L, TimeUnit.MILLISECONDS);
            } catch (InterruptedException unused) {
                return true;
            }
        }
        return false;
    }

    public void q() {
        boolean z9 = !this.f44304c.tryAcquire();
        this.f44302a.wakeup();
        if (z9) {
            return;
        }
        if (this.f44303b.getAndSet(true)) {
            this.f44302a.wakeup();
            return;
        }
        try {
            p();
            this.f44302a.wakeup();
        } finally {
            this.f44303b.set(false);
        }
    }
}
