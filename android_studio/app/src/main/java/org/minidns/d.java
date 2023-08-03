package org.minidns;

import java.lang.Exception;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.minidns.util.k;

/* compiled from: MiniDnsFuture.java */
/* loaded from: classes5.dex */
public abstract class d<V, E extends Exception> implements Future<V>, org.minidns.util.c<V, E> {

    /* renamed from: f  reason: collision with root package name */
    private static final ExecutorService f92627f;

    /* renamed from: g  reason: collision with root package name */
    static final /* synthetic */ boolean f92628g = false;

    /* renamed from: a  reason: collision with root package name */
    private boolean f92629a;

    /* renamed from: b  reason: collision with root package name */
    protected V f92630b;

    /* renamed from: c  reason: collision with root package name */
    protected E f92631c;

    /* renamed from: d  reason: collision with root package name */
    private k<V> f92632d;

    /* renamed from: e  reason: collision with root package name */
    private org.minidns.util.e<E> f92633e;

    /* compiled from: MiniDnsFuture.java */
    /* loaded from: classes5.dex */
    static class a implements ThreadFactory {
        a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setDaemon(true);
            thread.setName("MiniDnsFuture Thread");
            return thread;
        }
    }

    /* compiled from: MiniDnsFuture.java */
    /* loaded from: classes5.dex */
    static class b implements RejectedExecutionHandler {
        b() {
        }

        @Override // java.util.concurrent.RejectedExecutionHandler
        public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MiniDnsFuture.java */
    /* loaded from: classes5.dex */
    public class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.this.f92632d.onSuccess(d.this.f92630b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MiniDnsFuture.java */
    /* renamed from: org.minidns.d$d  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public class RunnableC0822d implements Runnable {
        RunnableC0822d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.this.f92633e.a(d.this.f92631c);
        }
    }

    /* compiled from: MiniDnsFuture.java */
    /* loaded from: classes5.dex */
    public static class e<V, E extends Exception> extends d<V, E> {
        public final synchronized void j(E e4) {
            this.f92631c = e4;
            notifyAll();
            i();
        }

        public final synchronized void k(V v9) {
            this.f92630b = v9;
            notifyAll();
            i();
        }
    }

    static {
        a aVar = new a();
        ArrayBlockingQueue arrayBlockingQueue = new ArrayBlockingQueue(128);
        b bVar = new b();
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        f92627f = new ThreadPoolExecutor(0, availableProcessors <= 4 ? 2 : availableProcessors, 60L, TimeUnit.SECONDS, arrayBlockingQueue, aVar, bVar);
    }

    public static <V, E extends Exception> d<V, E> f(V v9) {
        e eVar = new e();
        eVar.k(v9);
        return eVar;
    }

    private final V h() throws ExecutionException {
        V v9 = this.f92630b;
        if (v9 != null) {
            return v9;
        }
        if (this.f92631c == null) {
            throw new CancellationException();
        }
        throw new ExecutionException(this.f92631c);
    }

    @Override // org.minidns.util.c
    public org.minidns.util.c<V, E> a(org.minidns.util.e<E> eVar) {
        this.f92633e = eVar;
        i();
        return this;
    }

    @Override // org.minidns.util.c
    public org.minidns.util.c<V, E> b(k<V> kVar) {
        this.f92632d = kVar;
        i();
        return this;
    }

    @Override // java.util.concurrent.Future
    public synchronized boolean cancel(boolean z9) {
        if (isDone()) {
            return false;
        }
        this.f92629a = true;
        if (z9) {
            notifyAll();
        }
        return true;
    }

    public final synchronized V g() throws Exception {
        V v9;
        while (true) {
            v9 = this.f92630b;
            if (v9 != null || this.f92631c != null || this.f92629a) {
                break;
            }
            try {
                wait();
            } catch (InterruptedException e4) {
                throw new RuntimeException(e4);
            }
        }
        E e10 = this.f92631c;
        if (e10 == null) {
            if (this.f92629a) {
                throw new CancellationException();
            }
        } else {
            throw e10;
        }
        return v9;
    }

    @Override // java.util.concurrent.Future
    public final synchronized V get() throws InterruptedException, ExecutionException {
        while (this.f92630b == null && this.f92631c == null && !this.f92629a) {
            wait();
        }
        return h();
    }

    protected final synchronized void i() {
        if (this.f92629a) {
            return;
        }
        if (this.f92630b != null && this.f92632d != null) {
            f92627f.submit(new c());
        } else if (this.f92631c != null && this.f92633e != null) {
            f92627f.submit(new RunnableC0822d());
        }
    }

    @Override // java.util.concurrent.Future
    public final synchronized boolean isCancelled() {
        return this.f92629a;
    }

    @Override // java.util.concurrent.Future
    public final synchronized boolean isDone() {
        return this.f92630b != null;
    }

    @Override // java.util.concurrent.Future
    public final synchronized V get(long j4, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        V v9;
        long currentTimeMillis = System.currentTimeMillis() + timeUnit.toMillis(j4);
        while (true) {
            v9 = this.f92630b;
            if (v9 == null || this.f92631c == null || this.f92629a) {
                break;
            }
            long currentTimeMillis2 = currentTimeMillis - System.currentTimeMillis();
            if (currentTimeMillis2 > 0) {
                wait(currentTimeMillis2);
            }
        }
        if (!this.f92629a) {
            if (v9 != null && this.f92631c != null) {
            } else {
                throw new TimeoutException();
            }
        } else {
            throw new CancellationException();
        }
        return h();
    }
}
