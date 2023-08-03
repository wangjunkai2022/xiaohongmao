package io.reactivex.rxjava3.internal.operators.flowable;

import java.util.Objects;

/* compiled from: FlowableMap.java */
/* loaded from: classes4.dex */
public final class d2<T, U> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, U> {

    /* renamed from: c  reason: collision with root package name */
    final q7.o<? super T, ? extends U> f77024c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableMap.java */
    /* loaded from: classes4.dex */
    public static final class a<T, U> extends io.reactivex.rxjava3.internal.subscribers.a<T, U> {

        /* renamed from: f  reason: collision with root package name */
        final q7.o<? super T, ? extends U> f77025f;

        a(io.reactivex.rxjava3.internal.fuseable.c<? super U> actual, q7.o<? super T, ? extends U> function) {
            super(actual);
            this.f77025f = function;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.c
        public boolean h(T t9) {
            if (this.f81232d) {
                return false;
            }
            try {
                U apply = this.f77025f.apply(t9);
                Objects.requireNonNull(apply, "The mapper function returned a null value.");
                return this.f81229a.h(apply);
            } catch (Throwable th) {
                f(th);
                return true;
            }
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f81232d) {
                return;
            }
            if (this.f81233e != 0) {
                this.f81229a.onNext(null);
                return;
            }
            try {
                U apply = this.f77025f.apply(t9);
                Objects.requireNonNull(apply, "The mapper function returned a null value.");
                this.f81229a.onNext(apply);
            } catch (Throwable th) {
                f(th);
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        @p7.f
        public U poll() throws Throwable {
            T poll = this.f81231c.poll();
            if (poll != null) {
                U apply = this.f77025f.apply(poll);
                Objects.requireNonNull(apply, "The mapper function returned a null value.");
                return apply;
            }
            return null;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.m
        public int requestFusion(int mode) {
            return g(mode);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableMap.java */
    /* loaded from: classes4.dex */
    public static final class b<T, U> extends io.reactivex.rxjava3.internal.subscribers.b<T, U> {

        /* renamed from: f  reason: collision with root package name */
        final q7.o<? super T, ? extends U> f77026f;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(org.reactivestreams.d<? super U> actual, q7.o<? super T, ? extends U> mapper) {
            super(actual);
            this.f77026f = mapper;
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f81237d) {
                return;
            }
            if (this.f81238e != 0) {
                this.f81234a.onNext(null);
                return;
            }
            try {
                U apply = this.f77026f.apply(t9);
                Objects.requireNonNull(apply, "The mapper function returned a null value.");
                this.f81234a.onNext(apply);
            } catch (Throwable th) {
                f(th);
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        @p7.f
        public U poll() throws Throwable {
            T poll = this.f81236c.poll();
            if (poll != null) {
                U apply = this.f77026f.apply(poll);
                Objects.requireNonNull(apply, "The mapper function returned a null value.");
                return apply;
            }
            return null;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.m
        public int requestFusion(int mode) {
            return g(mode);
        }
    }

    public d2(io.reactivex.rxjava3.core.m<T> source, q7.o<? super T, ? extends U> mapper) {
        super(source);
        this.f77024c = mapper;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.reactivex.rxjava3.core.m
    public void H6(org.reactivestreams.d<? super U> s9) {
        if (s9 instanceof io.reactivex.rxjava3.internal.fuseable.c) {
            this.f76811b.G6(new a((io.reactivex.rxjava3.internal.fuseable.c) s9, this.f77024c));
        } else {
            this.f76811b.G6(new b(s9, this.f77024c));
        }
    }
}
