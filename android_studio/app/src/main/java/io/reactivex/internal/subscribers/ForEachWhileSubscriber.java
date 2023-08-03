package io.reactivex.internal.subscribers;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicReference;
import n7.r;

/* loaded from: classes4.dex */
public final class ForEachWhileSubscriber<T> extends AtomicReference<org.reactivestreams.e> implements o<T>, io.reactivex.disposables.c {

    /* renamed from: e  reason: collision with root package name */
    private static final long f75779e = -4403180040475402120L;

    /* renamed from: a  reason: collision with root package name */
    final r<? super T> f75780a;

    /* renamed from: b  reason: collision with root package name */
    final n7.g<? super Throwable> f75781b;

    /* renamed from: c  reason: collision with root package name */
    final n7.a f75782c;

    /* renamed from: d  reason: collision with root package name */
    boolean f75783d;

    public ForEachWhileSubscriber(r<? super T> rVar, n7.g<? super Throwable> gVar, n7.a aVar) {
        this.f75780a = rVar;
        this.f75781b = gVar;
        this.f75782c = aVar;
    }

    @Override // io.reactivex.disposables.c
    public void dispose() {
        SubscriptionHelper.cancel(this);
    }

    @Override // io.reactivex.disposables.c
    public boolean isDisposed() {
        return get() == SubscriptionHelper.CANCELLED;
    }

    @Override // org.reactivestreams.d
    public void onComplete() {
        if (this.f75783d) {
            return;
        }
        this.f75783d = true;
        try {
            this.f75782c.run();
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            io.reactivex.plugins.a.Y(th);
        }
    }

    @Override // org.reactivestreams.d
    public void onError(Throwable th) {
        if (this.f75783d) {
            io.reactivex.plugins.a.Y(th);
            return;
        }
        this.f75783d = true;
        try {
            this.f75781b.accept(th);
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            io.reactivex.plugins.a.Y(new CompositeException(th, th2));
        }
    }

    @Override // org.reactivestreams.d
    public void onNext(T t9) {
        if (this.f75783d) {
            return;
        }
        try {
            if (this.f75780a.test(t9)) {
                return;
            }
            dispose();
            onComplete();
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            dispose();
            onError(th);
        }
    }

    @Override // io.reactivex.o, org.reactivestreams.d
    public void onSubscribe(org.reactivestreams.e eVar) {
        SubscriptionHelper.setOnce(this, eVar, Long.MAX_VALUE);
    }
}
