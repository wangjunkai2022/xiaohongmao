package io.reactivex.rxjava3.internal.operators.flowable;

/* compiled from: FlowableDoAfterNext.java */
/* loaded from: classes4.dex */
public final class o0<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final q7.g<? super T> f77651c;

    /* compiled from: FlowableDoAfterNext.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends io.reactivex.rxjava3.internal.subscribers.a<T, T> {

        /* renamed from: f  reason: collision with root package name */
        final q7.g<? super T> f77652f;

        a(io.reactivex.rxjava3.internal.fuseable.c<? super T> actual, q7.g<? super T> onAfterNext) {
            super(actual);
            this.f77652f = onAfterNext;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.c
        public boolean h(T t9) {
            boolean h4 = this.f81229a.h(t9);
            try {
                this.f77652f.accept(t9);
            } catch (Throwable th) {
                f(th);
            }
            return h4;
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f81229a.onNext(t9);
            if (this.f81233e == 0) {
                try {
                    this.f77652f.accept(t9);
                } catch (Throwable th) {
                    f(th);
                }
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        @p7.f
        public T poll() throws Throwable {
            T poll = this.f81231c.poll();
            if (poll != null) {
                this.f77652f.accept(poll);
            }
            return poll;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.m
        public int requestFusion(int mode) {
            return g(mode);
        }
    }

    /* compiled from: FlowableDoAfterNext.java */
    /* loaded from: classes4.dex */
    static final class b<T> extends io.reactivex.rxjava3.internal.subscribers.b<T, T> {

        /* renamed from: f  reason: collision with root package name */
        final q7.g<? super T> f77653f;

        b(org.reactivestreams.d<? super T> actual, q7.g<? super T> onAfterNext) {
            super(actual);
            this.f77653f = onAfterNext;
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f81237d) {
                return;
            }
            this.f81234a.onNext(t9);
            if (this.f81238e == 0) {
                try {
                    this.f77653f.accept(t9);
                } catch (Throwable th) {
                    f(th);
                }
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        @p7.f
        public T poll() throws Throwable {
            T poll = this.f81236c.poll();
            if (poll != null) {
                this.f77653f.accept(poll);
            }
            return poll;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.m
        public int requestFusion(int mode) {
            return g(mode);
        }
    }

    public o0(io.reactivex.rxjava3.core.m<T> source, q7.g<? super T> onAfterNext) {
        super(source);
        this.f77651c = onAfterNext;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        if (s9 instanceof io.reactivex.rxjava3.internal.fuseable.c) {
            this.f76811b.G6(new a((io.reactivex.rxjava3.internal.fuseable.c) s9, this.f77651c));
        } else {
            this.f76811b.G6(new b(s9, this.f77651c));
        }
    }
}
