package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.util.NotificationLite;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* compiled from: BlockingObservableMostRecent.java */
/* loaded from: classes4.dex */
public final class d<T> implements Iterable<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.l0<T> f79280a;

    /* renamed from: b  reason: collision with root package name */
    final T f79281b;

    /* compiled from: BlockingObservableMostRecent.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends io.reactivex.rxjava3.observers.b<T> {

        /* renamed from: b  reason: collision with root package name */
        volatile Object f79282b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: BlockingObservableMostRecent.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.observable.d$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public final class C0665a implements Iterator<T> {

            /* renamed from: a  reason: collision with root package name */
            private Object f79283a;

            C0665a() {
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                Object obj = a.this.f79282b;
                this.f79283a = obj;
                return !NotificationLite.isComplete(obj);
            }

            @Override // java.util.Iterator
            public T next() {
                try {
                    if (this.f79283a == null) {
                        this.f79283a = a.this.f79282b;
                    }
                    if (!NotificationLite.isComplete(this.f79283a)) {
                        if (!NotificationLite.isError(this.f79283a)) {
                            return (T) NotificationLite.getValue(this.f79283a);
                        }
                        throw io.reactivex.rxjava3.internal.util.g.i(NotificationLite.getError(this.f79283a));
                    }
                    throw new NoSuchElementException();
                } finally {
                    this.f79283a = null;
                }
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException("Read only iterator");
            }
        }

        a(T value) {
            this.f79282b = NotificationLite.next(value);
        }

        public a<T>.C0665a c() {
            return new C0665a();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f79282b = NotificationLite.complete();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable e4) {
            this.f79282b = NotificationLite.error(e4);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T args) {
            this.f79282b = NotificationLite.next(args);
        }
    }

    public d(io.reactivex.rxjava3.core.l0<T> source, T initialValue) {
        this.f79280a = source;
        this.f79281b = initialValue;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        a aVar = new a(this.f79281b);
        this.f79280a.a(aVar);
        return aVar.c();
    }
}
