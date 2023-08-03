package com.google.common.util.concurrent;

import com.google.common.util.concurrent.Service;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.concurrent.GuardedBy;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.locks.ReentrantLock;
import java.util.logging.Logger;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: AbstractScheduledService.java */
@h3.c
@h3.a
/* loaded from: classes2.dex */
public abstract class h implements Service {

    /* renamed from: b  reason: collision with root package name */
    private static final Logger f35144b = Logger.getLogger(h.class.getName());

    /* renamed from: a  reason: collision with root package name */
    private final i f35145a = new e(this, null);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractScheduledService.java */
    /* loaded from: classes2.dex */
    public class a extends Service.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ScheduledExecutorService f35146a;

        a(ScheduledExecutorService scheduledExecutorService) {
            this.f35146a = scheduledExecutorService;
        }

        @Override // com.google.common.util.concurrent.Service.b
        public void a(Service.State state, Throwable th) {
            this.f35146a.shutdown();
        }

        @Override // com.google.common.util.concurrent.Service.b
        public void e(Service.State state) {
            this.f35146a.shutdown();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractScheduledService.java */
    /* loaded from: classes2.dex */
    public class b implements ThreadFactory {
        b() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return x0.n(h.this.o(), runnable);
        }
    }

    /* compiled from: AbstractScheduledService.java */
    @h3.a
    /* loaded from: classes2.dex */
    public static abstract class c extends d {

        /* compiled from: AbstractScheduledService.java */
        /* loaded from: classes2.dex */
        private class a extends e0<Void> implements Callable<Void> {

            /* renamed from: a  reason: collision with root package name */
            private final Runnable f35149a;

            /* renamed from: b  reason: collision with root package name */
            private final ScheduledExecutorService f35150b;

            /* renamed from: c  reason: collision with root package name */
            private final i f35151c;

            /* renamed from: d  reason: collision with root package name */
            private final ReentrantLock f35152d = new ReentrantLock();
            @NullableDecl
            @GuardedBy(org.aspectj.lang.c.f91028k)

            /* renamed from: e  reason: collision with root package name */
            private Future<Void> f35153e;

            a(i iVar, ScheduledExecutorService scheduledExecutorService, Runnable runnable) {
                this.f35149a = runnable;
                this.f35150b = scheduledExecutorService;
                this.f35151c = iVar;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.util.concurrent.e0, com.google.common.collect.v1
            /* renamed from: M */
            public Future<? extends Void> L() {
                throw new UnsupportedOperationException("Only cancel and isCancelled is supported by this future");
            }

            @Override // java.util.concurrent.Callable
            /* renamed from: N */
            public Void call() throws Exception {
                this.f35149a.run();
                O();
                return null;
            }

            public void O() {
                try {
                    b d4 = c.this.d();
                    Throwable th = null;
                    this.f35152d.lock();
                    try {
                        Future<Void> future = this.f35153e;
                        if (future == null || !future.isCancelled()) {
                            this.f35153e = this.f35150b.schedule(this, d4.f35155a, d4.f35156b);
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                    this.f35152d.unlock();
                    if (th != null) {
                        this.f35151c.u(th);
                    }
                } catch (Throwable th3) {
                    this.f35151c.u(th3);
                }
            }

            @Override // com.google.common.util.concurrent.e0, java.util.concurrent.Future
            public boolean cancel(boolean z9) {
                this.f35152d.lock();
                try {
                    return this.f35153e.cancel(z9);
                } finally {
                    this.f35152d.unlock();
                }
            }

            @Override // com.google.common.util.concurrent.e0, java.util.concurrent.Future
            public boolean isCancelled() {
                this.f35152d.lock();
                try {
                    return this.f35153e.isCancelled();
                } finally {
                    this.f35152d.unlock();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* compiled from: AbstractScheduledService.java */
        @h3.a
        /* loaded from: classes2.dex */
        public static final class b {

            /* renamed from: a  reason: collision with root package name */
            private final long f35155a;

            /* renamed from: b  reason: collision with root package name */
            private final TimeUnit f35156b;

            public b(long j4, TimeUnit timeUnit) {
                this.f35155a = j4;
                this.f35156b = (TimeUnit) com.google.common.base.a0.E(timeUnit);
            }
        }

        public c() {
            super(null);
        }

        @Override // com.google.common.util.concurrent.h.d
        final Future<?> c(i iVar, ScheduledExecutorService scheduledExecutorService, Runnable runnable) {
            a aVar = new a(iVar, scheduledExecutorService, runnable);
            aVar.O();
            return aVar;
        }

        protected abstract b d() throws Exception;
    }

    /* compiled from: AbstractScheduledService.java */
    /* loaded from: classes2.dex */
    public static abstract class d {

        /* compiled from: AbstractScheduledService.java */
        /* loaded from: classes2.dex */
        static class a extends d {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ long f35157a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ long f35158b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ TimeUnit f35159c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(long j4, long j10, TimeUnit timeUnit) {
                super(null);
                this.f35157a = j4;
                this.f35158b = j10;
                this.f35159c = timeUnit;
            }

            @Override // com.google.common.util.concurrent.h.d
            public Future<?> c(i iVar, ScheduledExecutorService scheduledExecutorService, Runnable runnable) {
                return scheduledExecutorService.scheduleWithFixedDelay(runnable, this.f35157a, this.f35158b, this.f35159c);
            }
        }

        /* compiled from: AbstractScheduledService.java */
        /* loaded from: classes2.dex */
        static class b extends d {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ long f35160a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ long f35161b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ TimeUnit f35162c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            b(long j4, long j10, TimeUnit timeUnit) {
                super(null);
                this.f35160a = j4;
                this.f35161b = j10;
                this.f35162c = timeUnit;
            }

            @Override // com.google.common.util.concurrent.h.d
            public Future<?> c(i iVar, ScheduledExecutorService scheduledExecutorService, Runnable runnable) {
                return scheduledExecutorService.scheduleAtFixedRate(runnable, this.f35160a, this.f35161b, this.f35162c);
            }
        }

        /* synthetic */ d(a aVar) {
            this();
        }

        public static d a(long j4, long j10, TimeUnit timeUnit) {
            com.google.common.base.a0.E(timeUnit);
            com.google.common.base.a0.p(j10 > 0, "delay must be > 0, found %s", j10);
            return new a(j4, j10, timeUnit);
        }

        public static d b(long j4, long j10, TimeUnit timeUnit) {
            com.google.common.base.a0.E(timeUnit);
            com.google.common.base.a0.p(j10 > 0, "period must be > 0, found %s", j10);
            return new b(j4, j10, timeUnit);
        }

        abstract Future<?> c(i iVar, ScheduledExecutorService scheduledExecutorService, Runnable runnable);

        private d() {
        }
    }

    protected h() {
    }

    @Override // com.google.common.util.concurrent.Service
    public final void a(Service.b bVar, Executor executor) {
        this.f35145a.a(bVar, executor);
    }

    @Override // com.google.common.util.concurrent.Service
    public final void b(long j4, TimeUnit timeUnit) throws TimeoutException {
        this.f35145a.b(j4, timeUnit);
    }

    @Override // com.google.common.util.concurrent.Service
    public final void c(long j4, TimeUnit timeUnit) throws TimeoutException {
        this.f35145a.c(j4, timeUnit);
    }

    @Override // com.google.common.util.concurrent.Service
    public final void d() {
        this.f35145a.d();
    }

    @Override // com.google.common.util.concurrent.Service
    @CanIgnoreReturnValue
    public final Service e() {
        this.f35145a.e();
        return this;
    }

    @Override // com.google.common.util.concurrent.Service
    public final Service.State f() {
        return this.f35145a.f();
    }

    @Override // com.google.common.util.concurrent.Service
    public final void g() {
        this.f35145a.g();
    }

    @Override // com.google.common.util.concurrent.Service
    public final Throwable h() {
        return this.f35145a.h();
    }

    @Override // com.google.common.util.concurrent.Service
    @CanIgnoreReturnValue
    public final Service i() {
        this.f35145a.i();
        return this;
    }

    @Override // com.google.common.util.concurrent.Service
    public final boolean isRunning() {
        return this.f35145a.isRunning();
    }

    protected ScheduledExecutorService l() {
        ScheduledExecutorService newSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor(new b());
        a(new a(newSingleThreadScheduledExecutor), x0.c());
        return newSingleThreadScheduledExecutor;
    }

    protected abstract void m() throws Exception;

    protected abstract d n();

    protected String o() {
        return getClass().getSimpleName();
    }

    protected void p() throws Exception {
    }

    protected void q() throws Exception {
    }

    public String toString() {
        return o() + " [" + f() + "]";
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractScheduledService.java */
    /* loaded from: classes2.dex */
    public final class e extends i {
        @MonotonicNonNullDecl

        /* renamed from: p  reason: collision with root package name */
        private volatile Future<?> f35163p;
        @MonotonicNonNullDecl

        /* renamed from: q  reason: collision with root package name */
        private volatile ScheduledExecutorService f35164q;

        /* renamed from: r  reason: collision with root package name */
        private final ReentrantLock f35165r;

        /* renamed from: s  reason: collision with root package name */
        private final Runnable f35166s;

        /* compiled from: AbstractScheduledService.java */
        /* loaded from: classes2.dex */
        class a implements com.google.common.base.i0<String> {
            a() {
            }

            @Override // com.google.common.base.i0
            /* renamed from: a */
            public String get() {
                return h.this.o() + " " + e.this.f();
            }
        }

        /* compiled from: AbstractScheduledService.java */
        /* loaded from: classes2.dex */
        class b implements Runnable {
            b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                e.this.f35165r.lock();
                try {
                    h.this.q();
                    e eVar = e.this;
                    eVar.f35163p = h.this.n().c(h.this.f35145a, e.this.f35164q, e.this.f35166s);
                    e.this.v();
                } finally {
                    try {
                    } finally {
                    }
                }
            }
        }

        /* compiled from: AbstractScheduledService.java */
        /* loaded from: classes2.dex */
        class c implements Runnable {
            c() {
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    e.this.f35165r.lock();
                    if (e.this.f() != Service.State.STOPPING) {
                        e.this.f35165r.unlock();
                        return;
                    }
                    h.this.p();
                    e.this.f35165r.unlock();
                    e.this.w();
                } catch (Throwable th) {
                    e.this.u(th);
                }
            }
        }

        /* compiled from: AbstractScheduledService.java */
        /* loaded from: classes2.dex */
        class d implements Runnable {
            d() {
            }

            @Override // java.lang.Runnable
            public void run() {
                e.this.f35165r.lock();
                try {
                } finally {
                    try {
                    } finally {
                    }
                }
                if (e.this.f35163p.isCancelled()) {
                    return;
                }
                h.this.m();
            }
        }

        private e() {
            this.f35165r = new ReentrantLock();
            this.f35166s = new d();
        }

        @Override // com.google.common.util.concurrent.i
        protected final void n() {
            this.f35164q = x0.s(h.this.l(), new a());
            this.f35164q.execute(new b());
        }

        @Override // com.google.common.util.concurrent.i
        protected final void o() {
            this.f35163p.cancel(false);
            this.f35164q.execute(new c());
        }

        @Override // com.google.common.util.concurrent.i
        public String toString() {
            return h.this.toString();
        }

        /* synthetic */ e(h hVar, a aVar) {
            this();
        }
    }
}
