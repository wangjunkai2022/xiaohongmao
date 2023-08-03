package io.reactivex.internal.operators.observable;

import io.reactivex.internal.util.NotificationLite;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* compiled from: BlockingObservableMostRecent.java */
/* loaded from: classes3.dex */
public final class d<T> implements Iterable<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<T> f73963a;

    /* renamed from: b  reason: collision with root package name */
    final T f73964b;

    /* compiled from: BlockingObservableMostRecent.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends io.reactivex.observers.a<T> {

        /* renamed from: b  reason: collision with root package name */
        volatile Object f73965b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: BlockingObservableMostRecent.java */
        /* renamed from: io.reactivex.internal.operators.observable.d$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public final class C0588a implements Iterator<T> {

            /* renamed from: a  reason: collision with root package name */
            private Object f73966a;

            C0588a() {
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                Object obj = a.this.f73965b;
                this.f73966a = obj;
                return !NotificationLite.isComplete(obj);
            }

            @Override // java.util.Iterator
            public T next() {
                try {
                    if (this.f73966a == null) {
                        this.f73966a = a.this.f73965b;
                    }
                    if (!NotificationLite.isComplete(this.f73966a)) {
                        if (!NotificationLite.isError(this.f73966a)) {
                            return (T) NotificationLite.getValue(this.f73966a);
                        }
                        throw io.reactivex.internal.util.g.f(NotificationLite.getError(this.f73966a));
                    }
                    throw new NoSuchElementException();
                } finally {
                    this.f73966a = null;
                }
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException("Read only iterator");
            }
        }

        a(T t9) {
            this.f73965b = NotificationLite.next(t9);
        }

        public a<T>.C0588a c() {
            return new C0588a();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f73965b = NotificationLite.complete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f73965b = NotificationLite.error(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            this.f73965b = NotificationLite.next(t9);
        }
    }

    public d(io.reactivex.e0<T> e0Var, T t9) {
        this.f73963a = e0Var;
        this.f73964b = t9;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        a aVar = new a(this.f73964b);
        this.f73963a.subscribe(aVar);
        return aVar.c();
    }
}
