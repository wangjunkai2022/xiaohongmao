package com.google.common.util.concurrent;

import com.google.common.collect.ImmutableCollection;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableMultimap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.ImmutableSetMultimap;
import com.google.common.collect.b3;
import com.google.common.collect.f3;
import com.google.common.collect.i3;
import com.google.common.collect.j3;
import com.google.common.collect.k3;
import com.google.common.collect.k5;
import com.google.common.collect.n4;
import com.google.common.collect.s3;
import com.google.common.util.concurrent.Service;
import com.google.common.util.concurrent.t0;
import com.google.common.util.concurrent.w0;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.concurrent.GuardedBy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* compiled from: ServiceManager.java */
@h3.c
@h3.a
/* loaded from: classes2.dex */
public final class d1 {

    /* renamed from: c  reason: collision with root package name */
    private static final Logger f35095c = Logger.getLogger(d1.class.getName());

    /* renamed from: d  reason: collision with root package name */
    private static final t0.a<d> f35096d = new a();

    /* renamed from: e  reason: collision with root package name */
    private static final t0.a<d> f35097e = new b();

    /* renamed from: a  reason: collision with root package name */
    private final g f35098a;

    /* renamed from: b  reason: collision with root package name */
    private final ImmutableList<Service> f35099b;

    /* compiled from: ServiceManager.java */
    /* loaded from: classes2.dex */
    static class a implements t0.a<d> {
        a() {
        }

        @Override // com.google.common.util.concurrent.t0.a
        /* renamed from: b */
        public void a(d dVar) {
            dVar.b();
        }

        public String toString() {
            return "healthy()";
        }
    }

    /* compiled from: ServiceManager.java */
    /* loaded from: classes2.dex */
    static class b implements t0.a<d> {
        b() {
        }

        @Override // com.google.common.util.concurrent.t0.a
        /* renamed from: b */
        public void a(d dVar) {
            dVar.c();
        }

        public String toString() {
            return "stopped()";
        }
    }

    /* compiled from: ServiceManager.java */
    /* loaded from: classes2.dex */
    private static final class c extends Throwable {
        private c() {
        }

        /* synthetic */ c(a aVar) {
            this();
        }
    }

    /* compiled from: ServiceManager.java */
    @h3.a
    /* loaded from: classes2.dex */
    public static abstract class d {
        public void a(Service service) {
        }

        public void b() {
        }

        public void c() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ServiceManager.java */
    /* loaded from: classes2.dex */
    public static final class e extends i {
        private e() {
        }

        @Override // com.google.common.util.concurrent.i
        protected void n() {
            v();
        }

        @Override // com.google.common.util.concurrent.i
        protected void o() {
            w();
        }

        /* synthetic */ e(a aVar) {
            this();
        }
    }

    /* compiled from: ServiceManager.java */
    /* loaded from: classes2.dex */
    private static final class f extends Service.b {

        /* renamed from: a  reason: collision with root package name */
        final Service f35100a;

        /* renamed from: b  reason: collision with root package name */
        final WeakReference<g> f35101b;

        f(Service service, WeakReference<g> weakReference) {
            this.f35100a = service;
            this.f35101b = weakReference;
        }

        @Override // com.google.common.util.concurrent.Service.b
        public void a(Service.State state, Throwable th) {
            g gVar = this.f35101b.get();
            if (gVar != null) {
                if (!(this.f35100a instanceof e)) {
                    Logger logger = d1.f35095c;
                    Level level = Level.SEVERE;
                    logger.log(level, "Service " + this.f35100a + " has failed in the " + state + " state.", th);
                }
                gVar.n(this.f35100a, state, Service.State.FAILED);
            }
        }

        @Override // com.google.common.util.concurrent.Service.b
        public void b() {
            g gVar = this.f35101b.get();
            if (gVar != null) {
                gVar.n(this.f35100a, Service.State.STARTING, Service.State.RUNNING);
            }
        }

        @Override // com.google.common.util.concurrent.Service.b
        public void c() {
            g gVar = this.f35101b.get();
            if (gVar != null) {
                gVar.n(this.f35100a, Service.State.NEW, Service.State.STARTING);
                if (this.f35100a instanceof e) {
                    return;
                }
                d1.f35095c.log(Level.FINE, "Starting {0}.", this.f35100a);
            }
        }

        @Override // com.google.common.util.concurrent.Service.b
        public void d(Service.State state) {
            g gVar = this.f35101b.get();
            if (gVar != null) {
                gVar.n(this.f35100a, state, Service.State.STOPPING);
            }
        }

        @Override // com.google.common.util.concurrent.Service.b
        public void e(Service.State state) {
            g gVar = this.f35101b.get();
            if (gVar != null) {
                if (!(this.f35100a instanceof e)) {
                    d1.f35095c.log(Level.FINE, "Service {0} has terminated. Previous state was: {1}", new Object[]{this.f35100a, state});
                }
                gVar.n(this.f35100a, state, Service.State.TERMINATED);
            }
        }
    }

    /* compiled from: ServiceManager.java */
    /* loaded from: classes2.dex */
    private static final class g {

        /* renamed from: a  reason: collision with root package name */
        final w0 f35102a = new w0();
        @GuardedBy("monitor")

        /* renamed from: b  reason: collision with root package name */
        final n4<Service.State, Service> f35103b;
        @GuardedBy("monitor")

        /* renamed from: c  reason: collision with root package name */
        final k3<Service.State> f35104c;
        @GuardedBy("monitor")

        /* renamed from: d  reason: collision with root package name */
        final Map<Service, com.google.common.base.g0> f35105d;
        @GuardedBy("monitor")

        /* renamed from: e  reason: collision with root package name */
        boolean f35106e;
        @GuardedBy("monitor")

        /* renamed from: f  reason: collision with root package name */
        boolean f35107f;

        /* renamed from: g  reason: collision with root package name */
        final int f35108g;

        /* renamed from: h  reason: collision with root package name */
        final w0.a f35109h;

        /* renamed from: i  reason: collision with root package name */
        final w0.a f35110i;

        /* renamed from: j  reason: collision with root package name */
        final t0<d> f35111j;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ServiceManager.java */
        /* loaded from: classes2.dex */
        public class a implements com.google.common.base.q<Map.Entry<Service, Long>, Long> {
            a() {
            }

            @Override // com.google.common.base.q
            /* renamed from: a */
            public Long apply(Map.Entry<Service, Long> entry) {
                return entry.getValue();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ServiceManager.java */
        /* loaded from: classes2.dex */
        public class b implements t0.a<d> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Service f35113a;

            b(Service service) {
                this.f35113a = service;
            }

            @Override // com.google.common.util.concurrent.t0.a
            /* renamed from: b */
            public void a(d dVar) {
                dVar.a(this.f35113a);
            }

            public String toString() {
                return "failed({service=" + this.f35113a + "})";
            }
        }

        /* compiled from: ServiceManager.java */
        /* loaded from: classes2.dex */
        final class c extends w0.a {
            c() {
                super(g.this.f35102a);
            }

            @Override // com.google.common.util.concurrent.w0.a
            @GuardedBy("ServiceManagerState.this.monitor")
            public boolean a() {
                int count = g.this.f35104c.count(Service.State.RUNNING);
                g gVar = g.this;
                return count == gVar.f35108g || gVar.f35104c.contains(Service.State.STOPPING) || g.this.f35104c.contains(Service.State.TERMINATED) || g.this.f35104c.contains(Service.State.FAILED);
            }
        }

        /* compiled from: ServiceManager.java */
        /* loaded from: classes2.dex */
        final class d extends w0.a {
            d() {
                super(g.this.f35102a);
            }

            @Override // com.google.common.util.concurrent.w0.a
            @GuardedBy("ServiceManagerState.this.monitor")
            public boolean a() {
                return g.this.f35104c.count(Service.State.TERMINATED) + g.this.f35104c.count(Service.State.FAILED) == g.this.f35108g;
            }
        }

        g(ImmutableCollection<Service> immutableCollection) {
            n4<Service.State, Service> a10 = i3.c(Service.State.class).g().a();
            this.f35103b = a10;
            this.f35104c = a10.keys();
            this.f35105d = f3.b0();
            this.f35109h = new c();
            this.f35110i = new d();
            this.f35111j = new t0<>();
            this.f35108g = immutableCollection.size();
            a10.putAll(Service.State.NEW, immutableCollection);
        }

        void a(d dVar, Executor executor) {
            this.f35111j.b(dVar, executor);
        }

        void b() {
            this.f35102a.q(this.f35109h);
            try {
                f();
            } finally {
                this.f35102a.D();
            }
        }

        void c(long j4, TimeUnit timeUnit) throws TimeoutException {
            this.f35102a.g();
            try {
                if (this.f35102a.N(this.f35109h, j4, timeUnit)) {
                    f();
                    return;
                }
                throw new TimeoutException("Timeout waiting for the services to become healthy. The following services have not started: " + j3.n(this.f35103b, com.google.common.base.c0.n(ImmutableSet.of(Service.State.NEW, Service.State.STARTING))));
            } finally {
                this.f35102a.D();
            }
        }

        void d() {
            this.f35102a.q(this.f35110i);
            this.f35102a.D();
        }

        void e(long j4, TimeUnit timeUnit) throws TimeoutException {
            this.f35102a.g();
            try {
                if (this.f35102a.N(this.f35110i, j4, timeUnit)) {
                    return;
                }
                throw new TimeoutException("Timeout waiting for the services to stop. The following services have not stopped: " + j3.n(this.f35103b, com.google.common.base.c0.q(com.google.common.base.c0.n(EnumSet.of(Service.State.TERMINATED, Service.State.FAILED)))));
            } finally {
                this.f35102a.D();
            }
        }

        @GuardedBy("monitor")
        void f() {
            k3<Service.State> k3Var = this.f35104c;
            Service.State state = Service.State.RUNNING;
            if (k3Var.count(state) == this.f35108g) {
                return;
            }
            throw new IllegalStateException("Expected to be healthy after starting. The following services are not running: " + j3.n(this.f35103b, com.google.common.base.c0.q(com.google.common.base.c0.m(state))));
        }

        void g() {
            com.google.common.base.a0.h0(!this.f35102a.B(), "It is incorrect to execute listeners with the monitor held.");
            this.f35111j.c();
        }

        void h(Service service) {
            this.f35111j.d(new b(service));
        }

        void i() {
            this.f35111j.d(d1.f35096d);
        }

        void j() {
            this.f35111j.d(d1.f35097e);
        }

        void k() {
            this.f35102a.g();
            try {
                if (!this.f35107f) {
                    this.f35106e = true;
                    return;
                }
                ArrayList q9 = b3.q();
                k5<Service> it = l().values().iterator();
                while (it.hasNext()) {
                    Service next = it.next();
                    if (next.f() != Service.State.NEW) {
                        q9.add(next);
                    }
                }
                throw new IllegalArgumentException("Services started transitioning asynchronously before the ServiceManager was constructed: " + q9);
            } finally {
                this.f35102a.D();
            }
        }

        ImmutableMultimap<Service.State, Service> l() {
            ImmutableSetMultimap.a builder = ImmutableSetMultimap.builder();
            this.f35102a.g();
            try {
                for (Map.Entry<Service.State, Service> entry : this.f35103b.entries()) {
                    if (!(entry.getValue() instanceof e)) {
                        builder.g(entry);
                    }
                }
                this.f35102a.D();
                return builder.a();
            } catch (Throwable th) {
                this.f35102a.D();
                throw th;
            }
        }

        ImmutableMap<Service, Long> m() {
            this.f35102a.g();
            try {
                ArrayList u9 = b3.u(this.f35105d.size());
                for (Map.Entry<Service, com.google.common.base.g0> entry : this.f35105d.entrySet()) {
                    Service key = entry.getKey();
                    com.google.common.base.g0 value = entry.getValue();
                    if (!value.i() && !(key instanceof e)) {
                        u9.add(f3.O(key, Long.valueOf(value.g(TimeUnit.MILLISECONDS))));
                    }
                }
                this.f35102a.D();
                Collections.sort(u9, s3.B().F(new a()));
                return ImmutableMap.copyOf(u9);
            } catch (Throwable th) {
                this.f35102a.D();
                throw th;
            }
        }

        void n(Service service, Service.State state, Service.State state2) {
            com.google.common.base.a0.E(service);
            com.google.common.base.a0.d(state != state2);
            this.f35102a.g();
            try {
                this.f35107f = true;
                if (this.f35106e) {
                    com.google.common.base.a0.B0(this.f35103b.remove(state, service), "Service %s not at the expected location in the state map %s", service, state);
                    com.google.common.base.a0.B0(this.f35103b.put(state2, service), "Service %s in the state map unexpectedly at %s", service, state2);
                    com.google.common.base.g0 g0Var = this.f35105d.get(service);
                    if (g0Var == null) {
                        g0Var = com.google.common.base.g0.c();
                        this.f35105d.put(service, g0Var);
                    }
                    Service.State state3 = Service.State.RUNNING;
                    if (state2.compareTo(state3) >= 0 && g0Var.i()) {
                        g0Var.l();
                        if (!(service instanceof e)) {
                            d1.f35095c.log(Level.FINE, "Started {0} in {1}.", new Object[]{service, g0Var});
                        }
                    }
                    Service.State state4 = Service.State.FAILED;
                    if (state2 == state4) {
                        h(service);
                    }
                    if (this.f35104c.count(state3) == this.f35108g) {
                        i();
                    } else if (this.f35104c.count(Service.State.TERMINATED) + this.f35104c.count(state4) == this.f35108g) {
                        j();
                    }
                }
            } finally {
                this.f35102a.D();
                g();
            }
        }

        void o(Service service) {
            this.f35102a.g();
            try {
                if (this.f35105d.get(service) == null) {
                    this.f35105d.put(service, com.google.common.base.g0.c());
                }
            } finally {
                this.f35102a.D();
            }
        }
    }

    public d1(Iterable<? extends Service> iterable) {
        ImmutableList<Service> copyOf = ImmutableList.copyOf(iterable);
        if (copyOf.isEmpty()) {
            f35095c.log(Level.WARNING, "ServiceManager configured with no services.  Is your application configured properly?", (Throwable) new c(null));
            copyOf = ImmutableList.of(new e(null));
        }
        g gVar = new g(copyOf);
        this.f35098a = gVar;
        this.f35099b = copyOf;
        WeakReference weakReference = new WeakReference(gVar);
        k5<Service> it = copyOf.iterator();
        while (it.hasNext()) {
            Service next = it.next();
            next.a(new f(next, weakReference), x0.c());
            com.google.common.base.a0.u(next.f() == Service.State.NEW, "Can only manage NEW services, %s", next);
        }
        this.f35098a.k();
    }

    public void d(d dVar) {
        this.f35098a.a(dVar, x0.c());
    }

    public void e(d dVar, Executor executor) {
        this.f35098a.a(dVar, executor);
    }

    public void f() {
        this.f35098a.b();
    }

    public void g(long j4, TimeUnit timeUnit) throws TimeoutException {
        this.f35098a.c(j4, timeUnit);
    }

    public void h() {
        this.f35098a.d();
    }

    public void i(long j4, TimeUnit timeUnit) throws TimeoutException {
        this.f35098a.e(j4, timeUnit);
    }

    public boolean j() {
        k5<Service> it = this.f35099b.iterator();
        while (it.hasNext()) {
            if (!it.next().isRunning()) {
                return false;
            }
        }
        return true;
    }

    public ImmutableMultimap<Service.State, Service> k() {
        return this.f35098a.l();
    }

    @CanIgnoreReturnValue
    public d1 l() {
        k5<Service> it = this.f35099b.iterator();
        while (it.hasNext()) {
            Service next = it.next();
            Service.State f10 = next.f();
            com.google.common.base.a0.B0(f10 == Service.State.NEW, "Service %s is %s, cannot start it.", next, f10);
        }
        k5<Service> it2 = this.f35099b.iterator();
        while (it2.hasNext()) {
            Service next2 = it2.next();
            try {
                this.f35098a.o(next2);
                next2.e();
            } catch (IllegalStateException e4) {
                Logger logger = f35095c;
                Level level = Level.WARNING;
                logger.log(level, "Unable to start Service " + next2, (Throwable) e4);
            }
        }
        return this;
    }

    public ImmutableMap<Service, Long> m() {
        return this.f35098a.m();
    }

    @CanIgnoreReturnValue
    public d1 n() {
        k5<Service> it = this.f35099b.iterator();
        while (it.hasNext()) {
            it.next().i();
        }
        return this;
    }

    public String toString() {
        return com.google.common.base.v.b(d1.class).f("services", com.google.common.collect.z.e(this.f35099b, com.google.common.base.c0.q(com.google.common.base.c0.o(e.class)))).toString();
    }
}
