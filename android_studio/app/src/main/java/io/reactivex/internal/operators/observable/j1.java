package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableGroupJoin.java */
/* loaded from: classes3.dex */
public final class j1<TLeft, TRight, TLeftEnd, TRightEnd, R> extends io.reactivex.internal.operators.observable.a<TLeft, R> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.e0<? extends TRight> f74270b;

    /* renamed from: c  reason: collision with root package name */
    final n7.o<? super TLeft, ? extends io.reactivex.e0<TLeftEnd>> f74271c;

    /* renamed from: d  reason: collision with root package name */
    final n7.o<? super TRight, ? extends io.reactivex.e0<TRightEnd>> f74272d;

    /* renamed from: e  reason: collision with root package name */
    final n7.c<? super TLeft, ? super io.reactivex.z<TRight>, ? extends R> f74273e;

    /* compiled from: ObservableGroupJoin.java */
    /* loaded from: classes3.dex */
    static final class a<TLeft, TRight, TLeftEnd, TRightEnd, R> extends AtomicInteger implements io.reactivex.disposables.c, b {

        /* renamed from: n  reason: collision with root package name */
        private static final long f74274n = -6071216598687999801L;

        /* renamed from: o  reason: collision with root package name */
        static final Integer f74275o = 1;

        /* renamed from: p  reason: collision with root package name */
        static final Integer f74276p = 2;

        /* renamed from: q  reason: collision with root package name */
        static final Integer f74277q = 3;

        /* renamed from: r  reason: collision with root package name */
        static final Integer f74278r = 4;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super R> f74279a;

        /* renamed from: g  reason: collision with root package name */
        final n7.o<? super TLeft, ? extends io.reactivex.e0<TLeftEnd>> f74285g;

        /* renamed from: h  reason: collision with root package name */
        final n7.o<? super TRight, ? extends io.reactivex.e0<TRightEnd>> f74286h;

        /* renamed from: i  reason: collision with root package name */
        final n7.c<? super TLeft, ? super io.reactivex.z<TRight>, ? extends R> f74287i;

        /* renamed from: k  reason: collision with root package name */
        int f74289k;

        /* renamed from: l  reason: collision with root package name */
        int f74290l;

        /* renamed from: m  reason: collision with root package name */
        volatile boolean f74291m;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.disposables.b f74281c = new io.reactivex.disposables.b();

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.internal.queue.b<Object> f74280b = new io.reactivex.internal.queue.b<>(io.reactivex.z.bufferSize());

        /* renamed from: d  reason: collision with root package name */
        final Map<Integer, io.reactivex.subjects.j<TRight>> f74282d = new LinkedHashMap();

        /* renamed from: e  reason: collision with root package name */
        final Map<Integer, TRight> f74283e = new LinkedHashMap();

        /* renamed from: f  reason: collision with root package name */
        final AtomicReference<Throwable> f74284f = new AtomicReference<>();

        /* renamed from: j  reason: collision with root package name */
        final AtomicInteger f74288j = new AtomicInteger(2);

        a(io.reactivex.g0<? super R> g0Var, n7.o<? super TLeft, ? extends io.reactivex.e0<TLeftEnd>> oVar, n7.o<? super TRight, ? extends io.reactivex.e0<TRightEnd>> oVar2, n7.c<? super TLeft, ? super io.reactivex.z<TRight>, ? extends R> cVar) {
            this.f74279a = g0Var;
            this.f74285g = oVar;
            this.f74286h = oVar2;
            this.f74287i = cVar;
        }

        @Override // io.reactivex.internal.operators.observable.j1.b
        public void a(Throwable th) {
            if (io.reactivex.internal.util.g.a(this.f74284f, th)) {
                this.f74288j.decrementAndGet();
                i();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.internal.operators.observable.j1.b
        public void b(boolean z9, Object obj) {
            synchronized (this) {
                this.f74280b.offer(z9 ? f74275o : f74276p, obj);
            }
            i();
        }

        @Override // io.reactivex.internal.operators.observable.j1.b
        public void c(Throwable th) {
            if (io.reactivex.internal.util.g.a(this.f74284f, th)) {
                i();
            } else {
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // io.reactivex.internal.operators.observable.j1.b
        public void d(boolean z9, c cVar) {
            synchronized (this) {
                this.f74280b.offer(z9 ? f74277q : f74278r, cVar);
            }
            i();
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            if (this.f74291m) {
                return;
            }
            this.f74291m = true;
            h();
            if (getAndIncrement() == 0) {
                this.f74280b.clear();
            }
        }

        @Override // io.reactivex.internal.operators.observable.j1.b
        public void e(d dVar) {
            this.f74281c.c(dVar);
            this.f74288j.decrementAndGet();
            i();
        }

        void h() {
            this.f74281c.dispose();
        }

        /* JADX WARN: Multi-variable type inference failed */
        void i() {
            if (getAndIncrement() != 0) {
                return;
            }
            io.reactivex.internal.queue.b<?> bVar = this.f74280b;
            io.reactivex.g0<? super R> g0Var = this.f74279a;
            int i4 = 1;
            while (!this.f74291m) {
                if (this.f74284f.get() != null) {
                    bVar.clear();
                    h();
                    j(g0Var);
                    return;
                }
                boolean z9 = this.f74288j.get() == 0;
                Integer num = (Integer) bVar.poll();
                boolean z10 = num == null;
                if (z9 && z10) {
                    for (io.reactivex.subjects.j<TRight> jVar : this.f74282d.values()) {
                        jVar.onComplete();
                    }
                    this.f74282d.clear();
                    this.f74283e.clear();
                    this.f74281c.dispose();
                    g0Var.onComplete();
                    return;
                } else if (z10) {
                    i4 = addAndGet(-i4);
                    if (i4 == 0) {
                        return;
                    }
                } else {
                    Object poll = bVar.poll();
                    if (num == f74275o) {
                        io.reactivex.subjects.j<TRight> h4 = io.reactivex.subjects.j.h();
                        int i10 = this.f74289k;
                        this.f74289k = i10 + 1;
                        this.f74282d.put(Integer.valueOf(i10), h4);
                        try {
                            io.reactivex.e0 e0Var = (io.reactivex.e0) io.reactivex.internal.functions.b.g(this.f74285g.apply(poll), "The leftEnd returned a null ObservableSource");
                            c cVar = new c(this, true, i10);
                            this.f74281c.b(cVar);
                            e0Var.subscribe(cVar);
                            if (this.f74284f.get() != null) {
                                bVar.clear();
                                h();
                                j(g0Var);
                                return;
                            }
                            try {
                                g0Var.onNext((Object) io.reactivex.internal.functions.b.g(this.f74287i.apply(poll, h4), "The resultSelector returned a null value"));
                                for (TRight tright : this.f74283e.values()) {
                                    h4.onNext(tright);
                                }
                            } catch (Throwable th) {
                                k(th, g0Var, bVar);
                                return;
                            }
                        } catch (Throwable th2) {
                            k(th2, g0Var, bVar);
                            return;
                        }
                    } else if (num == f74276p) {
                        int i11 = this.f74290l;
                        this.f74290l = i11 + 1;
                        this.f74283e.put(Integer.valueOf(i11), poll);
                        try {
                            io.reactivex.e0 e0Var2 = (io.reactivex.e0) io.reactivex.internal.functions.b.g(this.f74286h.apply(poll), "The rightEnd returned a null ObservableSource");
                            c cVar2 = new c(this, false, i11);
                            this.f74281c.b(cVar2);
                            e0Var2.subscribe(cVar2);
                            if (this.f74284f.get() != null) {
                                bVar.clear();
                                h();
                                j(g0Var);
                                return;
                            }
                            for (io.reactivex.subjects.j<TRight> jVar2 : this.f74282d.values()) {
                                jVar2.onNext(poll);
                            }
                        } catch (Throwable th3) {
                            k(th3, g0Var, bVar);
                            return;
                        }
                    } else if (num == f74277q) {
                        c cVar3 = (c) poll;
                        io.reactivex.subjects.j<TRight> remove = this.f74282d.remove(Integer.valueOf(cVar3.f74295c));
                        this.f74281c.a(cVar3);
                        if (remove != null) {
                            remove.onComplete();
                        }
                    } else if (num == f74278r) {
                        c cVar4 = (c) poll;
                        this.f74283e.remove(Integer.valueOf(cVar4.f74295c));
                        this.f74281c.a(cVar4);
                    }
                }
            }
            bVar.clear();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74291m;
        }

        void j(io.reactivex.g0<?> g0Var) {
            Throwable c10 = io.reactivex.internal.util.g.c(this.f74284f);
            for (io.reactivex.subjects.j<TRight> jVar : this.f74282d.values()) {
                jVar.onError(c10);
            }
            this.f74282d.clear();
            this.f74283e.clear();
            g0Var.onError(c10);
        }

        void k(Throwable th, io.reactivex.g0<?> g0Var, io.reactivex.internal.queue.b<?> bVar) {
            io.reactivex.exceptions.a.b(th);
            io.reactivex.internal.util.g.a(this.f74284f, th);
            bVar.clear();
            h();
            j(g0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableGroupJoin.java */
    /* loaded from: classes3.dex */
    public interface b {
        void a(Throwable th);

        void b(boolean z9, Object obj);

        void c(Throwable th);

        void d(boolean z9, c cVar);

        void e(d dVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableGroupJoin.java */
    /* loaded from: classes3.dex */
    public static final class c extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.g0<Object>, io.reactivex.disposables.c {

        /* renamed from: d  reason: collision with root package name */
        private static final long f74292d = 1883890389173668373L;

        /* renamed from: a  reason: collision with root package name */
        final b f74293a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f74294b;

        /* renamed from: c  reason: collision with root package name */
        final int f74295c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public c(b bVar, boolean z9, int i4) {
            this.f74293a = bVar;
            this.f74294b = z9;
            this.f74295c = i4;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f74293a.d(this.f74294b, this);
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f74293a.c(th);
        }

        @Override // io.reactivex.g0
        public void onNext(Object obj) {
            if (DisposableHelper.dispose(this)) {
                this.f74293a.d(this.f74294b, this);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }
    }

    /* compiled from: ObservableGroupJoin.java */
    /* loaded from: classes3.dex */
    static final class d extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.g0<Object>, io.reactivex.disposables.c {

        /* renamed from: c  reason: collision with root package name */
        private static final long f74296c = 1883890389173668373L;

        /* renamed from: a  reason: collision with root package name */
        final b f74297a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f74298b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public d(b bVar, boolean z9) {
            this.f74297a = bVar;
            this.f74298b = z9;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f74297a.e(this);
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f74297a.a(th);
        }

        @Override // io.reactivex.g0
        public void onNext(Object obj) {
            this.f74297a.b(this.f74298b, obj);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }
    }

    public j1(io.reactivex.e0<TLeft> e0Var, io.reactivex.e0<? extends TRight> e0Var2, n7.o<? super TLeft, ? extends io.reactivex.e0<TLeftEnd>> oVar, n7.o<? super TRight, ? extends io.reactivex.e0<TRightEnd>> oVar2, n7.c<? super TLeft, ? super io.reactivex.z<TRight>, ? extends R> cVar) {
        super(e0Var);
        this.f74270b = e0Var2;
        this.f74271c = oVar;
        this.f74272d = oVar2;
        this.f74273e = cVar;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(io.reactivex.g0<? super R> g0Var) {
        a aVar = new a(g0Var, this.f74271c, this.f74272d, this.f74273e);
        g0Var.onSubscribe(aVar);
        d dVar = new d(aVar, true);
        aVar.f74281c.b(dVar);
        d dVar2 = new d(aVar, false);
        aVar.f74281c.b(dVar2);
        this.f73827a.subscribe(dVar);
        this.f74270b.subscribe(dVar2);
    }
}
