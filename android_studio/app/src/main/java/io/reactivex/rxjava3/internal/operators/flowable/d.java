package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.util.NotificationLite;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* compiled from: BlockingFlowableMostRecent.java */
/* loaded from: classes4.dex */
public final class d<T> implements Iterable<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.m<T> f77011a;

    /* renamed from: b  reason: collision with root package name */
    final T f77012b;

    /* compiled from: BlockingFlowableMostRecent.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends io.reactivex.rxjava3.subscribers.a<T> {

        /* renamed from: b  reason: collision with root package name */
        volatile Object f77013b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: BlockingFlowableMostRecent.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.d$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public final class C0629a implements Iterator<T> {

            /* renamed from: a  reason: collision with root package name */
            private Object f77014a;

            C0629a() {
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                Object obj = a.this.f77013b;
                this.f77014a = obj;
                return !NotificationLite.isComplete(obj);
            }

            @Override // java.util.Iterator
            public T next() {
                try {
                    if (this.f77014a == null) {
                        this.f77014a = a.this.f77013b;
                    }
                    if (!NotificationLite.isComplete(this.f77014a)) {
                        if (!NotificationLite.isError(this.f77014a)) {
                            return (T) NotificationLite.getValue(this.f77014a);
                        }
                        throw io.reactivex.rxjava3.internal.util.g.i(NotificationLite.getError(this.f77014a));
                    }
                    throw new NoSuchElementException();
                } finally {
                    this.f77014a = null;
                }
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException("Read only iterator");
            }
        }

        a(T value) {
            this.f77013b = NotificationLite.next(value);
        }

        public a<T>.C0629a d() {
            return new C0629a();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f77013b = NotificationLite.complete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable e4) {
            this.f77013b = NotificationLite.error(e4);
        }

        @Override // org.reactivestreams.d
        public void onNext(T args) {
            this.f77013b = NotificationLite.next(args);
        }
    }

    public d(io.reactivex.rxjava3.core.m<T> source, T initialValue) {
        this.f77011a = source;
        this.f77012b = initialValue;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        a aVar = new a(this.f77012b);
        this.f77011a.G6(aVar);
        return aVar.d();
    }
}
