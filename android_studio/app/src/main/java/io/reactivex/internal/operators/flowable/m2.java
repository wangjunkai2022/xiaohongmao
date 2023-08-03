package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableOnBackpressureLatest.java */
/* loaded from: classes3.dex */
public final class m2<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* compiled from: FlowableOnBackpressureLatest.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.o<T>, org.reactivestreams.e {

        /* renamed from: h  reason: collision with root package name */
        private static final long f72263h = 163080509307634843L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f72264a;

        /* renamed from: b  reason: collision with root package name */
        org.reactivestreams.e f72265b;

        /* renamed from: c  reason: collision with root package name */
        volatile boolean f72266c;

        /* renamed from: d  reason: collision with root package name */
        Throwable f72267d;

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f72268e;

        /* renamed from: f  reason: collision with root package name */
        final AtomicLong f72269f = new AtomicLong();

        /* renamed from: g  reason: collision with root package name */
        final AtomicReference<T> f72270g = new AtomicReference<>();

        a(org.reactivestreams.d<? super T> dVar) {
            this.f72264a = dVar;
        }

        boolean a(boolean z9, boolean z10, org.reactivestreams.d<?> dVar, AtomicReference<T> atomicReference) {
            if (this.f72268e) {
                atomicReference.lazySet(null);
                return true;
            } else if (z9) {
                Throwable th = this.f72267d;
                if (th != null) {
                    atomicReference.lazySet(null);
                    dVar.onError(th);
                    return true;
                } else if (z10) {
                    dVar.onComplete();
                    return true;
                } else {
                    return false;
                }
            } else {
                return false;
            }
        }

        void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            org.reactivestreams.d<? super T> dVar = this.f72264a;
            AtomicLong atomicLong = this.f72269f;
            AtomicReference<T> atomicReference = this.f72270g;
            int i4 = 1;
            do {
                long j4 = 0;
                while (true) {
                    if (j4 == atomicLong.get()) {
                        break;
                    }
                    boolean z9 = this.f72266c;
                    Object obj = (T) atomicReference.getAndSet(null);
                    boolean z10 = obj == null;
                    if (a(z9, z10, dVar, atomicReference)) {
                        return;
                    }
                    if (z10) {
                        break;
                    }
                    dVar.onNext(obj);
                    j4++;
                }
                if (j4 == atomicLong.get()) {
                    if (a(this.f72266c, atomicReference.get() == null, dVar, atomicReference)) {
                        return;
                    }
                }
                if (j4 != 0) {
                    io.reactivex.internal.util.b.e(atomicLong, j4);
                }
                i4 = addAndGet(-i4);
            } while (i4 != 0);
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f72268e) {
                return;
            }
            this.f72268e = true;
            this.f72265b.cancel();
            if (getAndIncrement() == 0) {
                this.f72270g.lazySet(null);
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f72266c = true;
            b();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f72267d = th;
            this.f72266c = true;
            b();
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f72270g.lazySet(t9);
            b();
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f72265b, eVar)) {
                this.f72265b = eVar;
                this.f72264a.onSubscribe(this);
                eVar.request(Long.MAX_VALUE);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f72269f, j4);
                b();
            }
        }
    }

    public m2(io.reactivex.j<T> jVar) {
        super(jVar);
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        this.f71538b.j6(new a(dVar));
    }
}
