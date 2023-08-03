package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;

/* compiled from: FlowableDematerialize.java */
/* loaded from: classes3.dex */
public final class l0<T, R> extends io.reactivex.internal.operators.flowable.a<T, R> {

    /* renamed from: c  reason: collision with root package name */
    final n7.o<? super T, ? extends io.reactivex.y<R>> f72174c;

    /* compiled from: FlowableDematerialize.java */
    /* loaded from: classes3.dex */
    static final class a<T, R> implements io.reactivex.o<T>, org.reactivestreams.e {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super R> f72175a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super T, ? extends io.reactivex.y<R>> f72176b;

        /* renamed from: c  reason: collision with root package name */
        boolean f72177c;

        /* renamed from: d  reason: collision with root package name */
        org.reactivestreams.e f72178d;

        a(org.reactivestreams.d<? super R> dVar, n7.o<? super T, ? extends io.reactivex.y<R>> oVar) {
            this.f72175a = dVar;
            this.f72176b = oVar;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f72178d.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f72177c) {
                return;
            }
            this.f72177c = true;
            this.f72175a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f72177c) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f72177c = true;
            this.f72175a.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f72177c) {
                if (t9 instanceof io.reactivex.y) {
                    io.reactivex.y yVar = (io.reactivex.y) t9;
                    if (yVar.g()) {
                        io.reactivex.plugins.a.Y(yVar.d());
                        return;
                    }
                    return;
                }
                return;
            }
            try {
                io.reactivex.y yVar2 = (io.reactivex.y) io.reactivex.internal.functions.b.g(this.f72176b.apply(t9), "The selector returned a null Notification");
                if (yVar2.g()) {
                    this.f72178d.cancel();
                    onError(yVar2.d());
                } else if (yVar2.f()) {
                    this.f72178d.cancel();
                    onComplete();
                } else {
                    this.f72175a.onNext((Object) yVar2.e());
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f72178d.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f72178d, eVar)) {
                this.f72178d = eVar;
                this.f72175a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            this.f72178d.request(j4);
        }
    }

    public l0(io.reactivex.j<T> jVar, n7.o<? super T, ? extends io.reactivex.y<R>> oVar) {
        super(jVar);
        this.f72174c = oVar;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super R> dVar) {
        this.f71538b.j6(new a(dVar, this.f72174c));
    }
}
