package org.reactivestreams;

import java.util.Objects;
import java.util.concurrent.Flow;

/* compiled from: FlowAdapters.java */
/* loaded from: classes5.dex */
public final class a {

    /* compiled from: FlowAdapters.java */
    /* renamed from: org.reactivestreams.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    static final class Flow$PublisherC0832a<T> implements Flow.Publisher<T> {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.c<? extends T> f93041a;

        public Flow$PublisherC0832a(org.reactivestreams.c<? extends T> cVar) {
            this.f93041a = cVar;
        }

        @Override // java.util.concurrent.Flow.Publisher
        public void subscribe(Flow.Subscriber<? super T> subscriber) {
            this.f93041a.i(subscriber == null ? null : new g(subscriber));
        }
    }

    /* compiled from: FlowAdapters.java */
    /* loaded from: classes5.dex */
    static final class b<T, U> implements Flow.Processor<T, U> {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.b<? super T, ? extends U> f93042a;

        public b(org.reactivestreams.b<? super T, ? extends U> bVar) {
            this.f93042a = bVar;
        }

        @Override // java.util.concurrent.Flow.Subscriber
        public void onComplete() {
            this.f93042a.onComplete();
        }

        @Override // java.util.concurrent.Flow.Subscriber
        public void onError(Throwable th) {
            this.f93042a.onError(th);
        }

        @Override // java.util.concurrent.Flow.Subscriber
        public void onNext(T t9) {
            this.f93042a.onNext(t9);
        }

        @Override // java.util.concurrent.Flow.Subscriber
        public void onSubscribe(Flow.Subscription subscription) {
            this.f93042a.onSubscribe(subscription == null ? null : new h(subscription));
        }

        @Override // java.util.concurrent.Flow.Publisher
        public void subscribe(Flow.Subscriber<? super U> subscriber) {
            this.f93042a.i(subscriber == null ? null : new g(subscriber));
        }
    }

    /* compiled from: FlowAdapters.java */
    /* loaded from: classes5.dex */
    static final class c<T> implements Flow.Subscriber<T> {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f93043a;

        public c(org.reactivestreams.d<? super T> dVar) {
            this.f93043a = dVar;
        }

        @Override // java.util.concurrent.Flow.Subscriber
        public void onComplete() {
            this.f93043a.onComplete();
        }

        @Override // java.util.concurrent.Flow.Subscriber
        public void onError(Throwable th) {
            this.f93043a.onError(th);
        }

        @Override // java.util.concurrent.Flow.Subscriber
        public void onNext(T t9) {
            this.f93043a.onNext(t9);
        }

        @Override // java.util.concurrent.Flow.Subscriber
        public void onSubscribe(Flow.Subscription subscription) {
            this.f93043a.onSubscribe(subscription == null ? null : new h(subscription));
        }
    }

    /* compiled from: FlowAdapters.java */
    /* loaded from: classes5.dex */
    static final class d implements Flow.Subscription {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.e f93044a;

        public d(org.reactivestreams.e eVar) {
            this.f93044a = eVar;
        }

        @Override // java.util.concurrent.Flow.Subscription
        public void cancel() {
            this.f93044a.cancel();
        }

        @Override // java.util.concurrent.Flow.Subscription
        public void request(long j4) {
            this.f93044a.request(j4);
        }
    }

    /* compiled from: FlowAdapters.java */
    /* loaded from: classes5.dex */
    static final class e<T> implements org.reactivestreams.c<T> {

        /* renamed from: a  reason: collision with root package name */
        final Flow.Publisher<? extends T> f93045a;

        public e(Flow.Publisher<? extends T> publisher) {
            this.f93045a = publisher;
        }

        @Override // org.reactivestreams.c
        public void i(org.reactivestreams.d<? super T> dVar) {
            this.f93045a.subscribe(dVar == null ? null : new c(dVar));
        }
    }

    /* compiled from: FlowAdapters.java */
    /* loaded from: classes5.dex */
    static final class f<T, U> implements org.reactivestreams.b<T, U> {

        /* renamed from: a  reason: collision with root package name */
        final Flow.Processor<? super T, ? extends U> f93046a;

        public f(Flow.Processor<? super T, ? extends U> processor) {
            this.f93046a = processor;
        }

        @Override // org.reactivestreams.c
        public void i(org.reactivestreams.d<? super U> dVar) {
            this.f93046a.subscribe(dVar == null ? null : new c(dVar));
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f93046a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f93046a.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f93046a.onNext(t9);
        }

        @Override // org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            this.f93046a.onSubscribe(eVar == null ? null : new d(eVar));
        }
    }

    /* compiled from: FlowAdapters.java */
    /* loaded from: classes5.dex */
    static final class g<T> implements org.reactivestreams.d<T> {

        /* renamed from: a  reason: collision with root package name */
        final Flow.Subscriber<? super T> f93047a;

        public g(Flow.Subscriber<? super T> subscriber) {
            this.f93047a = subscriber;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f93047a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f93047a.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f93047a.onNext(t9);
        }

        @Override // org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            this.f93047a.onSubscribe(eVar == null ? null : new d(eVar));
        }
    }

    /* compiled from: FlowAdapters.java */
    /* loaded from: classes5.dex */
    static final class h implements org.reactivestreams.e {

        /* renamed from: a  reason: collision with root package name */
        final Flow.Subscription f93048a;

        public h(Flow.Subscription subscription) {
            this.f93048a = subscription;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f93048a.cancel();
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            this.f93048a.request(j4);
        }
    }

    private a() {
        throw new IllegalStateException("No instances!");
    }

    public static <T, U> Flow.Processor<T, U> a(org.reactivestreams.b<? super T, ? extends U> bVar) {
        Objects.requireNonNull(bVar, "reactiveStreamsProcessor");
        if (bVar instanceof f) {
            return (Flow.Processor<? super T, ? extends U>) ((f) bVar).f93046a;
        }
        if (bVar instanceof Flow.Processor) {
            return (Flow.Processor) bVar;
        }
        return new b(bVar);
    }

    public static <T> Flow.Publisher<T> b(org.reactivestreams.c<? extends T> cVar) {
        Objects.requireNonNull(cVar, "reactiveStreamsPublisher");
        if (cVar instanceof e) {
            return (Flow.Publisher<? extends T>) ((e) cVar).f93045a;
        }
        if (cVar instanceof Flow.Publisher) {
            return (Flow.Publisher) cVar;
        }
        return new Flow$PublisherC0832a(cVar);
    }

    public static <T> Flow.Subscriber<T> c(org.reactivestreams.d<T> dVar) {
        Objects.requireNonNull(dVar, "reactiveStreamsSubscriber");
        if (dVar instanceof g) {
            return (Flow.Subscriber<? super T>) ((g) dVar).f93047a;
        }
        if (dVar instanceof Flow.Subscriber) {
            return (Flow.Subscriber) dVar;
        }
        return new c(dVar);
    }

    public static <T, U> org.reactivestreams.b<T, U> d(Flow.Processor<? super T, ? extends U> processor) {
        Objects.requireNonNull(processor, "flowProcessor");
        if (processor instanceof b) {
            return (org.reactivestreams.b<? super T, ? extends U>) ((b) processor).f93042a;
        }
        if (processor instanceof org.reactivestreams.b) {
            return (org.reactivestreams.b) processor;
        }
        return new f(processor);
    }

    public static <T> org.reactivestreams.c<T> e(Flow.Publisher<? extends T> publisher) {
        Objects.requireNonNull(publisher, "flowPublisher");
        if (publisher instanceof Flow$PublisherC0832a) {
            return (org.reactivestreams.c<? extends T>) ((Flow$PublisherC0832a) publisher).f93041a;
        }
        if (publisher instanceof org.reactivestreams.c) {
            return (org.reactivestreams.c) publisher;
        }
        return new e(publisher);
    }

    public static <T> org.reactivestreams.d<T> f(Flow.Subscriber<T> subscriber) {
        Objects.requireNonNull(subscriber, "flowSubscriber");
        if (subscriber instanceof c) {
            return (org.reactivestreams.d<? super T>) ((c) subscriber).f93043a;
        }
        if (subscriber instanceof org.reactivestreams.d) {
            return (org.reactivestreams.d) subscriber;
        }
        return new g(subscriber);
    }
}
