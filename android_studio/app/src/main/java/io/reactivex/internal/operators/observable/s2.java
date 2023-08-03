package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.util.NotificationLite;
import java.util.ArrayList;
import java.util.Collection;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableReplay.java */
/* loaded from: classes3.dex */
public final class s2<T> extends io.reactivex.observables.a<T> implements o7.g<T>, io.reactivex.internal.disposables.c {

    /* renamed from: e  reason: collision with root package name */
    static final b f74721e = new o();

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<T> f74722a;

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<j<T>> f74723b;

    /* renamed from: c  reason: collision with root package name */
    final b<T> f74724c;

    /* renamed from: d  reason: collision with root package name */
    final io.reactivex.e0<T> f74725d;

    /* compiled from: ObservableReplay.java */
    /* loaded from: classes3.dex */
    static abstract class a<T> extends AtomicReference<f> implements h<T> {

        /* renamed from: c  reason: collision with root package name */
        private static final long f74726c = 2346567790059478686L;

        /* renamed from: a  reason: collision with root package name */
        f f74727a;

        /* renamed from: b  reason: collision with root package name */
        int f74728b;

        a() {
            f fVar = new f(null);
            this.f74727a = fVar;
            set(fVar);
        }

        @Override // io.reactivex.internal.operators.observable.s2.h
        public final void a(Throwable th) {
            d(new f(h(NotificationLite.error(th))));
            r();
        }

        @Override // io.reactivex.internal.operators.observable.s2.h
        public final void b(T t9) {
            d(new f(h(NotificationLite.next(t9))));
            q();
        }

        @Override // io.reactivex.internal.operators.observable.s2.h
        public final void c(d<T> dVar) {
            if (dVar.getAndIncrement() != 0) {
                return;
            }
            int i4 = 1;
            do {
                f fVar = (f) dVar.a();
                if (fVar == null) {
                    fVar = i();
                    dVar.f74733c = fVar;
                }
                while (!dVar.isDisposed()) {
                    f fVar2 = fVar.get();
                    if (fVar2 != null) {
                        if (NotificationLite.accept(l(fVar2.f74738a), dVar.f74732b)) {
                            dVar.f74733c = null;
                            return;
                        }
                        fVar = fVar2;
                    } else {
                        dVar.f74733c = fVar;
                        i4 = dVar.addAndGet(-i4);
                    }
                }
                dVar.f74733c = null;
                return;
            } while (i4 != 0);
        }

        @Override // io.reactivex.internal.operators.observable.s2.h
        public final void complete() {
            d(new f(h(NotificationLite.complete())));
            r();
        }

        final void d(f fVar) {
            this.f74727a.set(fVar);
            this.f74727a = fVar;
            this.f74728b++;
        }

        final void e(Collection<? super T> collection) {
            f i4 = i();
            while (true) {
                i4 = i4.get();
                if (i4 == null) {
                    return;
                }
                Object l10 = l(i4.f74738a);
                if (NotificationLite.isComplete(l10) || NotificationLite.isError(l10)) {
                    return;
                }
                collection.add((Object) NotificationLite.getValue(l10));
            }
        }

        Object h(Object obj) {
            return obj;
        }

        f i() {
            return get();
        }

        boolean j() {
            Object obj = this.f74727a.f74738a;
            return obj != null && NotificationLite.isComplete(l(obj));
        }

        boolean k() {
            Object obj = this.f74727a.f74738a;
            return obj != null && NotificationLite.isError(l(obj));
        }

        Object l(Object obj) {
            return obj;
        }

        final void m() {
            this.f74728b--;
            o(get().get());
        }

        final void n(int i4) {
            f fVar = get();
            while (i4 > 0) {
                fVar = fVar.get();
                i4--;
                this.f74728b--;
            }
            o(fVar);
            f fVar2 = get();
            if (fVar2.get() == null) {
                this.f74727a = fVar2;
            }
        }

        final void o(f fVar) {
            set(fVar);
        }

        final void p() {
            f fVar = get();
            if (fVar.f74738a != null) {
                f fVar2 = new f(null);
                fVar2.lazySet(fVar.get());
                set(fVar2);
            }
        }

        abstract void q();

        void r() {
            p();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableReplay.java */
    /* loaded from: classes3.dex */
    public interface b<T> {
        h<T> call();
    }

    /* compiled from: ObservableReplay.java */
    /* loaded from: classes3.dex */
    static final class c<R> implements n7.g<io.reactivex.disposables.c> {

        /* renamed from: a  reason: collision with root package name */
        private final ObserverResourceWrapper<R> f74729a;

        c(ObserverResourceWrapper<R> observerResourceWrapper) {
            this.f74729a = observerResourceWrapper;
        }

        @Override // n7.g
        /* renamed from: a */
        public void accept(io.reactivex.disposables.c cVar) {
            this.f74729a.setResource(cVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableReplay.java */
    /* loaded from: classes3.dex */
    public static final class d<T> extends AtomicInteger implements io.reactivex.disposables.c {

        /* renamed from: e  reason: collision with root package name */
        private static final long f74730e = 2728361546769921047L;

        /* renamed from: a  reason: collision with root package name */
        final j<T> f74731a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.g0<? super T> f74732b;

        /* renamed from: c  reason: collision with root package name */
        Object f74733c;

        /* renamed from: d  reason: collision with root package name */
        volatile boolean f74734d;

        d(j<T> jVar, io.reactivex.g0<? super T> g0Var) {
            this.f74731a = jVar;
            this.f74732b = g0Var;
        }

        <U> U a() {
            return (U) this.f74733c;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            if (this.f74734d) {
                return;
            }
            this.f74734d = true;
            this.f74731a.b(this);
            this.f74733c = null;
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74734d;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableReplay.java */
    /* loaded from: classes3.dex */
    public static final class e<R, U> extends io.reactivex.z<R> {

        /* renamed from: a  reason: collision with root package name */
        private final Callable<? extends io.reactivex.observables.a<U>> f74735a;

        /* renamed from: b  reason: collision with root package name */
        private final n7.o<? super io.reactivex.z<U>, ? extends io.reactivex.e0<R>> f74736b;

        e(Callable<? extends io.reactivex.observables.a<U>> callable, n7.o<? super io.reactivex.z<U>, ? extends io.reactivex.e0<R>> oVar) {
            this.f74735a = callable;
            this.f74736b = oVar;
        }

        @Override // io.reactivex.z
        protected void subscribeActual(io.reactivex.g0<? super R> g0Var) {
            try {
                io.reactivex.observables.a aVar = (io.reactivex.observables.a) io.reactivex.internal.functions.b.g(this.f74735a.call(), "The connectableFactory returned a null ConnectableObservable");
                io.reactivex.e0 e0Var = (io.reactivex.e0) io.reactivex.internal.functions.b.g(this.f74736b.apply(aVar), "The selector returned a null ObservableSource");
                ObserverResourceWrapper observerResourceWrapper = new ObserverResourceWrapper(g0Var);
                e0Var.subscribe(observerResourceWrapper);
                aVar.g(new c(observerResourceWrapper));
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                EmptyDisposable.error(th, g0Var);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableReplay.java */
    /* loaded from: classes3.dex */
    public static final class f extends AtomicReference<f> {

        /* renamed from: b  reason: collision with root package name */
        private static final long f74737b = 245354315435971818L;

        /* renamed from: a  reason: collision with root package name */
        final Object f74738a;

        f(Object obj) {
            this.f74738a = obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableReplay.java */
    /* loaded from: classes3.dex */
    public static final class g<T> extends io.reactivex.observables.a<T> {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.observables.a<T> f74739a;

        /* renamed from: b  reason: collision with root package name */
        private final io.reactivex.z<T> f74740b;

        g(io.reactivex.observables.a<T> aVar, io.reactivex.z<T> zVar) {
            this.f74739a = aVar;
            this.f74740b = zVar;
        }

        @Override // io.reactivex.observables.a
        public void g(n7.g<? super io.reactivex.disposables.c> gVar) {
            this.f74739a.g(gVar);
        }

        @Override // io.reactivex.z
        protected void subscribeActual(io.reactivex.g0<? super T> g0Var) {
            this.f74740b.subscribe(g0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableReplay.java */
    /* loaded from: classes3.dex */
    public interface h<T> {
        void a(Throwable th);

        void b(T t9);

        void c(d<T> dVar);

        void complete();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableReplay.java */
    /* loaded from: classes3.dex */
    public static final class i<T> implements b<T> {

        /* renamed from: a  reason: collision with root package name */
        private final int f74741a;

        i(int i4) {
            this.f74741a = i4;
        }

        @Override // io.reactivex.internal.operators.observable.s2.b
        public h<T> call() {
            return new n(this.f74741a);
        }
    }

    /* compiled from: ObservableReplay.java */
    /* loaded from: classes3.dex */
    static final class j<T> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: e  reason: collision with root package name */
        private static final long f74742e = -533785617179540163L;

        /* renamed from: f  reason: collision with root package name */
        static final d[] f74743f = new d[0];

        /* renamed from: g  reason: collision with root package name */
        static final d[] f74744g = new d[0];

        /* renamed from: a  reason: collision with root package name */
        final h<T> f74745a;

        /* renamed from: b  reason: collision with root package name */
        boolean f74746b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicReference<d[]> f74747c = new AtomicReference<>(f74743f);

        /* renamed from: d  reason: collision with root package name */
        final AtomicBoolean f74748d = new AtomicBoolean();

        j(h<T> hVar) {
            this.f74745a = hVar;
        }

        boolean a(d<T> dVar) {
            d[] dVarArr;
            d[] dVarArr2;
            do {
                dVarArr = this.f74747c.get();
                if (dVarArr == f74744g) {
                    return false;
                }
                int length = dVarArr.length;
                dVarArr2 = new d[length + 1];
                System.arraycopy(dVarArr, 0, dVarArr2, 0, length);
                dVarArr2[length] = dVar;
            } while (!this.f74747c.compareAndSet(dVarArr, dVarArr2));
            return true;
        }

        void b(d<T> dVar) {
            d[] dVarArr;
            d[] dVarArr2;
            do {
                dVarArr = this.f74747c.get();
                int length = dVarArr.length;
                if (length == 0) {
                    return;
                }
                int i4 = -1;
                int i10 = 0;
                while (true) {
                    if (i10 >= length) {
                        break;
                    } else if (dVarArr[i10].equals(dVar)) {
                        i4 = i10;
                        break;
                    } else {
                        i10++;
                    }
                }
                if (i4 < 0) {
                    return;
                }
                if (length == 1) {
                    dVarArr2 = f74743f;
                } else {
                    d[] dVarArr3 = new d[length - 1];
                    System.arraycopy(dVarArr, 0, dVarArr3, 0, i4);
                    System.arraycopy(dVarArr, i4 + 1, dVarArr3, i4, (length - i4) - 1);
                    dVarArr2 = dVarArr3;
                }
            } while (!this.f74747c.compareAndSet(dVarArr, dVarArr2));
        }

        void c() {
            for (d<T> dVar : this.f74747c.get()) {
                this.f74745a.c(dVar);
            }
        }

        void d() {
            for (d<T> dVar : this.f74747c.getAndSet(f74744g)) {
                this.f74745a.c(dVar);
            }
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f74747c.set(f74744g);
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74747c.get() == f74744g;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f74746b) {
                return;
            }
            this.f74746b = true;
            this.f74745a.complete();
            d();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (!this.f74746b) {
                this.f74746b = true;
                this.f74745a.a(th);
                d();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            if (this.f74746b) {
                return;
            }
            this.f74745a.b(t9);
            c();
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.setOnce(this, cVar)) {
                c();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableReplay.java */
    /* loaded from: classes3.dex */
    public static final class k<T> implements io.reactivex.e0<T> {

        /* renamed from: a  reason: collision with root package name */
        private final AtomicReference<j<T>> f74749a;

        /* renamed from: b  reason: collision with root package name */
        private final b<T> f74750b;

        k(AtomicReference<j<T>> atomicReference, b<T> bVar) {
            this.f74749a = atomicReference;
            this.f74750b = bVar;
        }

        @Override // io.reactivex.e0
        public void subscribe(io.reactivex.g0<? super T> g0Var) {
            j<T> jVar;
            while (true) {
                jVar = this.f74749a.get();
                if (jVar != null) {
                    break;
                }
                j<T> jVar2 = new j<>(this.f74750b.call());
                if (this.f74749a.compareAndSet(null, jVar2)) {
                    jVar = jVar2;
                    break;
                }
            }
            d<T> dVar = new d<>(jVar, g0Var);
            g0Var.onSubscribe(dVar);
            jVar.a(dVar);
            if (dVar.isDisposed()) {
                jVar.b(dVar);
            } else {
                jVar.f74745a.c(dVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableReplay.java */
    /* loaded from: classes3.dex */
    public static final class l<T> implements b<T> {

        /* renamed from: a  reason: collision with root package name */
        private final int f74751a;

        /* renamed from: b  reason: collision with root package name */
        private final long f74752b;

        /* renamed from: c  reason: collision with root package name */
        private final TimeUnit f74753c;

        /* renamed from: d  reason: collision with root package name */
        private final io.reactivex.h0 f74754d;

        l(int i4, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
            this.f74751a = i4;
            this.f74752b = j4;
            this.f74753c = timeUnit;
            this.f74754d = h0Var;
        }

        @Override // io.reactivex.internal.operators.observable.s2.b
        public h<T> call() {
            return new m(this.f74751a, this.f74752b, this.f74753c, this.f74754d);
        }
    }

    /* compiled from: ObservableReplay.java */
    /* loaded from: classes3.dex */
    static final class m<T> extends a<T> {

        /* renamed from: h  reason: collision with root package name */
        private static final long f74755h = 3457957419649567404L;

        /* renamed from: d  reason: collision with root package name */
        final io.reactivex.h0 f74756d;

        /* renamed from: e  reason: collision with root package name */
        final long f74757e;

        /* renamed from: f  reason: collision with root package name */
        final TimeUnit f74758f;

        /* renamed from: g  reason: collision with root package name */
        final int f74759g;

        m(int i4, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
            this.f74756d = h0Var;
            this.f74759g = i4;
            this.f74757e = j4;
            this.f74758f = timeUnit;
        }

        @Override // io.reactivex.internal.operators.observable.s2.a
        Object h(Object obj) {
            return new io.reactivex.schedulers.d(obj, this.f74756d.e(this.f74758f), this.f74758f);
        }

        @Override // io.reactivex.internal.operators.observable.s2.a
        f i() {
            f fVar;
            long e4 = this.f74756d.e(this.f74758f) - this.f74757e;
            f fVar2 = get();
            f fVar3 = fVar2.get();
            while (true) {
                f fVar4 = fVar3;
                fVar = fVar2;
                fVar2 = fVar4;
                if (fVar2 != null) {
                    io.reactivex.schedulers.d dVar = (io.reactivex.schedulers.d) fVar2.f74738a;
                    if (NotificationLite.isComplete(dVar.d()) || NotificationLite.isError(dVar.d()) || dVar.a() > e4) {
                        break;
                    }
                    fVar3 = fVar2.get();
                } else {
                    break;
                }
            }
            return fVar;
        }

        @Override // io.reactivex.internal.operators.observable.s2.a
        Object l(Object obj) {
            return ((io.reactivex.schedulers.d) obj).d();
        }

        @Override // io.reactivex.internal.operators.observable.s2.a
        void q() {
            f fVar;
            long e4 = this.f74756d.e(this.f74758f) - this.f74757e;
            f fVar2 = get();
            f fVar3 = fVar2.get();
            int i4 = 0;
            while (true) {
                f fVar4 = fVar3;
                fVar = fVar2;
                fVar2 = fVar4;
                if (fVar2 == null) {
                    break;
                }
                int i10 = this.f74728b;
                if (i10 > this.f74759g && i10 > 1) {
                    i4++;
                    this.f74728b = i10 - 1;
                    fVar3 = fVar2.get();
                } else if (((io.reactivex.schedulers.d) fVar2.f74738a).a() > e4) {
                    break;
                } else {
                    i4++;
                    this.f74728b--;
                    fVar3 = fVar2.get();
                }
            }
            if (i4 != 0) {
                o(fVar);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x003e, code lost:
            o(r3);
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x0041, code lost:
            return;
         */
        @Override // io.reactivex.internal.operators.observable.s2.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        void r() {
            /*
                r10 = this;
                io.reactivex.h0 r0 = r10.f74756d
                java.util.concurrent.TimeUnit r1 = r10.f74758f
                long r0 = r0.e(r1)
                long r2 = r10.f74757e
                long r0 = r0 - r2
                java.lang.Object r2 = r10.get()
                io.reactivex.internal.operators.observable.s2$f r2 = (io.reactivex.internal.operators.observable.s2.f) r2
                java.lang.Object r3 = r2.get()
                io.reactivex.internal.operators.observable.s2$f r3 = (io.reactivex.internal.operators.observable.s2.f) r3
                r4 = 0
            L18:
                r9 = r3
                r3 = r2
                r2 = r9
                if (r2 == 0) goto L3c
                int r5 = r10.f74728b
                r6 = 1
                if (r5 <= r6) goto L3c
                java.lang.Object r5 = r2.f74738a
                io.reactivex.schedulers.d r5 = (io.reactivex.schedulers.d) r5
                long r7 = r5.a()
                int r5 = (r7 > r0 ? 1 : (r7 == r0 ? 0 : -1))
                if (r5 > 0) goto L3c
                int r4 = r4 + 1
                int r3 = r10.f74728b
                int r3 = r3 - r6
                r10.f74728b = r3
                java.lang.Object r3 = r2.get()
                io.reactivex.internal.operators.observable.s2$f r3 = (io.reactivex.internal.operators.observable.s2.f) r3
                goto L18
            L3c:
                if (r4 == 0) goto L41
                r10.o(r3)
            L41:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.observable.s2.m.r():void");
        }
    }

    /* compiled from: ObservableReplay.java */
    /* loaded from: classes3.dex */
    static final class n<T> extends a<T> {

        /* renamed from: e  reason: collision with root package name */
        private static final long f74760e = -5898283885385201806L;

        /* renamed from: d  reason: collision with root package name */
        final int f74761d;

        n(int i4) {
            this.f74761d = i4;
        }

        @Override // io.reactivex.internal.operators.observable.s2.a
        void q() {
            if (this.f74728b > this.f74761d) {
                m();
            }
        }
    }

    /* compiled from: ObservableReplay.java */
    /* loaded from: classes3.dex */
    static final class o implements b<Object> {
        o() {
        }

        @Override // io.reactivex.internal.operators.observable.s2.b
        public h<Object> call() {
            return new p(16);
        }
    }

    /* compiled from: ObservableReplay.java */
    /* loaded from: classes3.dex */
    static final class p<T> extends ArrayList<Object> implements h<T> {

        /* renamed from: b  reason: collision with root package name */
        private static final long f74762b = 7063189396499112664L;

        /* renamed from: a  reason: collision with root package name */
        volatile int f74763a;

        p(int i4) {
            super(i4);
        }

        @Override // io.reactivex.internal.operators.observable.s2.h
        public void a(Throwable th) {
            add(NotificationLite.error(th));
            this.f74763a++;
        }

        @Override // io.reactivex.internal.operators.observable.s2.h
        public void b(T t9) {
            add(NotificationLite.next(t9));
            this.f74763a++;
        }

        @Override // io.reactivex.internal.operators.observable.s2.h
        public void c(d<T> dVar) {
            if (dVar.getAndIncrement() != 0) {
                return;
            }
            io.reactivex.g0<? super T> g0Var = dVar.f74732b;
            int i4 = 1;
            while (!dVar.isDisposed()) {
                int i10 = this.f74763a;
                Integer num = (Integer) dVar.a();
                int intValue = num != null ? num.intValue() : 0;
                while (intValue < i10) {
                    if (NotificationLite.accept(get(intValue), g0Var) || dVar.isDisposed()) {
                        return;
                    }
                    intValue++;
                }
                dVar.f74733c = Integer.valueOf(intValue);
                i4 = dVar.addAndGet(-i4);
                if (i4 == 0) {
                    return;
                }
            }
        }

        @Override // io.reactivex.internal.operators.observable.s2.h
        public void complete() {
            add(NotificationLite.complete());
            this.f74763a++;
        }
    }

    private s2(io.reactivex.e0<T> e0Var, io.reactivex.e0<T> e0Var2, AtomicReference<j<T>> atomicReference, b<T> bVar) {
        this.f74725d = e0Var;
        this.f74722a = e0Var2;
        this.f74723b = atomicReference;
        this.f74724c = bVar;
    }

    public static <T> io.reactivex.observables.a<T> o(io.reactivex.e0<T> e0Var, int i4) {
        if (i4 == Integer.MAX_VALUE) {
            return s(e0Var);
        }
        return r(e0Var, new i(i4));
    }

    public static <T> io.reactivex.observables.a<T> p(io.reactivex.e0<T> e0Var, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
        return q(e0Var, j4, timeUnit, h0Var, Integer.MAX_VALUE);
    }

    public static <T> io.reactivex.observables.a<T> q(io.reactivex.e0<T> e0Var, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var, int i4) {
        return r(e0Var, new l(i4, j4, timeUnit, h0Var));
    }

    static <T> io.reactivex.observables.a<T> r(io.reactivex.e0<T> e0Var, b<T> bVar) {
        AtomicReference atomicReference = new AtomicReference();
        return io.reactivex.plugins.a.U(new s2(new k(atomicReference, bVar), e0Var, atomicReference, bVar));
    }

    public static <T> io.reactivex.observables.a<T> s(io.reactivex.e0<? extends T> e0Var) {
        return r(e0Var, f74721e);
    }

    public static <U, R> io.reactivex.z<R> t(Callable<? extends io.reactivex.observables.a<U>> callable, n7.o<? super io.reactivex.z<U>, ? extends io.reactivex.e0<R>> oVar) {
        return io.reactivex.plugins.a.R(new e(callable, oVar));
    }

    public static <T> io.reactivex.observables.a<T> u(io.reactivex.observables.a<T> aVar, io.reactivex.h0 h0Var) {
        return io.reactivex.plugins.a.U(new g(aVar, aVar.observeOn(h0Var)));
    }

    @Override // io.reactivex.internal.disposables.c
    public void c(io.reactivex.disposables.c cVar) {
        this.f74723b.compareAndSet((j) cVar, null);
    }

    @Override // io.reactivex.observables.a
    public void g(n7.g<? super io.reactivex.disposables.c> gVar) {
        j<T> jVar;
        while (true) {
            jVar = this.f74723b.get();
            if (jVar != null && !jVar.isDisposed()) {
                break;
            }
            j<T> jVar2 = new j<>(this.f74724c.call());
            if (this.f74723b.compareAndSet(jVar, jVar2)) {
                jVar = jVar2;
                break;
            }
        }
        boolean z9 = !jVar.f74748d.get() && jVar.f74748d.compareAndSet(false, true);
        try {
            gVar.accept(jVar);
            if (z9) {
                this.f74722a.subscribe(jVar);
            }
        } catch (Throwable th) {
            if (z9) {
                jVar.f74748d.compareAndSet(true, false);
            }
            io.reactivex.exceptions.a.b(th);
            throw io.reactivex.internal.util.g.f(th);
        }
    }

    @Override // o7.g
    public io.reactivex.e0<T> source() {
        return this.f74722a;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        this.f74725d.subscribe(g0Var);
    }
}
