package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.subscribers.InnerQueuedSubscriber;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.ErrorMode;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: FlowableConcatMapEager.java */
/* loaded from: classes3.dex */
public final class x<T, R> extends io.reactivex.internal.operators.flowable.a<T, R> {

    /* renamed from: c  reason: collision with root package name */
    final n7.o<? super T, ? extends org.reactivestreams.c<? extends R>> f72980c;

    /* renamed from: d  reason: collision with root package name */
    final int f72981d;

    /* renamed from: e  reason: collision with root package name */
    final int f72982e;

    /* renamed from: f  reason: collision with root package name */
    final ErrorMode f72983f;

    /* compiled from: FlowableConcatMapEager.java */
    /* loaded from: classes3.dex */
    static final class a<T, R> extends AtomicInteger implements io.reactivex.o<T>, org.reactivestreams.e, io.reactivex.internal.subscribers.g<R> {

        /* renamed from: m  reason: collision with root package name */
        private static final long f72984m = -4255299542215038287L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super R> f72985a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super T, ? extends org.reactivestreams.c<? extends R>> f72986b;

        /* renamed from: c  reason: collision with root package name */
        final int f72987c;

        /* renamed from: d  reason: collision with root package name */
        final int f72988d;

        /* renamed from: e  reason: collision with root package name */
        final ErrorMode f72989e;

        /* renamed from: f  reason: collision with root package name */
        final AtomicThrowable f72990f = new AtomicThrowable();

        /* renamed from: g  reason: collision with root package name */
        final AtomicLong f72991g = new AtomicLong();

        /* renamed from: h  reason: collision with root package name */
        final io.reactivex.internal.queue.b<InnerQueuedSubscriber<R>> f72992h;

        /* renamed from: i  reason: collision with root package name */
        org.reactivestreams.e f72993i;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f72994j;

        /* renamed from: k  reason: collision with root package name */
        volatile boolean f72995k;

        /* renamed from: l  reason: collision with root package name */
        volatile InnerQueuedSubscriber<R> f72996l;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(org.reactivestreams.d<? super R> dVar, n7.o<? super T, ? extends org.reactivestreams.c<? extends R>> oVar, int i4, int i10, ErrorMode errorMode) {
            this.f72985a = dVar;
            this.f72986b = oVar;
            this.f72987c = i4;
            this.f72988d = i10;
            this.f72989e = errorMode;
            this.f72992h = new io.reactivex.internal.queue.b<>(Math.min(i10, i4));
        }

        @Override // io.reactivex.internal.subscribers.g
        public void a(InnerQueuedSubscriber<R> innerQueuedSubscriber, R r9) {
            if (innerQueuedSubscriber.queue().offer(r9)) {
                b();
                return;
            }
            innerQueuedSubscriber.cancel();
            d(innerQueuedSubscriber, new MissingBackpressureException());
        }

        /* JADX WARN: Code restructure failed: missing block: B:56:0x00cc, code lost:
            r0 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:0x00cd, code lost:
            if (r17 != 0) goto L69;
         */
        /* JADX WARN: Code restructure failed: missing block: B:59:0x00d1, code lost:
            if (r19.f72994j == false) goto L55;
         */
        /* JADX WARN: Code restructure failed: missing block: B:60:0x00d3, code lost:
            e();
         */
        /* JADX WARN: Code restructure failed: missing block: B:61:0x00d6, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:63:0x00d9, code lost:
            if (r3 != io.reactivex.internal.util.ErrorMode.IMMEDIATE) goto L62;
         */
        /* JADX WARN: Code restructure failed: missing block: B:65:0x00e3, code lost:
            if (r19.f72990f.get() == null) goto L62;
         */
        /* JADX WARN: Code restructure failed: missing block: B:66:0x00e5, code lost:
            r19.f72996l = null;
            r8.cancel();
            e();
            r2.onError(r19.f72990f.terminate());
         */
        /* JADX WARN: Code restructure failed: missing block: B:67:0x00f6, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:68:0x00f7, code lost:
            r15 = r8.isDone();
            r12 = r12.isEmpty();
         */
        /* JADX WARN: Code restructure failed: missing block: B:69:0x00ff, code lost:
            if (r15 == false) goto L69;
         */
        /* JADX WARN: Code restructure failed: missing block: B:70:0x0101, code lost:
            if (r12 == false) goto L69;
         */
        /* JADX WARN: Code restructure failed: missing block: B:71:0x0103, code lost:
            r19.f72996l = null;
            r19.f72993i.request(1);
            r8 = null;
            r0 = true;
         */
        @Override // io.reactivex.internal.subscribers.g
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void b() {
            /*
                Method dump skipped, instructions count: 312
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.x.a.b():void");
        }

        @Override // io.reactivex.internal.subscribers.g
        public void c(InnerQueuedSubscriber<R> innerQueuedSubscriber) {
            innerQueuedSubscriber.setDone();
            b();
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f72994j) {
                return;
            }
            this.f72994j = true;
            this.f72993i.cancel();
            i();
        }

        @Override // io.reactivex.internal.subscribers.g
        public void d(InnerQueuedSubscriber<R> innerQueuedSubscriber, Throwable th) {
            if (this.f72990f.addThrowable(th)) {
                innerQueuedSubscriber.setDone();
                if (this.f72989e != ErrorMode.END) {
                    this.f72993i.cancel();
                }
                b();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        void e() {
            InnerQueuedSubscriber<R> innerQueuedSubscriber = this.f72996l;
            this.f72996l = null;
            if (innerQueuedSubscriber != null) {
                innerQueuedSubscriber.cancel();
            }
            while (true) {
                InnerQueuedSubscriber<R> poll = this.f72992h.poll();
                if (poll == null) {
                    return;
                }
                poll.cancel();
            }
        }

        void i() {
            if (getAndIncrement() == 0) {
                do {
                    e();
                } while (decrementAndGet() != 0);
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f72995k = true;
            b();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f72990f.addThrowable(th)) {
                this.f72995k = true;
                b();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            try {
                org.reactivestreams.c cVar = (org.reactivestreams.c) io.reactivex.internal.functions.b.g(this.f72986b.apply(t9), "The mapper returned a null Publisher");
                InnerQueuedSubscriber<R> innerQueuedSubscriber = new InnerQueuedSubscriber<>(this, this.f72988d);
                if (this.f72994j) {
                    return;
                }
                this.f72992h.offer(innerQueuedSubscriber);
                cVar.i(innerQueuedSubscriber);
                if (this.f72994j) {
                    innerQueuedSubscriber.cancel();
                    i();
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f72993i.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f72993i, eVar)) {
                this.f72993i = eVar;
                this.f72985a.onSubscribe(this);
                int i4 = this.f72987c;
                eVar.request(i4 == Integer.MAX_VALUE ? Long.MAX_VALUE : i4);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f72991g, j4);
                b();
            }
        }
    }

    public x(io.reactivex.j<T> jVar, n7.o<? super T, ? extends org.reactivestreams.c<? extends R>> oVar, int i4, int i10, ErrorMode errorMode) {
        super(jVar);
        this.f72980c = oVar;
        this.f72981d = i4;
        this.f72982e = i10;
        this.f72983f = errorMode;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super R> dVar) {
        this.f71538b.j6(new a(dVar, this.f72980c, this.f72981d, this.f72982e, this.f72983f));
    }
}
