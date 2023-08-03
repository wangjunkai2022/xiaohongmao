package io.sentry;

import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import m8.a;

/* compiled from: DefaultTransactionPerformanceCollector.java */
@a.c
/* loaded from: classes4.dex */
public final class m implements s5 {

    /* renamed from: g  reason: collision with root package name */
    private static final long f83381g = 100;

    /* renamed from: h  reason: collision with root package name */
    private static final long f83382h = 30000;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final List<j0> f83386d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final SentryOptions f83387e;
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final Object f83383a = new Object();
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private volatile Timer f83384b = null;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, k2> f83385c = new ConcurrentHashMap();
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final AtomicBoolean f83388f = new AtomicBoolean(false);

    /* compiled from: DefaultTransactionPerformanceCollector.java */
    /* loaded from: classes4.dex */
    class a extends TimerTask {
        a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            for (j0 j0Var : m.this.f83386d) {
                j0Var.a();
            }
        }
    }

    /* compiled from: DefaultTransactionPerformanceCollector.java */
    /* loaded from: classes4.dex */
    class b extends TimerTask {
        b() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            synchronized (m.this.f83383a) {
                for (j0 j0Var : m.this.f83386d) {
                    j0Var.b(m.this.f83385c.values());
                }
                for (k2 k2Var : m.this.f83385c.values()) {
                    k2Var.c();
                }
            }
        }
    }

    public m(@m8.g SentryOptions sentryOptions) {
        this.f83387e = (SentryOptions) io.sentry.util.l.c(sentryOptions, "The options object is required.");
        this.f83386d = sentryOptions.getCollectors();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(w0 w0Var) {
        k2 a10 = a(w0Var);
        if (a10 != null) {
            this.f83385c.put(w0Var.m().toString(), a10);
        }
    }

    @Override // io.sentry.s5
    @m8.h
    public k2 a(@m8.g w0 w0Var) {
        k2 remove;
        synchronized (this.f83383a) {
            remove = this.f83385c.remove(w0Var.m().toString());
            if (this.f83385c.isEmpty() && this.f83388f.getAndSet(false) && this.f83384b != null) {
                this.f83384b.cancel();
                this.f83384b = null;
            }
        }
        return remove;
    }

    @Override // io.sentry.s5
    public void b(@m8.g final w0 w0Var) {
        if (this.f83386d.isEmpty()) {
            this.f83387e.getLogger().c(SentryLevel.INFO, "No collector found. Performance stats will not be captured during transactions.", new Object[0]);
            return;
        }
        if (!this.f83385c.containsKey(w0Var.m().toString())) {
            this.f83385c.put(w0Var.m().toString(), new k2());
            this.f83387e.getExecutorService().b(new Runnable() { // from class: io.sentry.l
                @Override // java.lang.Runnable
                public final void run() {
                    m.this.g(w0Var);
                }
            }, f83382h);
        }
        if (this.f83388f.getAndSet(true)) {
            return;
        }
        synchronized (this.f83383a) {
            if (this.f83384b == null) {
                this.f83384b = new Timer(true);
            }
            this.f83384b.schedule(new a(), 0L);
            this.f83384b.scheduleAtFixedRate(new b(), f83381g, f83381g);
        }
    }
}
