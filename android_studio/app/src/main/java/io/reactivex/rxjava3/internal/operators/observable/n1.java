package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableGroupJoin.java */
/* loaded from: classes4.dex */
public final class n1<TLeft, TRight, TLeftEnd, TRightEnd, R> extends io.reactivex.rxjava3.internal.operators.observable.a<TLeft, R> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.l0<? extends TRight> f79804b;

    /* renamed from: c  reason: collision with root package name */
    final q7.o<? super TLeft, ? extends io.reactivex.rxjava3.core.l0<TLeftEnd>> f79805c;

    /* renamed from: d  reason: collision with root package name */
    final q7.o<? super TRight, ? extends io.reactivex.rxjava3.core.l0<TRightEnd>> f79806d;

    /* renamed from: e  reason: collision with root package name */
    final q7.c<? super TLeft, ? super io.reactivex.rxjava3.core.g0<TRight>, ? extends R> f79807e;

    /* compiled from: ObservableGroupJoin.java */
    /* loaded from: classes4.dex */
    static final class a<TLeft, TRight, TLeftEnd, TRightEnd, R> extends AtomicInteger implements io.reactivex.rxjava3.disposables.f, b {

        /* renamed from: n  reason: collision with root package name */
        private static final long f79808n = -6071216598687999801L;

        /* renamed from: o  reason: collision with root package name */
        static final Integer f79809o = 1;

        /* renamed from: p  reason: collision with root package name */
        static final Integer f79810p = 2;

        /* renamed from: q  reason: collision with root package name */
        static final Integer f79811q = 3;

        /* renamed from: r  reason: collision with root package name */
        static final Integer f79812r = 4;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super R> f79813a;

        /* renamed from: g  reason: collision with root package name */
        final q7.o<? super TLeft, ? extends io.reactivex.rxjava3.core.l0<TLeftEnd>> f79819g;

        /* renamed from: h  reason: collision with root package name */
        final q7.o<? super TRight, ? extends io.reactivex.rxjava3.core.l0<TRightEnd>> f79820h;

        /* renamed from: i  reason: collision with root package name */
        final q7.c<? super TLeft, ? super io.reactivex.rxjava3.core.g0<TRight>, ? extends R> f79821i;

        /* renamed from: k  reason: collision with root package name */
        int f79823k;

        /* renamed from: l  reason: collision with root package name */
        int f79824l;

        /* renamed from: m  reason: collision with root package name */
        volatile boolean f79825m;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.rxjava3.disposables.c f79815c = new io.reactivex.rxjava3.disposables.c();

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.rxjava3.internal.queue.b<Object> f79814b = new io.reactivex.rxjava3.internal.queue.b<>(io.reactivex.rxjava3.core.g0.R());

        /* renamed from: d  reason: collision with root package name */
        final Map<Integer, io.reactivex.rxjava3.subjects.j<TRight>> f79816d = new LinkedHashMap();

        /* renamed from: e  reason: collision with root package name */
        final Map<Integer, TRight> f79817e = new LinkedHashMap();

        /* renamed from: f  reason: collision with root package name */
        final AtomicReference<Throwable> f79818f = new AtomicReference<>();

        /* renamed from: j  reason: collision with root package name */
        final AtomicInteger f79822j = new AtomicInteger(2);

        a(io.reactivex.rxjava3.core.n0<? super R> actual, q7.o<? super TLeft, ? extends io.reactivex.rxjava3.core.l0<TLeftEnd>> leftEnd, q7.o<? super TRight, ? extends io.reactivex.rxjava3.core.l0<TRightEnd>> rightEnd, q7.c<? super TLeft, ? super io.reactivex.rxjava3.core.g0<TRight>, ? extends R> resultSelector) {
            this.f79813a = actual;
            this.f79819g = leftEnd;
            this.f79820h = rightEnd;
            this.f79821i = resultSelector;
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.n1.b
        public void a(Throwable ex) {
            if (io.reactivex.rxjava3.internal.util.g.a(this.f79818f, ex)) {
                this.f79822j.decrementAndGet();
                i();
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(ex);
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.n1.b
        public void b(boolean isLeft, Object o9) {
            synchronized (this) {
                this.f79814b.offer(isLeft ? f79809o : f79810p, o9);
            }
            i();
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.n1.b
        public void c(Throwable ex) {
            if (io.reactivex.rxjava3.internal.util.g.a(this.f79818f, ex)) {
                i();
            } else {
                io.reactivex.rxjava3.plugins.a.Y(ex);
            }
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.n1.b
        public void d(d sender) {
            this.f79815c.c(sender);
            this.f79822j.decrementAndGet();
            i();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            if (this.f79825m) {
                return;
            }
            this.f79825m = true;
            h();
            if (getAndIncrement() == 0) {
                this.f79814b.clear();
            }
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.n1.b
        public void e(boolean isLeft, c index) {
            synchronized (this) {
                this.f79814b.offer(isLeft ? f79811q : f79812r, index);
            }
            i();
        }

        void h() {
            this.f79815c.dispose();
        }

        /* JADX WARN: Multi-variable type inference failed */
        void i() {
            if (getAndIncrement() != 0) {
                return;
            }
            io.reactivex.rxjava3.internal.queue.b<?> bVar = this.f79814b;
            io.reactivex.rxjava3.core.n0<? super R> n0Var = this.f79813a;
            int i4 = 1;
            while (!this.f79825m) {
                if (this.f79818f.get() != null) {
                    bVar.clear();
                    h();
                    j(n0Var);
                    return;
                }
                boolean z9 = this.f79822j.get() == 0;
                Integer num = (Integer) bVar.poll();
                boolean z10 = num == null;
                if (z9 && z10) {
                    for (io.reactivex.rxjava3.subjects.j<TRight> jVar : this.f79816d.values()) {
                        jVar.onComplete();
                    }
                    this.f79816d.clear();
                    this.f79817e.clear();
                    this.f79815c.dispose();
                    n0Var.onComplete();
                    return;
                } else if (z10) {
                    i4 = addAndGet(-i4);
                    if (i4 == 0) {
                        return;
                    }
                } else {
                    Object poll = bVar.poll();
                    if (num == f79809o) {
                        io.reactivex.rxjava3.subjects.j<TRight> F8 = io.reactivex.rxjava3.subjects.j.F8();
                        int i10 = this.f79823k;
                        this.f79823k = i10 + 1;
                        this.f79816d.put(Integer.valueOf(i10), F8);
                        try {
                            io.reactivex.rxjava3.core.l0 apply = this.f79819g.apply(poll);
                            Objects.requireNonNull(apply, "The leftEnd returned a null ObservableSource");
                            io.reactivex.rxjava3.core.l0 l0Var = apply;
                            c cVar = new c(this, true, i10);
                            this.f79815c.b(cVar);
                            l0Var.a(cVar);
                            if (this.f79818f.get() != null) {
                                bVar.clear();
                                h();
                                j(n0Var);
                                return;
                            }
                            try {
                                Object obj = (R) this.f79821i.apply(poll, F8);
                                Objects.requireNonNull(obj, "The resultSelector returned a null value");
                                n0Var.onNext(obj);
                                for (TRight tright : this.f79817e.values()) {
                                    F8.onNext(tright);
                                }
                            } catch (Throwable th) {
                                k(th, n0Var, bVar);
                                return;
                            }
                        } catch (Throwable th2) {
                            k(th2, n0Var, bVar);
                            return;
                        }
                    } else if (num == f79810p) {
                        int i11 = this.f79824l;
                        this.f79824l = i11 + 1;
                        this.f79817e.put(Integer.valueOf(i11), poll);
                        try {
                            io.reactivex.rxjava3.core.l0 apply2 = this.f79820h.apply(poll);
                            Objects.requireNonNull(apply2, "The rightEnd returned a null ObservableSource");
                            io.reactivex.rxjava3.core.l0 l0Var2 = apply2;
                            c cVar2 = new c(this, false, i11);
                            this.f79815c.b(cVar2);
                            l0Var2.a(cVar2);
                            if (this.f79818f.get() != null) {
                                bVar.clear();
                                h();
                                j(n0Var);
                                return;
                            }
                            for (io.reactivex.rxjava3.subjects.j<TRight> jVar2 : this.f79816d.values()) {
                                jVar2.onNext(poll);
                            }
                        } catch (Throwable th3) {
                            k(th3, n0Var, bVar);
                            return;
                        }
                    } else if (num == f79811q) {
                        c cVar3 = (c) poll;
                        io.reactivex.rxjava3.subjects.j<TRight> remove = this.f79816d.remove(Integer.valueOf(cVar3.f79829c));
                        this.f79815c.a(cVar3);
                        if (remove != null) {
                            remove.onComplete();
                        }
                    } else {
                        c cVar4 = (c) poll;
                        this.f79817e.remove(Integer.valueOf(cVar4.f79829c));
                        this.f79815c.a(cVar4);
                    }
                }
            }
            bVar.clear();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79825m;
        }

        void j(io.reactivex.rxjava3.core.n0<?> a10) {
            Throwable f10 = io.reactivex.rxjava3.internal.util.g.f(this.f79818f);
            for (io.reactivex.rxjava3.subjects.j<TRight> jVar : this.f79816d.values()) {
                jVar.onError(f10);
            }
            this.f79816d.clear();
            this.f79817e.clear();
            a10.onError(f10);
        }

        void k(Throwable exc, io.reactivex.rxjava3.core.n0<?> a10, io.reactivex.rxjava3.internal.queue.b<?> q9) {
            io.reactivex.rxjava3.exceptions.a.b(exc);
            io.reactivex.rxjava3.internal.util.g.a(this.f79818f, exc);
            q9.clear();
            h();
            j(a10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableGroupJoin.java */
    /* loaded from: classes4.dex */
    public interface b {
        void a(Throwable ex);

        void b(boolean isLeft, Object o9);

        void c(Throwable ex);

        void d(d sender);

        void e(boolean isLeft, c index);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableGroupJoin.java */
    /* loaded from: classes4.dex */
    public static final class c extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.n0<Object>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: d  reason: collision with root package name */
        private static final long f79826d = 1883890389173668373L;

        /* renamed from: a  reason: collision with root package name */
        final b f79827a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f79828b;

        /* renamed from: c  reason: collision with root package name */
        final int f79829c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public c(b parent, boolean isLeft, int index) {
            this.f79827a = parent;
            this.f79828b = isLeft;
            this.f79829c = index;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f79827a.e(this.f79828b, this);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            this.f79827a.c(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(Object t9) {
            if (DisposableHelper.dispose(this)) {
                this.f79827a.e(this.f79828b, this);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.setOnce(this, d4);
        }
    }

    /* compiled from: ObservableGroupJoin.java */
    /* loaded from: classes4.dex */
    static final class d extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.n0<Object>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: c  reason: collision with root package name */
        private static final long f79830c = 1883890389173668373L;

        /* renamed from: a  reason: collision with root package name */
        final b f79831a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f79832b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public d(b parent, boolean isLeft) {
            this.f79831a = parent;
            this.f79832b = isLeft;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f79831a.d(this);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            this.f79831a.a(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(Object t9) {
            this.f79831a.b(this.f79832b, t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.setOnce(this, d4);
        }
    }

    public n1(io.reactivex.rxjava3.core.l0<TLeft> source, io.reactivex.rxjava3.core.l0<? extends TRight> other, q7.o<? super TLeft, ? extends io.reactivex.rxjava3.core.l0<TLeftEnd>> leftEnd, q7.o<? super TRight, ? extends io.reactivex.rxjava3.core.l0<TRightEnd>> rightEnd, q7.c<? super TLeft, ? super io.reactivex.rxjava3.core.g0<TRight>, ? extends R> resultSelector) {
        super(source);
        this.f79804b = other;
        this.f79805c = leftEnd;
        this.f79806d = rightEnd;
        this.f79807e = resultSelector;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(io.reactivex.rxjava3.core.n0<? super R> observer) {
        a aVar = new a(observer, this.f79805c, this.f79806d, this.f79807e);
        observer.onSubscribe(aVar);
        d dVar = new d(aVar, true);
        aVar.f79815c.b(dVar);
        d dVar2 = new d(aVar, false);
        aVar.f79815c.b(dVar2);
        this.f79141a.a(dVar);
        this.f79804b.a(dVar2);
    }
}
