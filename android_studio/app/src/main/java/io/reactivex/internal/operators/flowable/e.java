package io.reactivex.internal.operators.flowable;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: BlockingFlowableNext.java */
/* loaded from: classes3.dex */
public final class e<T> implements Iterable<T> {

    /* renamed from: a  reason: collision with root package name */
    final org.reactivestreams.c<? extends T> f71771a;

    /* compiled from: BlockingFlowableNext.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements Iterator<T> {

        /* renamed from: a  reason: collision with root package name */
        private final b<T> f71772a;

        /* renamed from: b  reason: collision with root package name */
        private final org.reactivestreams.c<? extends T> f71773b;

        /* renamed from: c  reason: collision with root package name */
        private T f71774c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f71775d = true;

        /* renamed from: e  reason: collision with root package name */
        private boolean f71776e = true;

        /* renamed from: f  reason: collision with root package name */
        private Throwable f71777f;

        /* renamed from: g  reason: collision with root package name */
        private boolean f71778g;

        a(org.reactivestreams.c<? extends T> cVar, b<T> bVar) {
            this.f71773b = cVar;
            this.f71772a = bVar;
        }

        private boolean a() {
            try {
                if (!this.f71778g) {
                    this.f71778g = true;
                    this.f71772a.e();
                    io.reactivex.j.Y2(this.f71773b).L3().j6(this.f71772a);
                }
                io.reactivex.y<T> f10 = this.f71772a.f();
                if (f10.h()) {
                    this.f71776e = false;
                    this.f71774c = f10.e();
                    return true;
                }
                this.f71775d = false;
                if (f10.f()) {
                    return false;
                }
                if (f10.g()) {
                    Throwable d4 = f10.d();
                    this.f71777f = d4;
                    throw io.reactivex.internal.util.g.f(d4);
                }
                throw new IllegalStateException("Should not reach here");
            } catch (InterruptedException e4) {
                this.f71772a.dispose();
                this.f71777f = e4;
                throw io.reactivex.internal.util.g.f(e4);
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            Throwable th = this.f71777f;
            if (th == null) {
                if (this.f71775d) {
                    return !this.f71776e || a();
                }
                return false;
            }
            throw io.reactivex.internal.util.g.f(th);
        }

        @Override // java.util.Iterator
        public T next() {
            Throwable th = this.f71777f;
            if (th == null) {
                if (hasNext()) {
                    this.f71776e = true;
                    return this.f71774c;
                }
                throw new NoSuchElementException("No more elements");
            }
            throw io.reactivex.internal.util.g.f(th);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Read only iterator");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BlockingFlowableNext.java */
    /* loaded from: classes3.dex */
    public static final class b<T> extends io.reactivex.subscribers.b<io.reactivex.y<T>> {

        /* renamed from: b  reason: collision with root package name */
        private final BlockingQueue<io.reactivex.y<T>> f71779b = new ArrayBlockingQueue(1);

        /* renamed from: c  reason: collision with root package name */
        final AtomicInteger f71780c = new AtomicInteger();

        b() {
        }

        @Override // org.reactivestreams.d
        /* renamed from: d */
        public void onNext(io.reactivex.y<T> yVar) {
            if (this.f71780c.getAndSet(0) == 1 || !yVar.h()) {
                while (!this.f71779b.offer(yVar)) {
                    io.reactivex.y<T> poll = this.f71779b.poll();
                    if (poll != null && !poll.h()) {
                        yVar = poll;
                    }
                }
            }
        }

        void e() {
            this.f71780c.set(1);
        }

        public io.reactivex.y<T> f() throws InterruptedException {
            e();
            io.reactivex.internal.util.c.b();
            return this.f71779b.take();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            io.reactivex.plugins.a.Y(th);
        }
    }

    public e(org.reactivestreams.c<? extends T> cVar) {
        this.f71771a = cVar;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        return new a(this.f71771a, new b());
    }
}
