package com.google.common.util.concurrent;

import com.google.common.util.concurrent.Service;
import com.google.common.util.concurrent.t0;
import com.google.common.util.concurrent.w0;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.ForOverride;
import com.google.errorprone.annotations.concurrent.GuardedBy;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: AbstractService.java */
@h3.c
@h3.a
/* loaded from: classes2.dex */
public abstract class i implements Service {

    /* renamed from: h  reason: collision with root package name */
    private static final t0.a<Service.b> f35199h = new a();

    /* renamed from: i  reason: collision with root package name */
    private static final t0.a<Service.b> f35200i = new b();

    /* renamed from: j  reason: collision with root package name */
    private static final t0.a<Service.b> f35201j;

    /* renamed from: k  reason: collision with root package name */
    private static final t0.a<Service.b> f35202k;

    /* renamed from: l  reason: collision with root package name */
    private static final t0.a<Service.b> f35203l;

    /* renamed from: m  reason: collision with root package name */
    private static final t0.a<Service.b> f35204m;

    /* renamed from: n  reason: collision with root package name */
    private static final t0.a<Service.b> f35205n;

    /* renamed from: o  reason: collision with root package name */
    private static final t0.a<Service.b> f35206o;

    /* renamed from: a  reason: collision with root package name */
    private final w0 f35207a = new w0();

    /* renamed from: b  reason: collision with root package name */
    private final w0.a f35208b = new h();

    /* renamed from: c  reason: collision with root package name */
    private final w0.a f35209c = new C0272i();

    /* renamed from: d  reason: collision with root package name */
    private final w0.a f35210d = new g();

    /* renamed from: e  reason: collision with root package name */
    private final w0.a f35211e = new j();

    /* renamed from: f  reason: collision with root package name */
    private final t0<Service.b> f35212f = new t0<>();

    /* renamed from: g  reason: collision with root package name */
    private volatile k f35213g = new k(Service.State.NEW);

    /* compiled from: AbstractService.java */
    /* loaded from: classes2.dex */
    static class a implements t0.a<Service.b> {
        a() {
        }

        @Override // com.google.common.util.concurrent.t0.a
        /* renamed from: b */
        public void a(Service.b bVar) {
            bVar.c();
        }

        public String toString() {
            return "starting()";
        }
    }

    /* compiled from: AbstractService.java */
    /* loaded from: classes2.dex */
    static class b implements t0.a<Service.b> {
        b() {
        }

        @Override // com.google.common.util.concurrent.t0.a
        /* renamed from: b */
        public void a(Service.b bVar) {
            bVar.b();
        }

        public String toString() {
            return "running()";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractService.java */
    /* loaded from: classes2.dex */
    public static class c implements t0.a<Service.b> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Service.State f35214a;

        c(Service.State state) {
            this.f35214a = state;
        }

        @Override // com.google.common.util.concurrent.t0.a
        /* renamed from: b */
        public void a(Service.b bVar) {
            bVar.e(this.f35214a);
        }

        public String toString() {
            return "terminated({from = " + this.f35214a + "})";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractService.java */
    /* loaded from: classes2.dex */
    public static class d implements t0.a<Service.b> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Service.State f35215a;

        d(Service.State state) {
            this.f35215a = state;
        }

        @Override // com.google.common.util.concurrent.t0.a
        /* renamed from: b */
        public void a(Service.b bVar) {
            bVar.d(this.f35215a);
        }

        public String toString() {
            return "stopping({from = " + this.f35215a + "})";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractService.java */
    /* loaded from: classes2.dex */
    public class e implements t0.a<Service.b> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Service.State f35216a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Throwable f35217b;

        e(Service.State state, Throwable th) {
            this.f35216a = state;
            this.f35217b = th;
        }

        @Override // com.google.common.util.concurrent.t0.a
        /* renamed from: b */
        public void a(Service.b bVar) {
            bVar.a(this.f35216a, this.f35217b);
        }

        public String toString() {
            return "failed({from = " + this.f35216a + ", cause = " + this.f35217b + "})";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractService.java */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class f {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f35219a;

        static {
            int[] iArr = new int[Service.State.values().length];
            f35219a = iArr;
            try {
                iArr[Service.State.NEW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f35219a[Service.State.STARTING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f35219a[Service.State.RUNNING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f35219a[Service.State.STOPPING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f35219a[Service.State.TERMINATED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f35219a[Service.State.FAILED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* compiled from: AbstractService.java */
    /* loaded from: classes2.dex */
    private final class g extends w0.a {
        g() {
            super(i.this.f35207a);
        }

        @Override // com.google.common.util.concurrent.w0.a
        public boolean a() {
            return i.this.f().compareTo(Service.State.RUNNING) >= 0;
        }
    }

    /* compiled from: AbstractService.java */
    /* loaded from: classes2.dex */
    private final class h extends w0.a {
        h() {
            super(i.this.f35207a);
        }

        @Override // com.google.common.util.concurrent.w0.a
        public boolean a() {
            return i.this.f() == Service.State.NEW;
        }
    }

    /* compiled from: AbstractService.java */
    /* renamed from: com.google.common.util.concurrent.i$i  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    private final class C0272i extends w0.a {
        C0272i() {
            super(i.this.f35207a);
        }

        @Override // com.google.common.util.concurrent.w0.a
        public boolean a() {
            return i.this.f().compareTo(Service.State.RUNNING) <= 0;
        }
    }

    /* compiled from: AbstractService.java */
    /* loaded from: classes2.dex */
    private final class j extends w0.a {
        j() {
            super(i.this.f35207a);
        }

        @Override // com.google.common.util.concurrent.w0.a
        public boolean a() {
            return i.this.f().a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractService.java */
    /* loaded from: classes2.dex */
    public static final class k {

        /* renamed from: a  reason: collision with root package name */
        final Service.State f35224a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f35225b;
        @NullableDecl

        /* renamed from: c  reason: collision with root package name */
        final Throwable f35226c;

        k(Service.State state) {
            this(state, false, null);
        }

        Service.State a() {
            if (this.f35225b && this.f35224a == Service.State.STARTING) {
                return Service.State.STOPPING;
            }
            return this.f35224a;
        }

        Throwable b() {
            Service.State state = this.f35224a;
            com.google.common.base.a0.x0(state == Service.State.FAILED, "failureCause() is only valid if the service has failed, service is %s", state);
            return this.f35226c;
        }

        k(Service.State state, boolean z9, @NullableDecl Throwable th) {
            com.google.common.base.a0.u(!z9 || state == Service.State.STARTING, "shutdownWhenStartupFinishes can only be set if state is STARTING. Got %s instead.", state);
            com.google.common.base.a0.y(!((state == Service.State.FAILED) ^ (th != null)), "A failure cause should be set if and only if the state is failed.  Got %s and %s instead.", state, th);
            this.f35224a = state;
            this.f35225b = z9;
            this.f35226c = th;
        }
    }

    static {
        Service.State state = Service.State.STARTING;
        f35201j = x(state);
        Service.State state2 = Service.State.RUNNING;
        f35202k = x(state2);
        f35203l = y(Service.State.NEW);
        f35204m = y(state);
        f35205n = y(state2);
        f35206o = y(Service.State.STOPPING);
    }

    @GuardedBy("monitor")
    private void k(Service.State state) {
        Service.State f10 = f();
        if (f10 != state) {
            if (f10 == Service.State.FAILED) {
                throw new IllegalStateException("Expected the service " + this + " to be " + state + ", but the service has FAILED", h());
            }
            throw new IllegalStateException("Expected the service " + this + " to be " + state + ", but was " + f10);
        }
    }

    private void l() {
        if (this.f35207a.B()) {
            return;
        }
        this.f35212f.c();
    }

    private void p(Service.State state, Throwable th) {
        this.f35212f.d(new e(state, th));
    }

    private void q() {
        this.f35212f.d(f35200i);
    }

    private void r() {
        this.f35212f.d(f35199h);
    }

    private void s(Service.State state) {
        if (state == Service.State.STARTING) {
            this.f35212f.d(f35201j);
        } else if (state == Service.State.RUNNING) {
            this.f35212f.d(f35202k);
        } else {
            throw new AssertionError();
        }
    }

    private void t(Service.State state) {
        switch (f.f35219a[state.ordinal()]) {
            case 1:
                this.f35212f.d(f35203l);
                return;
            case 2:
                this.f35212f.d(f35204m);
                return;
            case 3:
                this.f35212f.d(f35205n);
                return;
            case 4:
                this.f35212f.d(f35206o);
                return;
            case 5:
            case 6:
                throw new AssertionError();
            default:
                return;
        }
    }

    private static t0.a<Service.b> x(Service.State state) {
        return new d(state);
    }

    private static t0.a<Service.b> y(Service.State state) {
        return new c(state);
    }

    @Override // com.google.common.util.concurrent.Service
    public final void a(Service.b bVar, Executor executor) {
        this.f35212f.b(bVar, executor);
    }

    @Override // com.google.common.util.concurrent.Service
    public final void b(long j4, TimeUnit timeUnit) throws TimeoutException {
        if (this.f35207a.r(this.f35210d, j4, timeUnit)) {
            try {
                k(Service.State.RUNNING);
                return;
            } finally {
                this.f35207a.D();
            }
        }
        throw new TimeoutException("Timed out waiting for " + this + " to reach the RUNNING state.");
    }

    @Override // com.google.common.util.concurrent.Service
    public final void c(long j4, TimeUnit timeUnit) throws TimeoutException {
        if (this.f35207a.r(this.f35211e, j4, timeUnit)) {
            try {
                k(Service.State.TERMINATED);
                return;
            } finally {
                this.f35207a.D();
            }
        }
        throw new TimeoutException("Timed out waiting for " + this + " to reach a terminal state. Current state: " + f());
    }

    @Override // com.google.common.util.concurrent.Service
    public final void d() {
        this.f35207a.q(this.f35211e);
        try {
            k(Service.State.TERMINATED);
        } finally {
            this.f35207a.D();
        }
    }

    @Override // com.google.common.util.concurrent.Service
    @CanIgnoreReturnValue
    public final Service e() {
        if (this.f35207a.i(this.f35208b)) {
            try {
                this.f35213g = new k(Service.State.STARTING);
                r();
                n();
            } finally {
                try {
                    return this;
                } finally {
                }
            }
            return this;
        }
        throw new IllegalStateException("Service " + this + " has already been started");
    }

    @Override // com.google.common.util.concurrent.Service
    public final Service.State f() {
        return this.f35213g.a();
    }

    @Override // com.google.common.util.concurrent.Service
    public final void g() {
        this.f35207a.q(this.f35210d);
        try {
            k(Service.State.RUNNING);
        } finally {
            this.f35207a.D();
        }
    }

    @Override // com.google.common.util.concurrent.Service
    public final Throwable h() {
        return this.f35213g.b();
    }

    @Override // com.google.common.util.concurrent.Service
    @CanIgnoreReturnValue
    public final Service i() {
        if (this.f35207a.i(this.f35209c)) {
            try {
                Service.State f10 = f();
                switch (f.f35219a[f10.ordinal()]) {
                    case 1:
                        this.f35213g = new k(Service.State.TERMINATED);
                        t(Service.State.NEW);
                        break;
                    case 2:
                        Service.State state = Service.State.STARTING;
                        this.f35213g = new k(state, true, null);
                        s(state);
                        m();
                        break;
                    case 3:
                        this.f35213g = new k(Service.State.STOPPING);
                        s(Service.State.RUNNING);
                        o();
                        break;
                    case 4:
                    case 5:
                    case 6:
                        throw new AssertionError("isStoppable is incorrectly implemented, saw: " + f10);
                }
            } finally {
                try {
                } finally {
                }
            }
        }
        return this;
    }

    @Override // com.google.common.util.concurrent.Service
    public final boolean isRunning() {
        return f() == Service.State.RUNNING;
    }

    @ForOverride
    protected void m() {
    }

    @ForOverride
    protected abstract void n();

    @ForOverride
    protected abstract void o();

    public String toString() {
        return getClass().getSimpleName() + " [" + f() + "]";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void u(Throwable th) {
        com.google.common.base.a0.E(th);
        this.f35207a.g();
        try {
            Service.State f10 = f();
            int i4 = f.f35219a[f10.ordinal()];
            if (i4 != 1) {
                if (i4 == 2 || i4 == 3 || i4 == 4) {
                    this.f35213g = new k(Service.State.FAILED, false, th);
                    p(f10, th);
                } else if (i4 != 5) {
                }
                return;
            }
            throw new IllegalStateException("Failed while in state:" + f10, th);
        } finally {
            this.f35207a.D();
            l();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void v() {
        this.f35207a.g();
        try {
            if (this.f35213g.f35224a == Service.State.STARTING) {
                if (this.f35213g.f35225b) {
                    this.f35213g = new k(Service.State.STOPPING);
                    o();
                } else {
                    this.f35213g = new k(Service.State.RUNNING);
                    q();
                }
                return;
            }
            IllegalStateException illegalStateException = new IllegalStateException("Cannot notifyStarted() when the service is " + this.f35213g.f35224a);
            u(illegalStateException);
            throw illegalStateException;
        } finally {
            this.f35207a.D();
            l();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void w() {
        this.f35207a.g();
        try {
            Service.State f10 = f();
            switch (f.f35219a[f10.ordinal()]) {
                case 1:
                case 5:
                case 6:
                    throw new IllegalStateException("Cannot notifyStopped() when the service is " + f10);
                case 2:
                case 3:
                case 4:
                    this.f35213g = new k(Service.State.TERMINATED);
                    t(f10);
                    break;
            }
        } finally {
            this.f35207a.D();
            l();
        }
    }
}
