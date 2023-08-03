package io.reactivex.internal.operators.observable;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: BlockingObservableNext.java */
/* loaded from: classes3.dex */
public final class e<T> implements Iterable<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<T> f74004a;

    /* compiled from: BlockingObservableNext.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements Iterator<T> {

        /* renamed from: a  reason: collision with root package name */
        private final b<T> f74005a;

        /* renamed from: b  reason: collision with root package name */
        private final io.reactivex.e0<T> f74006b;

        /* renamed from: c  reason: collision with root package name */
        private T f74007c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f74008d = true;

        /* renamed from: e  reason: collision with root package name */
        private boolean f74009e = true;

        /* renamed from: f  reason: collision with root package name */
        private Throwable f74010f;

        /* renamed from: g  reason: collision with root package name */
        private boolean f74011g;

        a(io.reactivex.e0<T> e0Var, b<T> bVar) {
            this.f74006b = e0Var;
            this.f74005a = bVar;
        }

        private boolean a() {
            if (!this.f74011g) {
                this.f74011g = true;
                this.f74005a.c();
                new x1(this.f74006b).subscribe(this.f74005a);
            }
            try {
                io.reactivex.y<T> d4 = this.f74005a.d();
                if (d4.h()) {
                    this.f74009e = false;
                    this.f74007c = d4.e();
                    return true;
                }
                this.f74008d = false;
                if (d4.f()) {
                    return false;
                }
                Throwable d10 = d4.d();
                this.f74010f = d10;
                throw io.reactivex.internal.util.g.f(d10);
            } catch (InterruptedException e4) {
                this.f74005a.dispose();
                this.f74010f = e4;
                throw io.reactivex.internal.util.g.f(e4);
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            Throwable th = this.f74010f;
            if (th == null) {
                if (this.f74008d) {
                    return !this.f74009e || a();
                }
                return false;
            }
            throw io.reactivex.internal.util.g.f(th);
        }

        @Override // java.util.Iterator
        public T next() {
            Throwable th = this.f74010f;
            if (th == null) {
                if (hasNext()) {
                    this.f74009e = true;
                    return this.f74007c;
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
    /* compiled from: BlockingObservableNext.java */
    /* loaded from: classes3.dex */
    public static final class b<T> extends io.reactivex.observers.d<io.reactivex.y<T>> {

        /* renamed from: b  reason: collision with root package name */
        private final BlockingQueue<io.reactivex.y<T>> f74012b = new ArrayBlockingQueue(1);

        /* renamed from: c  reason: collision with root package name */
        final AtomicInteger f74013c = new AtomicInteger();

        b() {
        }

        @Override // io.reactivex.g0
        /* renamed from: b */
        public void onNext(io.reactivex.y<T> yVar) {
            if (this.f74013c.getAndSet(0) == 1 || !yVar.h()) {
                while (!this.f74012b.offer(yVar)) {
                    io.reactivex.y<T> poll = this.f74012b.poll();
                    if (poll != null && !poll.h()) {
                        yVar = poll;
                    }
                }
            }
        }

        void c() {
            this.f74013c.set(1);
        }

        public io.reactivex.y<T> d() throws InterruptedException {
            c();
            io.reactivex.internal.util.c.b();
            return this.f74012b.take();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            io.reactivex.plugins.a.Y(th);
        }
    }

    public e(io.reactivex.e0<T> e0Var) {
        this.f74004a = e0Var;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        return new a(this.f74004a, new b());
    }
}
