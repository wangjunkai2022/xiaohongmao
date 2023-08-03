package io.reactivex.rxjava3.internal.operators.observable;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: BlockingObservableNext.java */
/* loaded from: classes4.dex */
public final class e<T> implements Iterable<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.l0<T> f79341a;

    /* compiled from: BlockingObservableNext.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements Iterator<T> {

        /* renamed from: a  reason: collision with root package name */
        private final b<T> f79342a;

        /* renamed from: b  reason: collision with root package name */
        private final io.reactivex.rxjava3.core.l0<T> f79343b;

        /* renamed from: c  reason: collision with root package name */
        private T f79344c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f79345d = true;

        /* renamed from: e  reason: collision with root package name */
        private boolean f79346e = true;

        /* renamed from: f  reason: collision with root package name */
        private Throwable f79347f;

        /* renamed from: g  reason: collision with root package name */
        private boolean f79348g;

        a(io.reactivex.rxjava3.core.l0<T> items, b<T> observer) {
            this.f79343b = items;
            this.f79342a = observer;
        }

        private boolean a() {
            if (!this.f79348g) {
                this.f79348g = true;
                this.f79342a.c();
                new b2(this.f79343b).a(this.f79342a);
            }
            try {
                io.reactivex.rxjava3.core.d0<T> d4 = this.f79342a.d();
                if (d4.h()) {
                    this.f79346e = false;
                    this.f79344c = d4.e();
                    return true;
                }
                this.f79345d = false;
                if (d4.f()) {
                    return false;
                }
                Throwable d10 = d4.d();
                this.f79347f = d10;
                throw io.reactivex.rxjava3.internal.util.g.i(d10);
            } catch (InterruptedException e4) {
                this.f79342a.dispose();
                this.f79347f = e4;
                throw io.reactivex.rxjava3.internal.util.g.i(e4);
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            Throwable th = this.f79347f;
            if (th == null) {
                if (this.f79345d) {
                    return !this.f79346e || a();
                }
                return false;
            }
            throw io.reactivex.rxjava3.internal.util.g.i(th);
        }

        @Override // java.util.Iterator
        public T next() {
            Throwable th = this.f79347f;
            if (th == null) {
                if (hasNext()) {
                    this.f79346e = true;
                    return this.f79344c;
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
    /* compiled from: BlockingObservableNext.java */
    /* loaded from: classes4.dex */
    public static final class b<T> extends io.reactivex.rxjava3.observers.e<io.reactivex.rxjava3.core.d0<T>> {

        /* renamed from: b  reason: collision with root package name */
        private final BlockingQueue<io.reactivex.rxjava3.core.d0<T>> f79349b = new ArrayBlockingQueue(1);

        /* renamed from: c  reason: collision with root package name */
        final AtomicInteger f79350c = new AtomicInteger();

        b() {
        }

        @Override // io.reactivex.rxjava3.core.n0
        /* renamed from: b */
        public void onNext(io.reactivex.rxjava3.core.d0<T> args) {
            if (this.f79350c.getAndSet(0) == 1 || !args.h()) {
                while (!this.f79349b.offer(args)) {
                    io.reactivex.rxjava3.core.d0<T> poll = this.f79349b.poll();
                    if (poll != null && !poll.h()) {
                        args = poll;
                    }
                }
            }
        }

        void c() {
            this.f79350c.set(1);
        }

        public io.reactivex.rxjava3.core.d0<T> d() throws InterruptedException {
            c();
            io.reactivex.rxjava3.internal.util.c.b();
            return this.f79349b.take();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable e4) {
            io.reactivex.rxjava3.plugins.a.Y(e4);
        }
    }

    public e(io.reactivex.rxjava3.core.l0<T> source) {
        this.f79341a = source;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        return new a(this.f79341a, new b());
    }
}
