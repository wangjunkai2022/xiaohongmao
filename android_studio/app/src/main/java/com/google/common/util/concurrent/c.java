package com.google.common.util.concurrent;

import com.google.common.util.concurrent.Service;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.logging.Logger;

/* compiled from: AbstractExecutionThreadService.java */
@h3.c
@h3.a
/* loaded from: classes2.dex */
public abstract class c implements Service {

    /* renamed from: b  reason: collision with root package name */
    private static final Logger f35040b = Logger.getLogger(c.class.getName());

    /* renamed from: a  reason: collision with root package name */
    private final Service f35041a = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractExecutionThreadService.java */
    /* loaded from: classes2.dex */
    public class a extends i {

        /* compiled from: AbstractExecutionThreadService.java */
        /* renamed from: com.google.common.util.concurrent.c$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class C0268a implements com.google.common.base.i0<String> {
            C0268a() {
            }

            @Override // com.google.common.base.i0
            /* renamed from: a */
            public String get() {
                return c.this.m();
            }
        }

        /* compiled from: AbstractExecutionThreadService.java */
        /* loaded from: classes2.dex */
        class b implements Runnable {
            b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    c.this.o();
                    a.this.v();
                    if (a.this.isRunning()) {
                        c.this.l();
                    }
                    c.this.n();
                    a.this.w();
                } catch (Throwable th) {
                    a.this.u(th);
                }
            }
        }

        a() {
        }

        @Override // com.google.common.util.concurrent.i
        protected final void n() {
            x0.q(c.this.k(), new C0268a()).execute(new b());
        }

        @Override // com.google.common.util.concurrent.i
        protected void o() {
            c.this.p();
        }

        @Override // com.google.common.util.concurrent.i
        public String toString() {
            return c.this.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractExecutionThreadService.java */
    /* loaded from: classes2.dex */
    public class b implements Executor {
        b() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            x0.n(c.this.m(), runnable).start();
        }
    }

    protected c() {
    }

    static /* synthetic */ Logger j() {
        return f35040b;
    }

    @Override // com.google.common.util.concurrent.Service
    public final void a(Service.b bVar, Executor executor) {
        this.f35041a.a(bVar, executor);
    }

    @Override // com.google.common.util.concurrent.Service
    public final void b(long j4, TimeUnit timeUnit) throws TimeoutException {
        this.f35041a.b(j4, timeUnit);
    }

    @Override // com.google.common.util.concurrent.Service
    public final void c(long j4, TimeUnit timeUnit) throws TimeoutException {
        this.f35041a.c(j4, timeUnit);
    }

    @Override // com.google.common.util.concurrent.Service
    public final void d() {
        this.f35041a.d();
    }

    @Override // com.google.common.util.concurrent.Service
    @CanIgnoreReturnValue
    public final Service e() {
        this.f35041a.e();
        return this;
    }

    @Override // com.google.common.util.concurrent.Service
    public final Service.State f() {
        return this.f35041a.f();
    }

    @Override // com.google.common.util.concurrent.Service
    public final void g() {
        this.f35041a.g();
    }

    @Override // com.google.common.util.concurrent.Service
    public final Throwable h() {
        return this.f35041a.h();
    }

    @Override // com.google.common.util.concurrent.Service
    @CanIgnoreReturnValue
    public final Service i() {
        this.f35041a.i();
        return this;
    }

    @Override // com.google.common.util.concurrent.Service
    public final boolean isRunning() {
        return this.f35041a.isRunning();
    }

    protected Executor k() {
        return new b();
    }

    protected abstract void l() throws Exception;

    protected String m() {
        return getClass().getSimpleName();
    }

    protected void n() throws Exception {
    }

    protected void o() throws Exception {
    }

    protected void p() {
    }

    public String toString() {
        return m() + " [" + f() + "]";
    }
}
