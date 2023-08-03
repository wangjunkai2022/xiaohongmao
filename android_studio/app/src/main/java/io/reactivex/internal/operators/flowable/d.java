package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.util.NotificationLite;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* compiled from: BlockingFlowableMostRecent.java */
/* loaded from: classes3.dex */
public final class d<T> implements Iterable<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.j<T> f71676a;

    /* renamed from: b  reason: collision with root package name */
    final T f71677b;

    /* compiled from: BlockingFlowableMostRecent.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends io.reactivex.subscribers.a<T> {

        /* renamed from: b  reason: collision with root package name */
        volatile Object f71678b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: BlockingFlowableMostRecent.java */
        /* renamed from: io.reactivex.internal.operators.flowable.d$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public final class C0550a implements Iterator<T> {

            /* renamed from: a  reason: collision with root package name */
            private Object f71679a;

            C0550a() {
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                Object obj = a.this.f71678b;
                this.f71679a = obj;
                return !NotificationLite.isComplete(obj);
            }

            @Override // java.util.Iterator
            public T next() {
                try {
                    if (this.f71679a == null) {
                        this.f71679a = a.this.f71678b;
                    }
                    if (!NotificationLite.isComplete(this.f71679a)) {
                        if (!NotificationLite.isError(this.f71679a)) {
                            return (T) NotificationLite.getValue(this.f71679a);
                        }
                        throw io.reactivex.internal.util.g.f(NotificationLite.getError(this.f71679a));
                    }
                    throw new NoSuchElementException();
                } finally {
                    this.f71679a = null;
                }
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException("Read only iterator");
            }
        }

        a(T t9) {
            this.f71678b = NotificationLite.next(t9);
        }

        public a<T>.C0550a d() {
            return new C0550a();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f71678b = NotificationLite.complete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f71678b = NotificationLite.error(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f71678b = NotificationLite.next(t9);
        }
    }

    public d(io.reactivex.j<T> jVar, T t9) {
        this.f71676a = jVar;
        this.f71677b = t9;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        a aVar = new a(this.f71677b);
        this.f71676a.j6(aVar);
        return aVar.d();
    }
}
