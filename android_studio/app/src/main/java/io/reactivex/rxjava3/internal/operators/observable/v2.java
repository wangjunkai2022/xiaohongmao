package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.util.NotificationLite;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableReplay.java */
/* loaded from: classes4.dex */
public final class v2<T> extends io.reactivex.rxjava3.observables.a<T> implements io.reactivex.rxjava3.internal.fuseable.i<T> {

    /* renamed from: e  reason: collision with root package name */
    static final b f80249e = new n();

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.l0<T> f80250a;

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<i<T>> f80251b;

    /* renamed from: c  reason: collision with root package name */
    final b<T> f80252c;

    /* renamed from: d  reason: collision with root package name */
    final io.reactivex.rxjava3.core.l0<T> f80253d;

    /* compiled from: ObservableReplay.java */
    /* loaded from: classes4.dex */
    static abstract class a<T> extends AtomicReference<f> implements g<T> {

        /* renamed from: d  reason: collision with root package name */
        private static final long f80254d = 2346567790059478686L;

        /* renamed from: a  reason: collision with root package name */
        f f80255a;

        /* renamed from: b  reason: collision with root package name */
        int f80256b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f80257c;

        a(boolean eagerTruncate) {
            this.f80257c = eagerTruncate;
            f fVar = new f(null);
            this.f80255a = fVar;
            set(fVar);
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.v2.g
        public final void a(Throwable e4) {
            d(new f(h(NotificationLite.error(e4))));
            r();
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.v2.g
        public final void b(T value) {
            d(new f(h(NotificationLite.next(value))));
            q();
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.v2.g
        public final void c(d<T> output) {
            if (output.getAndIncrement() != 0) {
                return;
            }
            int i4 = 1;
            do {
                f fVar = (f) output.a();
                if (fVar == null) {
                    fVar = i();
                    output.f80262c = fVar;
                }
                while (!output.isDisposed()) {
                    f fVar2 = fVar.get();
                    if (fVar2 != null) {
                        if (NotificationLite.accept(l(fVar2.f80267a), output.f80261b)) {
                            output.f80262c = null;
                            return;
                        }
                        fVar = fVar2;
                    } else {
                        output.f80262c = fVar;
                        i4 = output.addAndGet(-i4);
                    }
                }
                output.f80262c = null;
                return;
            } while (i4 != 0);
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.v2.g
        public final void complete() {
            d(new f(h(NotificationLite.complete())));
            r();
        }

        final void d(f n9) {
            this.f80255a.set(n9);
            this.f80255a = n9;
            this.f80256b++;
        }

        final void e(Collection<? super T> output) {
            f i4 = i();
            while (true) {
                i4 = i4.get();
                if (i4 == null) {
                    return;
                }
                Object l10 = l(i4.f80267a);
                if (NotificationLite.isComplete(l10) || NotificationLite.isError(l10)) {
                    return;
                }
                output.add((Object) NotificationLite.getValue(l10));
            }
        }

        Object h(Object value) {
            return value;
        }

        f i() {
            return get();
        }

        boolean j() {
            Object obj = this.f80255a.f80267a;
            return obj != null && NotificationLite.isComplete(l(obj));
        }

        boolean k() {
            Object obj = this.f80255a.f80267a;
            return obj != null && NotificationLite.isError(l(obj));
        }

        Object l(Object value) {
            return value;
        }

        final void m() {
            this.f80256b--;
            o(get().get());
        }

        final void n(int n9) {
            f fVar = get();
            while (n9 > 0) {
                fVar = fVar.get();
                n9--;
                this.f80256b--;
            }
            o(fVar);
            f fVar2 = get();
            if (fVar2.get() == null) {
                this.f80255a = fVar2;
            }
        }

        final void o(f n9) {
            if (this.f80257c) {
                f fVar = new f(null);
                fVar.lazySet(n9.get());
                n9 = fVar;
            }
            set(n9);
        }

        final void p() {
            f fVar = get();
            if (fVar.f80267a != null) {
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
    /* loaded from: classes4.dex */
    public interface b<T> {
        g<T> call();
    }

    /* compiled from: ObservableReplay.java */
    /* loaded from: classes4.dex */
    static final class c<R> implements q7.g<io.reactivex.rxjava3.disposables.f> {

        /* renamed from: a  reason: collision with root package name */
        private final ObserverResourceWrapper<R> f80258a;

        c(ObserverResourceWrapper<R> srw) {
            this.f80258a = srw;
        }

        @Override // q7.g
        /* renamed from: a */
        public void accept(io.reactivex.rxjava3.disposables.f r9) {
            this.f80258a.setResource(r9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableReplay.java */
    /* loaded from: classes4.dex */
    public static final class d<T> extends AtomicInteger implements io.reactivex.rxjava3.disposables.f {

        /* renamed from: e  reason: collision with root package name */
        private static final long f80259e = 2728361546769921047L;

        /* renamed from: a  reason: collision with root package name */
        final i<T> f80260a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f80261b;

        /* renamed from: c  reason: collision with root package name */
        Object f80262c;

        /* renamed from: d  reason: collision with root package name */
        volatile boolean f80263d;

        d(i<T> parent, io.reactivex.rxjava3.core.n0<? super T> child) {
            this.f80260a = parent;
            this.f80261b = child;
        }

        <U> U a() {
            return (U) this.f80262c;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            if (this.f80263d) {
                return;
            }
            this.f80263d = true;
            this.f80260a.b(this);
            this.f80262c = null;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f80263d;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableReplay.java */
    /* loaded from: classes4.dex */
    public static final class e<R, U> extends io.reactivex.rxjava3.core.g0<R> {

        /* renamed from: a  reason: collision with root package name */
        private final q7.s<? extends io.reactivex.rxjava3.observables.a<U>> f80264a;

        /* renamed from: b  reason: collision with root package name */
        private final q7.o<? super io.reactivex.rxjava3.core.g0<U>, ? extends io.reactivex.rxjava3.core.l0<R>> f80265b;

        e(q7.s<? extends io.reactivex.rxjava3.observables.a<U>> connectableFactory, q7.o<? super io.reactivex.rxjava3.core.g0<U>, ? extends io.reactivex.rxjava3.core.l0<R>> selector) {
            this.f80264a = connectableFactory;
            this.f80265b = selector;
        }

        @Override // io.reactivex.rxjava3.core.g0
        protected void d6(io.reactivex.rxjava3.core.n0<? super R> child) {
            try {
                io.reactivex.rxjava3.observables.a<U> aVar = this.f80264a.get();
                Objects.requireNonNull(aVar, "The connectableFactory returned a null ConnectableObservable");
                io.reactivex.rxjava3.observables.a<U> aVar2 = aVar;
                io.reactivex.rxjava3.core.l0<R> apply = this.f80265b.apply(aVar2);
                Objects.requireNonNull(apply, "The selector returned a null ObservableSource");
                io.reactivex.rxjava3.core.l0<R> l0Var = apply;
                ObserverResourceWrapper observerResourceWrapper = new ObserverResourceWrapper(child);
                l0Var.a(observerResourceWrapper);
                aVar2.E8(new c(observerResourceWrapper));
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                EmptyDisposable.error(th, child);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableReplay.java */
    /* loaded from: classes4.dex */
    public static final class f extends AtomicReference<f> {

        /* renamed from: b  reason: collision with root package name */
        private static final long f80266b = 245354315435971818L;

        /* renamed from: a  reason: collision with root package name */
        final Object f80267a;

        f(Object value) {
            this.f80267a = value;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableReplay.java */
    /* loaded from: classes4.dex */
    public interface g<T> {
        void a(Throwable e4);

        void b(T value);

        void c(d<T> output);

        void complete();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableReplay.java */
    /* loaded from: classes4.dex */
    public static final class h<T> implements b<T> {

        /* renamed from: a  reason: collision with root package name */
        final int f80268a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f80269b;

        h(int bufferSize, boolean eagerTruncate) {
            this.f80268a = bufferSize;
            this.f80269b = eagerTruncate;
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.v2.b
        public g<T> call() {
            return new m(this.f80268a, this.f80269b);
        }
    }

    /* compiled from: ObservableReplay.java */
    /* loaded from: classes4.dex */
    static final class i<T> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: f  reason: collision with root package name */
        private static final long f80270f = -533785617179540163L;

        /* renamed from: g  reason: collision with root package name */
        static final d[] f80271g = new d[0];

        /* renamed from: h  reason: collision with root package name */
        static final d[] f80272h = new d[0];

        /* renamed from: a  reason: collision with root package name */
        final g<T> f80273a;

        /* renamed from: b  reason: collision with root package name */
        boolean f80274b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicReference<d[]> f80275c = new AtomicReference<>(f80271g);

        /* renamed from: d  reason: collision with root package name */
        final AtomicBoolean f80276d = new AtomicBoolean();

        /* renamed from: e  reason: collision with root package name */
        final AtomicReference<i<T>> f80277e;

        i(g<T> buffer, AtomicReference<i<T>> current) {
            this.f80273a = buffer;
            this.f80277e = current;
        }

        boolean a(d<T> producer) {
            d[] dVarArr;
            d[] dVarArr2;
            do {
                dVarArr = this.f80275c.get();
                if (dVarArr == f80272h) {
                    return false;
                }
                int length = dVarArr.length;
                dVarArr2 = new d[length + 1];
                System.arraycopy(dVarArr, 0, dVarArr2, 0, length);
                dVarArr2[length] = producer;
            } while (!this.f80275c.compareAndSet(dVarArr, dVarArr2));
            return true;
        }

        void b(d<T> producer) {
            d[] dVarArr;
            d[] dVarArr2;
            do {
                dVarArr = this.f80275c.get();
                int length = dVarArr.length;
                if (length == 0) {
                    return;
                }
                int i4 = -1;
                int i10 = 0;
                while (true) {
                    if (i10 >= length) {
                        break;
                    } else if (dVarArr[i10].equals(producer)) {
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
                    dVarArr2 = f80271g;
                } else {
                    d[] dVarArr3 = new d[length - 1];
                    System.arraycopy(dVarArr, 0, dVarArr3, 0, i4);
                    System.arraycopy(dVarArr, i4 + 1, dVarArr3, i4, (length - i4) - 1);
                    dVarArr2 = dVarArr3;
                }
            } while (!this.f80275c.compareAndSet(dVarArr, dVarArr2));
        }

        void c() {
            for (d<T> dVar : this.f80275c.get()) {
                this.f80273a.c(dVar);
            }
        }

        void d() {
            for (d<T> dVar : this.f80275c.getAndSet(f80272h)) {
                this.f80273a.c(dVar);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f80275c.set(f80272h);
            this.f80277e.compareAndSet(this, null);
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f80275c.get() == f80272h;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            if (this.f80274b) {
                return;
            }
            this.f80274b = true;
            this.f80273a.complete();
            d();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable e4) {
            if (!this.f80274b) {
                this.f80274b = true;
                this.f80273a.a(e4);
                d();
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(e4);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            if (this.f80274b) {
                return;
            }
            this.f80273a.b(t9);
            c();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f p9) {
            if (DisposableHelper.setOnce(this, p9)) {
                c();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableReplay.java */
    /* loaded from: classes4.dex */
    public static final class j<T> implements io.reactivex.rxjava3.core.l0<T> {

        /* renamed from: a  reason: collision with root package name */
        private final AtomicReference<i<T>> f80278a;

        /* renamed from: b  reason: collision with root package name */
        private final b<T> f80279b;

        j(AtomicReference<i<T>> curr, b<T> bufferFactory) {
            this.f80278a = curr;
            this.f80279b = bufferFactory;
        }

        @Override // io.reactivex.rxjava3.core.l0
        public void a(io.reactivex.rxjava3.core.n0<? super T> child) {
            i<T> iVar;
            while (true) {
                iVar = this.f80278a.get();
                if (iVar != null) {
                    break;
                }
                i<T> iVar2 = new i<>(this.f80279b.call(), this.f80278a);
                if (this.f80278a.compareAndSet(null, iVar2)) {
                    iVar = iVar2;
                    break;
                }
            }
            d<T> dVar = new d<>(iVar, child);
            child.onSubscribe(dVar);
            iVar.a(dVar);
            if (dVar.isDisposed()) {
                iVar.b(dVar);
            } else {
                iVar.f80273a.c(dVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableReplay.java */
    /* loaded from: classes4.dex */
    public static final class k<T> implements b<T> {

        /* renamed from: a  reason: collision with root package name */
        private final int f80280a;

        /* renamed from: b  reason: collision with root package name */
        private final long f80281b;

        /* renamed from: c  reason: collision with root package name */
        private final TimeUnit f80282c;

        /* renamed from: d  reason: collision with root package name */
        private final io.reactivex.rxjava3.core.o0 f80283d;

        /* renamed from: e  reason: collision with root package name */
        final boolean f80284e;

        k(int bufferSize, long maxAge, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler, boolean eagerTruncate) {
            this.f80280a = bufferSize;
            this.f80281b = maxAge;
            this.f80282c = unit;
            this.f80283d = scheduler;
            this.f80284e = eagerTruncate;
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.v2.b
        public g<T> call() {
            return new l(this.f80280a, this.f80281b, this.f80282c, this.f80283d, this.f80284e);
        }
    }

    /* compiled from: ObservableReplay.java */
    /* loaded from: classes4.dex */
    static final class l<T> extends a<T> {

        /* renamed from: i  reason: collision with root package name */
        private static final long f80285i = 3457957419649567404L;

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.rxjava3.core.o0 f80286e;

        /* renamed from: f  reason: collision with root package name */
        final long f80287f;

        /* renamed from: g  reason: collision with root package name */
        final TimeUnit f80288g;

        /* renamed from: h  reason: collision with root package name */
        final int f80289h;

        l(int limit, long maxAge, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler, boolean eagerTruncate) {
            super(eagerTruncate);
            this.f80286e = scheduler;
            this.f80289h = limit;
            this.f80287f = maxAge;
            this.f80288g = unit;
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.v2.a
        Object h(Object value) {
            return new io.reactivex.rxjava3.schedulers.d(value, this.f80286e.e(this.f80288g), this.f80288g);
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.v2.a
        f i() {
            f fVar;
            long e4 = this.f80286e.e(this.f80288g) - this.f80287f;
            f fVar2 = get();
            f fVar3 = fVar2.get();
            while (true) {
                f fVar4 = fVar3;
                fVar = fVar2;
                fVar2 = fVar4;
                if (fVar2 != null) {
                    io.reactivex.rxjava3.schedulers.d dVar = (io.reactivex.rxjava3.schedulers.d) fVar2.f80267a;
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

        @Override // io.reactivex.rxjava3.internal.operators.observable.v2.a
        Object l(Object value) {
            return ((io.reactivex.rxjava3.schedulers.d) value).d();
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.v2.a
        void q() {
            f fVar;
            long e4 = this.f80286e.e(this.f80288g) - this.f80287f;
            f fVar2 = get();
            f fVar3 = fVar2.get();
            int i4 = 0;
            while (true) {
                f fVar4 = fVar3;
                fVar = fVar2;
                fVar2 = fVar4;
                int i10 = this.f80256b;
                if (i10 > 1) {
                    if (i10 > this.f80289h) {
                        i4++;
                        this.f80256b = i10 - 1;
                        fVar3 = fVar2.get();
                    } else if (((io.reactivex.rxjava3.schedulers.d) fVar2.f80267a).a() > e4) {
                        break;
                    } else {
                        i4++;
                        this.f80256b--;
                        fVar3 = fVar2.get();
                    }
                } else {
                    break;
                }
            }
            if (i4 != 0) {
                o(fVar);
            }
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.v2.a
        void r() {
            f fVar;
            long e4 = this.f80286e.e(this.f80288g) - this.f80287f;
            f fVar2 = get();
            f fVar3 = fVar2.get();
            int i4 = 0;
            while (true) {
                f fVar4 = fVar3;
                fVar = fVar2;
                fVar2 = fVar4;
                if (this.f80256b <= 1 || ((io.reactivex.rxjava3.schedulers.d) fVar2.f80267a).a() > e4) {
                    break;
                }
                i4++;
                this.f80256b--;
                fVar3 = fVar2.get();
            }
            if (i4 != 0) {
                o(fVar);
            }
        }
    }

    /* compiled from: ObservableReplay.java */
    /* loaded from: classes4.dex */
    static final class m<T> extends a<T> {

        /* renamed from: f  reason: collision with root package name */
        private static final long f80290f = -5898283885385201806L;

        /* renamed from: e  reason: collision with root package name */
        final int f80291e;

        m(int limit, boolean eagerTruncate) {
            super(eagerTruncate);
            this.f80291e = limit;
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.v2.a
        void q() {
            if (this.f80256b > this.f80291e) {
                m();
            }
        }
    }

    /* compiled from: ObservableReplay.java */
    /* loaded from: classes4.dex */
    static final class n implements b<Object> {
        n() {
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.v2.b
        public g<Object> call() {
            return new o(16);
        }
    }

    /* compiled from: ObservableReplay.java */
    /* loaded from: classes4.dex */
    static final class o<T> extends ArrayList<Object> implements g<T> {

        /* renamed from: b  reason: collision with root package name */
        private static final long f80292b = 7063189396499112664L;

        /* renamed from: a  reason: collision with root package name */
        volatile int f80293a;

        o(int capacityHint) {
            super(capacityHint);
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.v2.g
        public void a(Throwable e4) {
            add(NotificationLite.error(e4));
            this.f80293a++;
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.v2.g
        public void b(T value) {
            add(NotificationLite.next(value));
            this.f80293a++;
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.v2.g
        public void c(d<T> output) {
            if (output.getAndIncrement() != 0) {
                return;
            }
            io.reactivex.rxjava3.core.n0<? super T> n0Var = output.f80261b;
            int i4 = 1;
            while (!output.isDisposed()) {
                int i10 = this.f80293a;
                Integer num = (Integer) output.a();
                int intValue = num != null ? num.intValue() : 0;
                while (intValue < i10) {
                    if (NotificationLite.accept(get(intValue), n0Var) || output.isDisposed()) {
                        return;
                    }
                    intValue++;
                }
                output.f80262c = Integer.valueOf(intValue);
                i4 = output.addAndGet(-i4);
                if (i4 == 0) {
                    return;
                }
            }
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.v2.g
        public void complete() {
            add(NotificationLite.complete());
            this.f80293a++;
        }
    }

    private v2(io.reactivex.rxjava3.core.l0<T> onSubscribe, io.reactivex.rxjava3.core.l0<T> source, final AtomicReference<i<T>> current, final b<T> bufferFactory) {
        this.f80253d = onSubscribe;
        this.f80250a = source;
        this.f80251b = current;
        this.f80252c = bufferFactory;
    }

    public static <T> io.reactivex.rxjava3.observables.a<T> M8(io.reactivex.rxjava3.core.l0<T> source, final int bufferSize, boolean eagerTruncate) {
        if (bufferSize == Integer.MAX_VALUE) {
            return Q8(source);
        }
        return P8(source, new h(bufferSize, eagerTruncate));
    }

    public static <T> io.reactivex.rxjava3.observables.a<T> N8(io.reactivex.rxjava3.core.l0<T> source, final long maxAge, final TimeUnit unit, final io.reactivex.rxjava3.core.o0 scheduler, final int bufferSize, boolean eagerTruncate) {
        return P8(source, new k(bufferSize, maxAge, unit, scheduler, eagerTruncate));
    }

    public static <T> io.reactivex.rxjava3.observables.a<T> O8(io.reactivex.rxjava3.core.l0<T> source, long maxAge, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler, boolean eagerTruncate) {
        return N8(source, maxAge, unit, scheduler, Integer.MAX_VALUE, eagerTruncate);
    }

    static <T> io.reactivex.rxjava3.observables.a<T> P8(io.reactivex.rxjava3.core.l0<T> source, final b<T> bufferFactory) {
        AtomicReference atomicReference = new AtomicReference();
        return io.reactivex.rxjava3.plugins.a.U(new v2(new j(atomicReference, bufferFactory), source, atomicReference, bufferFactory));
    }

    public static <T> io.reactivex.rxjava3.observables.a<T> Q8(io.reactivex.rxjava3.core.l0<? extends T> source) {
        return P8(source, f80249e);
    }

    public static <U, R> io.reactivex.rxjava3.core.g0<R> R8(final q7.s<? extends io.reactivex.rxjava3.observables.a<U>> connectableFactory, final q7.o<? super io.reactivex.rxjava3.core.g0<U>, ? extends io.reactivex.rxjava3.core.l0<R>> selector) {
        return io.reactivex.rxjava3.plugins.a.R(new e(connectableFactory, selector));
    }

    @Override // io.reactivex.rxjava3.observables.a
    public void E8(q7.g<? super io.reactivex.rxjava3.disposables.f> connection) {
        i<T> iVar;
        while (true) {
            iVar = this.f80251b.get();
            if (iVar != null && !iVar.isDisposed()) {
                break;
            }
            i<T> iVar2 = new i<>(this.f80252c.call(), this.f80251b);
            if (this.f80251b.compareAndSet(iVar, iVar2)) {
                iVar = iVar2;
                break;
            }
        }
        boolean z9 = !iVar.f80276d.get() && iVar.f80276d.compareAndSet(false, true);
        try {
            connection.accept(iVar);
            if (z9) {
                this.f80250a.a(iVar);
            }
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            if (z9) {
                iVar.f80276d.compareAndSet(true, false);
            }
            io.reactivex.rxjava3.exceptions.a.b(th);
            throw io.reactivex.rxjava3.internal.util.g.i(th);
        }
    }

    @Override // io.reactivex.rxjava3.observables.a
    public void L8() {
        i<T> iVar = this.f80251b.get();
        if (iVar == null || !iVar.isDisposed()) {
            return;
        }
        this.f80251b.compareAndSet(iVar, null);
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(io.reactivex.rxjava3.core.n0<? super T> observer) {
        this.f80253d.a(observer);
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.i
    public io.reactivex.rxjava3.core.l0<T> source() {
        return this.f80250a;
    }
}
