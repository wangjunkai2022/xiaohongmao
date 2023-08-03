package io.sentry.transport;

import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.clientreport.DiscardReason;
import io.sentry.l3;
import io.sentry.o0;
import io.sentry.o2;
import io.sentry.transport.d;
import io.sentry.util.h;
import java.io.IOException;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: AsyncHttpTransport.java */
/* loaded from: classes4.dex */
public final class d implements q {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final w f84013a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final io.sentry.cache.f f84014b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final SentryOptions f84015c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final z f84016d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final r f84017e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final n f84018f;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AsyncHttpTransport.java */
    /* loaded from: classes4.dex */
    public static final class b implements ThreadFactory {

        /* renamed from: a  reason: collision with root package name */
        private int f84019a;

        private b() {
        }

        @Override // java.util.concurrent.ThreadFactory
        @m8.g
        public Thread newThread(@m8.g Runnable runnable) {
            StringBuilder sb = new StringBuilder();
            sb.append("SentryAsyncConnection-");
            int i4 = this.f84019a;
            this.f84019a = i4 + 1;
            sb.append(i4);
            Thread thread = new Thread(runnable, sb.toString());
            thread.setDaemon(true);
            return thread;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AsyncHttpTransport.java */
    /* loaded from: classes4.dex */
    public final class c implements Runnable {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final l3 f84020a;
        @m8.g

        /* renamed from: b  reason: collision with root package name */
        private final io.sentry.b0 f84021b;
        @m8.g

        /* renamed from: c  reason: collision with root package name */
        private final io.sentry.cache.f f84022c;

        /* renamed from: d  reason: collision with root package name */
        private final c0 f84023d = c0.a();

        c(@m8.g l3 l3Var, @m8.g io.sentry.b0 b0Var, @m8.g io.sentry.cache.f fVar) {
            this.f84020a = (l3) io.sentry.util.l.c(l3Var, "Envelope is required.");
            this.f84021b = b0Var;
            this.f84022c = (io.sentry.cache.f) io.sentry.util.l.c(fVar, "EnvelopeCache is required.");
        }

        @m8.g
        private c0 j() {
            c0 c0Var = this.f84023d;
            this.f84022c.y(this.f84020a, this.f84021b);
            io.sentry.util.h.n(this.f84021b, io.sentry.hints.e.class, new h.a() { // from class: io.sentry.transport.e
                @Override // io.sentry.util.h.a
                public final void accept(Object obj) {
                    d.c.this.k((io.sentry.hints.e) obj);
                }
            });
            if (!d.this.f84017e.a()) {
                io.sentry.util.h.o(this.f84021b, io.sentry.hints.h.class, h.f84029a, new h.b() { // from class: io.sentry.transport.i
                    @Override // io.sentry.util.h.b
                    public final void a(Object obj, Class cls) {
                        d.c.this.p(obj, cls);
                    }
                });
                return c0Var;
            }
            final l3 d4 = d.this.f84015c.getClientReportRecorder().d(this.f84020a);
            try {
                c0 i4 = d.this.f84018f.i(d4);
                if (i4.d()) {
                    this.f84022c.i(this.f84020a);
                    return i4;
                }
                String str = "The transport failed to send the envelope with response code " + i4.c();
                d.this.f84015c.getLogger().c(SentryLevel.ERROR, str, new Object[0]);
                if (i4.c() >= 400 && i4.c() != 429) {
                    io.sentry.util.h.m(this.f84021b, io.sentry.hints.h.class, new h.c() { // from class: io.sentry.transport.k
                        @Override // io.sentry.util.h.c
                        public final void accept(Object obj) {
                            d.c.this.l(d4, obj);
                        }
                    });
                }
                throw new IllegalStateException(str);
            } catch (IOException e4) {
                io.sentry.util.h.o(this.f84021b, io.sentry.hints.h.class, g.f84028a, new h.b() { // from class: io.sentry.transport.j
                    @Override // io.sentry.util.h.b
                    public final void a(Object obj, Class cls) {
                        d.c.this.n(d4, obj, cls);
                    }
                });
                throw new IllegalStateException("Sending the event failed.", e4);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void k(io.sentry.hints.e eVar) {
            eVar.a();
            d.this.f84015c.getLogger().c(SentryLevel.DEBUG, "Disk flush envelope fired", new Object[0]);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void l(l3 l3Var, Object obj) {
            d.this.f84015c.getClientReportRecorder().b(DiscardReason.NETWORK_ERROR, l3Var);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void n(l3 l3Var, Object obj, Class cls) {
            io.sentry.util.k.a(cls, obj, d.this.f84015c.getLogger());
            d.this.f84015c.getClientReportRecorder().b(DiscardReason.NETWORK_ERROR, l3Var);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void p(Object obj, Class cls) {
            io.sentry.util.k.a(cls, obj, d.this.f84015c.getLogger());
            d.this.f84015c.getClientReportRecorder().b(DiscardReason.NETWORK_ERROR, this.f84020a);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void q(c0 c0Var, io.sentry.hints.m mVar) {
            d.this.f84015c.getLogger().c(SentryLevel.DEBUG, "Marking envelope submission result: %s", Boolean.valueOf(c0Var.d()));
            mVar.b(c0Var.d());
        }

        @Override // java.lang.Runnable
        public void run() {
            final c0 c0Var = this.f84023d;
            try {
                c0Var = j();
                d.this.f84015c.getLogger().c(SentryLevel.DEBUG, "Envelope flushed", new Object[0]);
            } finally {
            }
        }
    }

    public d(@m8.g SentryOptions sentryOptions, @m8.g z zVar, @m8.g r rVar, @m8.g o2 o2Var) {
        this(p(sentryOptions.getMaxQueueSize(), sentryOptions.getEnvelopeDiskCache(), sentryOptions.getLogger()), sentryOptions, zVar, rVar, new n(sentryOptions, o2Var, zVar));
    }

    private static w p(int i4, @m8.g final io.sentry.cache.f fVar, @m8.g final o0 o0Var) {
        return new w(1, i4, new b(), new RejectedExecutionHandler() { // from class: io.sentry.transport.c
            @Override // java.util.concurrent.RejectedExecutionHandler
            public final void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
                d.q(io.sentry.cache.f.this, o0Var, runnable, threadPoolExecutor);
            }
        }, o0Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void q(io.sentry.cache.f fVar, o0 o0Var, Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
        if (runnable instanceof c) {
            c cVar = (c) runnable;
            if (!io.sentry.util.h.g(cVar.f84021b, io.sentry.hints.d.class)) {
                fVar.y(cVar.f84020a, cVar.f84021b);
            }
            y(cVar.f84021b, true);
            o0Var.c(SentryLevel.WARNING, "Envelope rejected", new Object[0]);
        }
    }

    private static void y(@m8.g io.sentry.b0 b0Var, final boolean z9) {
        io.sentry.util.h.n(b0Var, io.sentry.hints.m.class, io.sentry.transport.b.f84007a);
        io.sentry.util.h.n(b0Var, io.sentry.hints.h.class, new h.a() { // from class: io.sentry.transport.a
            @Override // io.sentry.util.h.a
            public final void accept(Object obj) {
                ((io.sentry.hints.h) obj).c(z9);
            }
        });
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f84013a.shutdown();
        this.f84015c.getLogger().c(SentryLevel.DEBUG, "Shutting down", new Object[0]);
        try {
            if (this.f84013a.awaitTermination(1L, TimeUnit.MINUTES)) {
                return;
            }
            this.f84015c.getLogger().c(SentryLevel.WARNING, "Failed to shutdown the async connection async sender within 1 minute. Trying to force it now.", new Object[0]);
            this.f84013a.shutdownNow();
        } catch (InterruptedException unused) {
            this.f84015c.getLogger().c(SentryLevel.DEBUG, "Thread interrupted while closing the connection.", new Object[0]);
            Thread.currentThread().interrupt();
        }
    }

    @Override // io.sentry.transport.q
    public void e(long j4) {
        this.f84013a.b(j4);
    }

    @Override // io.sentry.transport.q
    public /* synthetic */ void j0(l3 l3Var) {
        p.a(this, l3Var);
    }

    @Override // io.sentry.transport.q
    public void w(@m8.g l3 l3Var, @m8.g io.sentry.b0 b0Var) throws IOException {
        io.sentry.cache.f fVar = this.f84014b;
        boolean z9 = false;
        if (io.sentry.util.h.g(b0Var, io.sentry.hints.d.class)) {
            fVar = s.a();
            this.f84015c.getLogger().c(SentryLevel.DEBUG, "Captured Envelope is already cached", new Object[0]);
            z9 = true;
        }
        l3 d4 = this.f84016d.d(l3Var, b0Var);
        if (d4 == null) {
            if (z9) {
                this.f84014b.i(l3Var);
                return;
            }
            return;
        }
        if (io.sentry.util.h.g(b0Var, io.sentry.hints.e.class)) {
            d4 = this.f84015c.getClientReportRecorder().d(d4);
        }
        Future<?> submit = this.f84013a.submit(new c(d4, b0Var, fVar));
        if (submit == null || !submit.isCancelled()) {
            return;
        }
        this.f84015c.getClientReportRecorder().b(DiscardReason.QUEUE_OVERFLOW, d4);
    }

    public d(@m8.g w wVar, @m8.g SentryOptions sentryOptions, @m8.g z zVar, @m8.g r rVar, @m8.g n nVar) {
        this.f84013a = (w) io.sentry.util.l.c(wVar, "executor is required");
        this.f84014b = (io.sentry.cache.f) io.sentry.util.l.c(sentryOptions.getEnvelopeDiskCache(), "envelopeCache is required");
        this.f84015c = (SentryOptions) io.sentry.util.l.c(sentryOptions, "options is required");
        this.f84016d = (z) io.sentry.util.l.c(zVar, "rateLimiter is required");
        this.f84017e = (r) io.sentry.util.l.c(rVar, "transportGate is required");
        this.f84018f = (n) io.sentry.util.l.c(nVar, "httpConnection is required");
    }
}
