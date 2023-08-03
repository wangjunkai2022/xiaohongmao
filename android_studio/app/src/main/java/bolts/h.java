package bolts;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: Task.java */
/* loaded from: classes.dex */
public class h<TResult> {

    /* renamed from: l  reason: collision with root package name */
    private static volatile q f3044l;

    /* renamed from: b  reason: collision with root package name */
    private boolean f3050b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f3051c;

    /* renamed from: d  reason: collision with root package name */
    private TResult f3052d;

    /* renamed from: e  reason: collision with root package name */
    private Exception f3053e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f3054f;

    /* renamed from: g  reason: collision with root package name */
    private bolts.j f3055g;

    /* renamed from: i  reason: collision with root package name */
    public static final ExecutorService f3041i = bolts.b.a();

    /* renamed from: j  reason: collision with root package name */
    private static final Executor f3042j = bolts.b.b();

    /* renamed from: k  reason: collision with root package name */
    public static final Executor f3043k = bolts.a.d();

    /* renamed from: m  reason: collision with root package name */
    private static h<?> f3045m = new h<>((Object) null);

    /* renamed from: n  reason: collision with root package name */
    private static h<Boolean> f3046n = new h<>(Boolean.TRUE);

    /* renamed from: o  reason: collision with root package name */
    private static h<Boolean> f3047o = new h<>(Boolean.FALSE);

    /* renamed from: p  reason: collision with root package name */
    private static h<?> f3048p = new h<>(true);

    /* renamed from: a  reason: collision with root package name */
    private final Object f3049a = new Object();

    /* renamed from: h  reason: collision with root package name */
    private List<bolts.g<TResult, Void>> f3056h = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Task.java */
    /* loaded from: classes.dex */
    public class a implements bolts.g<TResult, Void> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ bolts.i f3057a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ bolts.g f3058b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Executor f3059c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ bolts.c f3060d;

        a(bolts.i iVar, bolts.g gVar, Executor executor, bolts.c cVar) {
            this.f3057a = iVar;
            this.f3058b = gVar;
            this.f3059c = executor;
            this.f3060d = cVar;
        }

        @Override // bolts.g
        /* renamed from: b */
        public Void a(h<TResult> hVar) {
            h.l(this.f3057a, this.f3058b, hVar, this.f3059c, this.f3060d);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Task.java */
    /* loaded from: classes.dex */
    public class b implements bolts.g<TResult, Void> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ bolts.i f3062a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ bolts.g f3063b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Executor f3064c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ bolts.c f3065d;

        b(bolts.i iVar, bolts.g gVar, Executor executor, bolts.c cVar) {
            this.f3062a = iVar;
            this.f3063b = gVar;
            this.f3064c = executor;
            this.f3065d = cVar;
        }

        @Override // bolts.g
        /* renamed from: b */
        public Void a(h<TResult> hVar) {
            h.k(this.f3062a, this.f3063b, hVar, this.f3064c, this.f3065d);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Task.java */
    /* loaded from: classes.dex */
    public class c implements bolts.g<TResult, h<TContinuationResult>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ bolts.c f3067a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ bolts.g f3068b;

        c(bolts.c cVar, bolts.g gVar) {
            this.f3067a = cVar;
            this.f3068b = gVar;
        }

        @Override // bolts.g
        /* renamed from: b */
        public h<TContinuationResult> a(h<TResult> hVar) {
            bolts.c cVar = this.f3067a;
            if (cVar != null && cVar.a()) {
                return h.i();
            }
            if (hVar.J()) {
                return h.C(hVar.E());
            }
            if (hVar.H()) {
                return h.i();
            }
            return hVar.q(this.f3068b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Task.java */
    /* loaded from: classes.dex */
    public class d implements bolts.g<TResult, h<TContinuationResult>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ bolts.c f3070a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ bolts.g f3071b;

        d(bolts.c cVar, bolts.g gVar) {
            this.f3070a = cVar;
            this.f3071b = gVar;
        }

        @Override // bolts.g
        /* renamed from: b */
        public h<TContinuationResult> a(h<TResult> hVar) {
            bolts.c cVar = this.f3070a;
            if (cVar != null && cVar.a()) {
                return h.i();
            }
            if (hVar.J()) {
                return h.C(hVar.E());
            }
            if (hVar.H()) {
                return h.i();
            }
            return hVar.u(this.f3071b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Task.java */
    /* loaded from: classes.dex */
    public static class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ bolts.c f3073a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ bolts.i f3074b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ bolts.g f3075c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ h f3076d;

        e(bolts.c cVar, bolts.i iVar, bolts.g gVar, h hVar) {
            this.f3073a = cVar;
            this.f3074b = iVar;
            this.f3075c = gVar;
            this.f3076d = hVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            bolts.c cVar = this.f3073a;
            if (cVar != null && cVar.a()) {
                this.f3074b.b();
                return;
            }
            try {
                this.f3074b.d(this.f3075c.a(this.f3076d));
            } catch (CancellationException unused) {
                this.f3074b.b();
            } catch (Exception e4) {
                this.f3074b.c(e4);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Task.java */
    /* loaded from: classes.dex */
    public static class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ bolts.c f3077a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ bolts.i f3078b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ bolts.g f3079c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ h f3080d;

        /* compiled from: Task.java */
        /* loaded from: classes.dex */
        class a implements bolts.g<TContinuationResult, Void> {
            a() {
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // bolts.g
            /* renamed from: b */
            public Void a(h<TContinuationResult> hVar) {
                bolts.c cVar = f.this.f3077a;
                if (cVar != null && cVar.a()) {
                    f.this.f3078b.b();
                    return null;
                }
                if (hVar.H()) {
                    f.this.f3078b.b();
                } else if (hVar.J()) {
                    f.this.f3078b.c(hVar.E());
                } else {
                    f.this.f3078b.d(hVar.F());
                }
                return null;
            }
        }

        f(bolts.c cVar, bolts.i iVar, bolts.g gVar, h hVar) {
            this.f3077a = cVar;
            this.f3078b = iVar;
            this.f3079c = gVar;
            this.f3080d = hVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            bolts.c cVar = this.f3077a;
            if (cVar != null && cVar.a()) {
                this.f3078b.b();
                return;
            }
            try {
                h hVar = (h) this.f3079c.a(this.f3080d);
                if (hVar == null) {
                    this.f3078b.d(null);
                } else {
                    hVar.q(new a());
                }
            } catch (CancellationException unused) {
                this.f3078b.b();
            } catch (Exception e4) {
                this.f3078b.c(e4);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Task.java */
    /* loaded from: classes.dex */
    public static class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ bolts.i f3082a;

        g(bolts.i iVar) {
            this.f3082a = iVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f3082a.g(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Task.java */
    /* renamed from: bolts.h$h  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class RunnableC0026h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ScheduledFuture f3083a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ bolts.i f3084b;

        RunnableC0026h(ScheduledFuture scheduledFuture, bolts.i iVar) {
            this.f3083a = scheduledFuture;
            this.f3084b = iVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f3083a.cancel(true);
            this.f3084b.e();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Task.java */
    /* loaded from: classes.dex */
    public class i implements bolts.g<TResult, h<Void>> {
        i() {
        }

        @Override // bolts.g
        /* renamed from: b */
        public h<Void> a(h<TResult> hVar) throws Exception {
            if (hVar.H()) {
                return h.i();
            }
            if (hVar.J()) {
                return h.C(hVar.E());
            }
            return h.D(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Task.java */
    /* loaded from: classes.dex */
    public static class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ bolts.c f3086a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ bolts.i f3087b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Callable f3088c;

        j(bolts.c cVar, bolts.i iVar, Callable callable) {
            this.f3086a = cVar;
            this.f3087b = iVar;
            this.f3088c = callable;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            bolts.c cVar = this.f3086a;
            if (cVar != null && cVar.a()) {
                this.f3087b.b();
                return;
            }
            try {
                this.f3087b.d(this.f3088c.call());
            } catch (CancellationException unused) {
                this.f3087b.b();
            } catch (Exception e4) {
                this.f3087b.c(e4);
            }
        }
    }

    /* compiled from: Task.java */
    /* loaded from: classes.dex */
    static class k implements bolts.g<TResult, Void> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AtomicBoolean f3089a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ bolts.i f3090b;

        k(AtomicBoolean atomicBoolean, bolts.i iVar) {
            this.f3089a = atomicBoolean;
            this.f3090b = iVar;
        }

        @Override // bolts.g
        /* renamed from: b */
        public Void a(h<TResult> hVar) {
            if (this.f3089a.compareAndSet(false, true)) {
                this.f3090b.d(hVar);
                return null;
            }
            hVar.E();
            return null;
        }
    }

    /* compiled from: Task.java */
    /* loaded from: classes.dex */
    static class l implements bolts.g<Object, Void> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AtomicBoolean f3091a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ bolts.i f3092b;

        l(AtomicBoolean atomicBoolean, bolts.i iVar) {
            this.f3091a = atomicBoolean;
            this.f3092b = iVar;
        }

        @Override // bolts.g
        /* renamed from: b */
        public Void a(h<Object> hVar) {
            if (this.f3091a.compareAndSet(false, true)) {
                this.f3092b.d(hVar);
                return null;
            }
            hVar.E();
            return null;
        }
    }

    /* compiled from: Task.java */
    /* loaded from: classes.dex */
    static class m implements bolts.g<Void, List<TResult>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Collection f3093a;

        m(Collection collection) {
            this.f3093a = collection;
        }

        @Override // bolts.g
        /* renamed from: b */
        public List<TResult> a(h<Void> hVar) throws Exception {
            if (this.f3093a.size() == 0) {
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            for (h hVar2 : this.f3093a) {
                arrayList.add(hVar2.F());
            }
            return arrayList;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Task.java */
    /* loaded from: classes.dex */
    public static class n implements bolts.g<Object, Void> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f3094a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ArrayList f3095b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ AtomicBoolean f3096c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ AtomicInteger f3097d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ bolts.i f3098e;

        n(Object obj, ArrayList arrayList, AtomicBoolean atomicBoolean, AtomicInteger atomicInteger, bolts.i iVar) {
            this.f3094a = obj;
            this.f3095b = arrayList;
            this.f3096c = atomicBoolean;
            this.f3097d = atomicInteger;
            this.f3098e = iVar;
        }

        @Override // bolts.g
        /* renamed from: b */
        public Void a(h<Object> hVar) {
            if (hVar.J()) {
                synchronized (this.f3094a) {
                    this.f3095b.add(hVar.E());
                }
            }
            if (hVar.H()) {
                this.f3096c.set(true);
            }
            if (this.f3097d.decrementAndGet() == 0) {
                if (this.f3095b.size() != 0) {
                    if (this.f3095b.size() == 1) {
                        this.f3098e.c((Exception) this.f3095b.get(0));
                    } else {
                        this.f3098e.c(new AggregateException(String.format("There were %d exceptions.", Integer.valueOf(this.f3095b.size())), this.f3095b));
                    }
                } else if (this.f3096c.get()) {
                    this.f3098e.b();
                } else {
                    this.f3098e.d(null);
                }
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Task.java */
    /* loaded from: classes.dex */
    public class o implements bolts.g<Void, h<Void>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ bolts.c f3099a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Callable f3100b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ bolts.g f3101c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Executor f3102d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ bolts.f f3103e;

        o(bolts.c cVar, Callable callable, bolts.g gVar, Executor executor, bolts.f fVar) {
            this.f3099a = cVar;
            this.f3100b = callable;
            this.f3101c = gVar;
            this.f3102d = executor;
            this.f3103e = fVar;
        }

        @Override // bolts.g
        /* renamed from: b */
        public h<Void> a(h<Void> hVar) throws Exception {
            bolts.c cVar = this.f3099a;
            if (cVar != null && cVar.a()) {
                return h.i();
            }
            if (((Boolean) this.f3100b.call()).booleanValue()) {
                return h.D(null).R(this.f3101c, this.f3102d).R((bolts.g) this.f3103e.a(), this.f3102d);
            }
            return h.D(null);
        }
    }

    /* compiled from: Task.java */
    /* loaded from: classes.dex */
    public class p extends bolts.i<TResult> {
        p() {
        }
    }

    /* compiled from: Task.java */
    /* loaded from: classes.dex */
    public interface q {
        void a(h<?> hVar, UnobservedTaskException unobservedTaskException);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h() {
    }

    public static h<Void> A(long j4, bolts.c cVar) {
        return B(j4, bolts.b.d(), cVar);
    }

    static h<Void> B(long j4, ScheduledExecutorService scheduledExecutorService, bolts.c cVar) {
        if (cVar == null || !cVar.a()) {
            if (j4 <= 0) {
                return D(null);
            }
            bolts.i iVar = new bolts.i();
            ScheduledFuture<?> schedule = scheduledExecutorService.schedule(new g(iVar), j4, TimeUnit.MILLISECONDS);
            if (cVar != null) {
                cVar.b(new RunnableC0026h(schedule, iVar));
            }
            return iVar.a();
        }
        return i();
    }

    public static <TResult> h<TResult> C(Exception exc) {
        bolts.i iVar = new bolts.i();
        iVar.c(exc);
        return iVar.a();
    }

    public static <TResult> h<TResult> D(TResult tresult) {
        if (tresult == null) {
            return (h<TResult>) f3045m;
        }
        if (tresult instanceof Boolean) {
            return ((Boolean) tresult).booleanValue() ? (h<TResult>) f3046n : (h<TResult>) f3047o;
        }
        bolts.i iVar = new bolts.i();
        iVar.d(tresult);
        return iVar.a();
    }

    public static q G() {
        return f3044l;
    }

    private void T() {
        synchronized (this.f3049a) {
            for (bolts.g<TResult, Void> gVar : this.f3056h) {
                try {
                    gVar.a(this);
                } catch (RuntimeException e4) {
                    throw e4;
                } catch (Exception e10) {
                    throw new RuntimeException(e10);
                }
            }
            this.f3056h = null;
        }
    }

    public static void U(q qVar) {
        f3044l = qVar;
    }

    public static h<Void> a0(Collection<? extends h<?>> collection) {
        if (collection.size() == 0) {
            return D(null);
        }
        bolts.i iVar = new bolts.i();
        ArrayList arrayList = new ArrayList();
        Object obj = new Object();
        AtomicInteger atomicInteger = new AtomicInteger(collection.size());
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        for (h<?> hVar : collection) {
            hVar.q(new n(obj, arrayList, atomicBoolean, atomicInteger, iVar));
        }
        return iVar.a();
    }

    public static <TResult> h<List<TResult>> b0(Collection<? extends h<TResult>> collection) {
        return (h<List<TResult>>) a0(collection).L(new m(collection));
    }

    public static <TResult> h<TResult> c(Callable<TResult> callable) {
        return f(callable, f3042j, null);
    }

    public static h<h<?>> c0(Collection<? extends h<?>> collection) {
        if (collection.size() == 0) {
            return D(null);
        }
        bolts.i iVar = new bolts.i();
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        for (h<?> hVar : collection) {
            hVar.q(new l(atomicBoolean, iVar));
        }
        return iVar.a();
    }

    public static <TResult> h<TResult> d(Callable<TResult> callable, bolts.c cVar) {
        return f(callable, f3042j, cVar);
    }

    public static <TResult> h<h<TResult>> d0(Collection<? extends h<TResult>> collection) {
        if (collection.size() == 0) {
            return D(null);
        }
        bolts.i iVar = new bolts.i();
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        for (h<TResult> hVar : collection) {
            hVar.q(new k(atomicBoolean, iVar));
        }
        return iVar.a();
    }

    public static <TResult> h<TResult> e(Callable<TResult> callable, Executor executor) {
        return f(callable, executor, null);
    }

    public static <TResult> h<TResult> f(Callable<TResult> callable, Executor executor, bolts.c cVar) {
        bolts.i iVar = new bolts.i();
        try {
            executor.execute(new j(cVar, iVar, callable));
        } catch (Exception e4) {
            iVar.c(new ExecutorException(e4));
        }
        return iVar.a();
    }

    public static <TResult> h<TResult> g(Callable<TResult> callable) {
        return f(callable, f3041i, null);
    }

    public static <TResult> h<TResult> h(Callable<TResult> callable, bolts.c cVar) {
        return f(callable, f3041i, cVar);
    }

    public static <TResult> h<TResult> i() {
        return (h<TResult>) f3048p;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <TContinuationResult, TResult> void k(bolts.i<TContinuationResult> iVar, bolts.g<TResult, h<TContinuationResult>> gVar, h<TResult> hVar, Executor executor, bolts.c cVar) {
        try {
            executor.execute(new f(cVar, iVar, gVar, hVar));
        } catch (Exception e4) {
            iVar.c(new ExecutorException(e4));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <TContinuationResult, TResult> void l(bolts.i<TContinuationResult> iVar, bolts.g<TResult, TContinuationResult> gVar, h<TResult> hVar, Executor executor, bolts.c cVar) {
        try {
            executor.execute(new e(cVar, iVar, gVar, hVar));
        } catch (Exception e4) {
            iVar.c(new ExecutorException(e4));
        }
    }

    public static <TResult> h<TResult>.p y() {
        return new p();
    }

    public static h<Void> z(long j4) {
        return B(j4, bolts.b.d(), null);
    }

    public Exception E() {
        Exception exc;
        synchronized (this.f3049a) {
            if (this.f3053e != null) {
                this.f3054f = true;
                bolts.j jVar = this.f3055g;
                if (jVar != null) {
                    jVar.a();
                    this.f3055g = null;
                }
            }
            exc = this.f3053e;
        }
        return exc;
    }

    public TResult F() {
        TResult tresult;
        synchronized (this.f3049a) {
            tresult = this.f3052d;
        }
        return tresult;
    }

    public boolean H() {
        boolean z9;
        synchronized (this.f3049a) {
            z9 = this.f3051c;
        }
        return z9;
    }

    public boolean I() {
        boolean z9;
        synchronized (this.f3049a) {
            z9 = this.f3050b;
        }
        return z9;
    }

    public boolean J() {
        boolean z9;
        synchronized (this.f3049a) {
            z9 = E() != null;
        }
        return z9;
    }

    public h<Void> K() {
        return u(new i());
    }

    public <TContinuationResult> h<TContinuationResult> L(bolts.g<TResult, TContinuationResult> gVar) {
        return O(gVar, f3042j, null);
    }

    public <TContinuationResult> h<TContinuationResult> M(bolts.g<TResult, TContinuationResult> gVar, bolts.c cVar) {
        return O(gVar, f3042j, cVar);
    }

    public <TContinuationResult> h<TContinuationResult> N(bolts.g<TResult, TContinuationResult> gVar, Executor executor) {
        return O(gVar, executor, null);
    }

    public <TContinuationResult> h<TContinuationResult> O(bolts.g<TResult, TContinuationResult> gVar, Executor executor, bolts.c cVar) {
        return w(new c(cVar, gVar), executor);
    }

    public <TContinuationResult> h<TContinuationResult> P(bolts.g<TResult, h<TContinuationResult>> gVar) {
        return R(gVar, f3042j);
    }

    public <TContinuationResult> h<TContinuationResult> Q(bolts.g<TResult, h<TContinuationResult>> gVar, bolts.c cVar) {
        return S(gVar, f3042j, cVar);
    }

    public <TContinuationResult> h<TContinuationResult> R(bolts.g<TResult, h<TContinuationResult>> gVar, Executor executor) {
        return S(gVar, executor, null);
    }

    public <TContinuationResult> h<TContinuationResult> S(bolts.g<TResult, h<TContinuationResult>> gVar, Executor executor, bolts.c cVar) {
        return w(new d(cVar, gVar), executor);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean V() {
        synchronized (this.f3049a) {
            if (this.f3050b) {
                return false;
            }
            this.f3050b = true;
            this.f3051c = true;
            this.f3049a.notifyAll();
            T();
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean W(Exception exc) {
        synchronized (this.f3049a) {
            if (this.f3050b) {
                return false;
            }
            this.f3050b = true;
            this.f3053e = exc;
            this.f3054f = false;
            this.f3049a.notifyAll();
            T();
            if (!this.f3054f && G() != null) {
                this.f3055g = new bolts.j(this);
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean X(TResult tresult) {
        synchronized (this.f3049a) {
            if (this.f3050b) {
                return false;
            }
            this.f3050b = true;
            this.f3052d = tresult;
            this.f3049a.notifyAll();
            T();
            return true;
        }
    }

    public void Y() throws InterruptedException {
        synchronized (this.f3049a) {
            if (!I()) {
                this.f3049a.wait();
            }
        }
    }

    public boolean Z(long j4, TimeUnit timeUnit) throws InterruptedException {
        boolean I;
        synchronized (this.f3049a) {
            if (!I()) {
                this.f3049a.wait(timeUnit.toMillis(j4));
            }
            I = I();
        }
        return I;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <TOut> h<TOut> j() {
        return this;
    }

    public h<Void> m(Callable<Boolean> callable, bolts.g<Void, h<Void>> gVar) {
        return p(callable, gVar, f3042j, null);
    }

    public h<Void> n(Callable<Boolean> callable, bolts.g<Void, h<Void>> gVar, bolts.c cVar) {
        return p(callable, gVar, f3042j, cVar);
    }

    public h<Void> o(Callable<Boolean> callable, bolts.g<Void, h<Void>> gVar, Executor executor) {
        return p(callable, gVar, executor, null);
    }

    public h<Void> p(Callable<Boolean> callable, bolts.g<Void, h<Void>> gVar, Executor executor, bolts.c cVar) {
        bolts.f fVar = new bolts.f();
        fVar.b(new o(cVar, callable, gVar, executor, fVar));
        return K().w((bolts.g) fVar.a(), executor);
    }

    public <TContinuationResult> h<TContinuationResult> q(bolts.g<TResult, TContinuationResult> gVar) {
        return t(gVar, f3042j, null);
    }

    public <TContinuationResult> h<TContinuationResult> r(bolts.g<TResult, TContinuationResult> gVar, bolts.c cVar) {
        return t(gVar, f3042j, cVar);
    }

    public <TContinuationResult> h<TContinuationResult> s(bolts.g<TResult, TContinuationResult> gVar, Executor executor) {
        return t(gVar, executor, null);
    }

    public <TContinuationResult> h<TContinuationResult> t(bolts.g<TResult, TContinuationResult> gVar, Executor executor, bolts.c cVar) {
        boolean I;
        bolts.i iVar = new bolts.i();
        synchronized (this.f3049a) {
            I = I();
            if (!I) {
                this.f3056h.add(new a(iVar, gVar, executor, cVar));
            }
        }
        if (I) {
            l(iVar, gVar, this, executor, cVar);
        }
        return iVar.a();
    }

    public <TContinuationResult> h<TContinuationResult> u(bolts.g<TResult, h<TContinuationResult>> gVar) {
        return x(gVar, f3042j, null);
    }

    public <TContinuationResult> h<TContinuationResult> v(bolts.g<TResult, h<TContinuationResult>> gVar, bolts.c cVar) {
        return x(gVar, f3042j, cVar);
    }

    public <TContinuationResult> h<TContinuationResult> w(bolts.g<TResult, h<TContinuationResult>> gVar, Executor executor) {
        return x(gVar, executor, null);
    }

    public <TContinuationResult> h<TContinuationResult> x(bolts.g<TResult, h<TContinuationResult>> gVar, Executor executor, bolts.c cVar) {
        boolean I;
        bolts.i iVar = new bolts.i();
        synchronized (this.f3049a) {
            I = I();
            if (!I) {
                this.f3056h.add(new b(iVar, gVar, executor, cVar));
            }
        }
        if (I) {
            k(iVar, gVar, this, executor, cVar);
        }
        return iVar.a();
    }

    private h(TResult tresult) {
        X(tresult);
    }

    private h(boolean z9) {
        if (z9) {
            V();
        } else {
            X(null);
        }
    }
}
