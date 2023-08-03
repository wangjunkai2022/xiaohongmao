package com.google.android.exoplayer2.util;

import androidx.annotation.Nullable;
import java.lang.Exception;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* compiled from: RunnableFutureTask.java */
/* loaded from: classes2.dex */
public abstract class l0<R, E extends Exception> implements RunnableFuture<R> {

    /* renamed from: a  reason: collision with root package name */
    private final g f27578a = new g();

    /* renamed from: b  reason: collision with root package name */
    private final g f27579b = new g();

    /* renamed from: c  reason: collision with root package name */
    private final Object f27580c = new Object();
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private Exception f27581d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private R f27582e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private Thread f27583f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f27584g;

    @w0
    private R f() throws ExecutionException {
        if (!this.f27584g) {
            if (this.f27581d == null) {
                return this.f27582e;
            }
            throw new ExecutionException(this.f27581d);
        }
        throw new CancellationException();
    }

    public final void a() {
        this.f27579b.c();
    }

    public final void b() {
        this.f27578a.c();
    }

    protected void c() {
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z9) {
        synchronized (this.f27580c) {
            if (!this.f27584g && !this.f27579b.e()) {
                this.f27584g = true;
                c();
                Thread thread = this.f27583f;
                if (thread == null) {
                    this.f27578a.f();
                    this.f27579b.f();
                } else if (z9) {
                    thread.interrupt();
                }
                return true;
            }
            return false;
        }
    }

    @w0
    protected abstract R e() throws Exception;

    @Override // java.util.concurrent.Future
    @w0
    public final R get() throws ExecutionException, InterruptedException {
        this.f27579b.a();
        return f();
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f27584g;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.f27579b.e();
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public final void run() {
        synchronized (this.f27580c) {
            if (this.f27584g) {
                return;
            }
            this.f27583f = Thread.currentThread();
            this.f27578a.f();
            try {
                try {
                    this.f27582e = e();
                    synchronized (this.f27580c) {
                        this.f27579b.f();
                        this.f27583f = null;
                        Thread.interrupted();
                    }
                } catch (Exception e4) {
                    this.f27581d = e4;
                    synchronized (this.f27580c) {
                        this.f27579b.f();
                        this.f27583f = null;
                        Thread.interrupted();
                    }
                }
            } catch (Throwable th) {
                synchronized (this.f27580c) {
                    this.f27579b.f();
                    this.f27583f = null;
                    Thread.interrupted();
                    throw th;
                }
            }
        }
    }

    @Override // java.util.concurrent.Future
    @w0
    public final R get(long j4, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        if (this.f27579b.b(TimeUnit.MILLISECONDS.convert(j4, timeUnit))) {
            return f();
        }
        throw new TimeoutException();
    }
}
