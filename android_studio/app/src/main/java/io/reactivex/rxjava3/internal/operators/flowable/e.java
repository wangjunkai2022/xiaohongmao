package io.reactivex.rxjava3.internal.operators.flowable;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: BlockingFlowableNext.java */
/* loaded from: classes4.dex */
public final class e<T> implements Iterable<T> {

    /* renamed from: a  reason: collision with root package name */
    final org.reactivestreams.c<? extends T> f77046a;

    /* compiled from: BlockingFlowableNext.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements Iterator<T> {

        /* renamed from: a  reason: collision with root package name */
        private final b<T> f77047a;

        /* renamed from: b  reason: collision with root package name */
        private final org.reactivestreams.c<? extends T> f77048b;

        /* renamed from: c  reason: collision with root package name */
        private T f77049c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f77050d = true;

        /* renamed from: e  reason: collision with root package name */
        private boolean f77051e = true;

        /* renamed from: f  reason: collision with root package name */
        private Throwable f77052f;

        /* renamed from: g  reason: collision with root package name */
        private boolean f77053g;

        a(org.reactivestreams.c<? extends T> items, b<T> subscriber) {
            this.f77048b = items;
            this.f77047a = subscriber;
        }

        private boolean a() {
            try {
                if (!this.f77053g) {
                    this.f77053g = true;
                    this.f77047a.e();
                    io.reactivex.rxjava3.core.m.i3(this.f77048b).b4().G6(this.f77047a);
                }
                io.reactivex.rxjava3.core.d0<T> f10 = this.f77047a.f();
                if (f10.h()) {
                    this.f77051e = false;
                    this.f77049c = f10.e();
                    return true;
                }
                this.f77050d = false;
                if (f10.f()) {
                    return false;
                }
                Throwable d4 = f10.d();
                this.f77052f = d4;
                throw io.reactivex.rxjava3.internal.util.g.i(d4);
            } catch (InterruptedException e4) {
                this.f77047a.dispose();
                this.f77052f = e4;
                throw io.reactivex.rxjava3.internal.util.g.i(e4);
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            Throwable th = this.f77052f;
            if (th == null) {
                if (this.f77050d) {
                    return !this.f77051e || a();
                }
                return false;
            }
            throw io.reactivex.rxjava3.internal.util.g.i(th);
        }

        @Override // java.util.Iterator
        public T next() {
            Throwable th = this.f77052f;
            if (th == null) {
                if (hasNext()) {
                    this.f77051e = true;
                    return this.f77049c;
                }
                throw new NoSuchElementException("No more elements");
            }
            throw io.reactivex.rxjava3.internal.util.g.i(th);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Read only iterator");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BlockingFlowableNext.java */
    /* loaded from: classes4.dex */
    public static final class b<T> extends io.reactivex.rxjava3.subscribers.b<io.reactivex.rxjava3.core.d0<T>> {

        /* renamed from: b  reason: collision with root package name */
        private final BlockingQueue<io.reactivex.rxjava3.core.d0<T>> f77054b = new ArrayBlockingQueue(1);

        /* renamed from: c  reason: collision with root package name */
        final AtomicInteger f77055c = new AtomicInteger();

        b() {
        }

        @Override // org.reactivestreams.d
        /* renamed from: d */
        public void onNext(io.reactivex.rxjava3.core.d0<T> args) {
            if (this.f77055c.getAndSet(0) == 1 || !args.h()) {
                while (!this.f77054b.offer(args)) {
                    io.reactivex.rxjava3.core.d0<T> poll = this.f77054b.poll();
                    if (poll != null && !poll.h()) {
                        args = poll;
                    }
                }
            }
        }

        void e() {
            this.f77055c.set(1);
        }

        public io.reactivex.rxjava3.core.d0<T> f() throws InterruptedException {
            e();
            io.reactivex.rxjava3.internal.util.c.b();
            return this.f77054b.take();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable e4) {
            io.reactivex.rxjava3.plugins.a.Y(e4);
        }
    }

    public e(org.reactivestreams.c<? extends T> source) {
        this.f77046a = source;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        return new a(this.f77046a, new b());
    }
}
