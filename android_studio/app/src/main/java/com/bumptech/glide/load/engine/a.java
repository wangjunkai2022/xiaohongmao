package com.bumptech.glide.load.engine;

import android.os.Process;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.load.engine.p;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ActiveResources.java */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f8608a;

    /* renamed from: b  reason: collision with root package name */
    private final Executor f8609b;
    @VisibleForTesting

    /* renamed from: c  reason: collision with root package name */
    final Map<com.bumptech.glide.load.c, d> f8610c;

    /* renamed from: d  reason: collision with root package name */
    private final ReferenceQueue<p<?>> f8611d;

    /* renamed from: e  reason: collision with root package name */
    private p.a f8612e;

    /* renamed from: f  reason: collision with root package name */
    private volatile boolean f8613f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private volatile c f8614g;

    /* compiled from: ActiveResources.java */
    /* renamed from: com.bumptech.glide.load.engine.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class ThreadFactoryC0046a implements ThreadFactory {

        /* compiled from: ActiveResources.java */
        /* renamed from: com.bumptech.glide.load.engine.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        class RunnableC0047a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Runnable f8615a;

            RunnableC0047a(Runnable runnable) {
                this.f8615a = runnable;
            }

            @Override // java.lang.Runnable
            public void run() {
                Process.setThreadPriority(10);
                this.f8615a.run();
            }
        }

        ThreadFactoryC0046a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(@NonNull Runnable runnable) {
            return new Thread(new RunnableC0047a(runnable), "glide-active-resources");
        }
    }

    /* compiled from: ActiveResources.java */
    /* loaded from: classes.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ActiveResources.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public interface c {
        void a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ActiveResources.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static final class d extends WeakReference<p<?>> {

        /* renamed from: a  reason: collision with root package name */
        final com.bumptech.glide.load.c f8618a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f8619b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        u<?> f8620c;

        d(@NonNull com.bumptech.glide.load.c cVar, @NonNull p<?> pVar, @NonNull ReferenceQueue<? super p<?>> referenceQueue, boolean z9) {
            super(pVar, referenceQueue);
            this.f8618a = (com.bumptech.glide.load.c) com.bumptech.glide.util.m.d(cVar);
            this.f8620c = (pVar.d() && z9) ? (u) com.bumptech.glide.util.m.d(pVar.c()) : null;
            this.f8619b = pVar.d();
        }

        void a() {
            this.f8620c = null;
            clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(boolean z9) {
        this(z9, Executors.newSingleThreadExecutor(new ThreadFactoryC0046a()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void a(com.bumptech.glide.load.c cVar, p<?> pVar) {
        d put = this.f8610c.put(cVar, new d(cVar, pVar, this.f8611d, this.f8608a));
        if (put != null) {
            put.a();
        }
    }

    void b() {
        while (!this.f8613f) {
            try {
                c((d) this.f8611d.remove());
                c cVar = this.f8614g;
                if (cVar != null) {
                    cVar.a();
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        }
    }

    void c(@NonNull d dVar) {
        u<?> uVar;
        synchronized (this) {
            this.f8610c.remove(dVar.f8618a);
            if (dVar.f8619b && (uVar = dVar.f8620c) != null) {
                this.f8612e.d(dVar.f8618a, new p<>(uVar, true, false, dVar.f8618a, this.f8612e));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void d(com.bumptech.glide.load.c cVar) {
        d remove = this.f8610c.remove(cVar);
        if (remove != null) {
            remove.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public synchronized p<?> e(com.bumptech.glide.load.c cVar) {
        d dVar = this.f8610c.get(cVar);
        if (dVar == null) {
            return null;
        }
        p<?> pVar = dVar.get();
        if (pVar == null) {
            c(dVar);
        }
        return pVar;
    }

    @VisibleForTesting
    void f(c cVar) {
        this.f8614g = cVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g(p.a aVar) {
        synchronized (aVar) {
            synchronized (this) {
                this.f8612e = aVar;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public void h() {
        this.f8613f = true;
        Executor executor = this.f8609b;
        if (executor instanceof ExecutorService) {
            com.bumptech.glide.util.f.c((ExecutorService) executor);
        }
    }

    @VisibleForTesting
    a(boolean z9, Executor executor) {
        this.f8610c = new HashMap();
        this.f8611d = new ReferenceQueue<>();
        this.f8608a = z9;
        this.f8609b = executor;
        executor.execute(new b());
    }
}
