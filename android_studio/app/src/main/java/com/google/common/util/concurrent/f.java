package com.google.common.util.concurrent;

import com.google.common.util.concurrent.Service;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* compiled from: AbstractIdleService.java */
@h3.c
@h3.a
/* loaded from: classes2.dex */
public abstract class f implements Service {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.common.base.i0<String> f35118a = new c(this, null);

    /* renamed from: b  reason: collision with root package name */
    private final Service f35119b = new b(this, null);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractIdleService.java */
    /* loaded from: classes2.dex */
    public class a implements Executor {
        a() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            x0.n((String) f.this.f35118a.get(), runnable).start();
        }
    }

    /* compiled from: AbstractIdleService.java */
    /* loaded from: classes2.dex */
    private final class b extends i {

        /* compiled from: AbstractIdleService.java */
        /* loaded from: classes2.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    f.this.n();
                    b.this.v();
                } catch (Throwable th) {
                    b.this.u(th);
                }
            }
        }

        /* compiled from: AbstractIdleService.java */
        /* renamed from: com.google.common.util.concurrent.f$b$b  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class RunnableC0270b implements Runnable {
            RunnableC0270b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    f.this.m();
                    b.this.w();
                } catch (Throwable th) {
                    b.this.u(th);
                }
            }
        }

        private b() {
        }

        @Override // com.google.common.util.concurrent.i
        protected final void n() {
            x0.q(f.this.k(), f.this.f35118a).execute(new a());
        }

        @Override // com.google.common.util.concurrent.i
        protected final void o() {
            x0.q(f.this.k(), f.this.f35118a).execute(new RunnableC0270b());
        }

        @Override // com.google.common.util.concurrent.i
        public String toString() {
            return f.this.toString();
        }

        /* synthetic */ b(f fVar, a aVar) {
            this();
        }
    }

    /* compiled from: AbstractIdleService.java */
    /* loaded from: classes2.dex */
    private final class c implements com.google.common.base.i0<String> {
        private c() {
        }

        @Override // com.google.common.base.i0
        /* renamed from: a */
        public String get() {
            return f.this.l() + " " + f.this.f();
        }

        /* synthetic */ c(f fVar, a aVar) {
            this();
        }
    }

    protected f() {
    }

    @Override // com.google.common.util.concurrent.Service
    public final void a(Service.b bVar, Executor executor) {
        this.f35119b.a(bVar, executor);
    }

    @Override // com.google.common.util.concurrent.Service
    public final void b(long j4, TimeUnit timeUnit) throws TimeoutException {
        this.f35119b.b(j4, timeUnit);
    }

    @Override // com.google.common.util.concurrent.Service
    public final void c(long j4, TimeUnit timeUnit) throws TimeoutException {
        this.f35119b.c(j4, timeUnit);
    }

    @Override // com.google.common.util.concurrent.Service
    public final void d() {
        this.f35119b.d();
    }

    @Override // com.google.common.util.concurrent.Service
    @CanIgnoreReturnValue
    public final Service e() {
        this.f35119b.e();
        return this;
    }

    @Override // com.google.common.util.concurrent.Service
    public final Service.State f() {
        return this.f35119b.f();
    }

    @Override // com.google.common.util.concurrent.Service
    public final void g() {
        this.f35119b.g();
    }

    @Override // com.google.common.util.concurrent.Service
    public final Throwable h() {
        return this.f35119b.h();
    }

    @Override // com.google.common.util.concurrent.Service
    @CanIgnoreReturnValue
    public final Service i() {
        this.f35119b.i();
        return this;
    }

    @Override // com.google.common.util.concurrent.Service
    public final boolean isRunning() {
        return this.f35119b.isRunning();
    }

    protected Executor k() {
        return new a();
    }

    protected String l() {
        return getClass().getSimpleName();
    }

    protected abstract void m() throws Exception;

    protected abstract void n() throws Exception;

    public String toString() {
        return l() + " [" + f() + "]";
    }
}
