package io.reactivex.rxjava3.internal.subscribers;

import io.reactivex.rxjava3.core.r;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes4.dex */
public final class ForEachWhileSubscriber<T> extends AtomicReference<org.reactivestreams.e> implements r<T>, io.reactivex.rxjava3.disposables.f {

    /* renamed from: e  reason: collision with root package name */
    private static final long f81194e = -4403180040475402120L;

    /* renamed from: a  reason: collision with root package name */
    final q7.r<? super T> f81195a;

    /* renamed from: b  reason: collision with root package name */
    final q7.g<? super Throwable> f81196b;

    /* renamed from: c  reason: collision with root package name */
    final q7.a f81197c;

    /* renamed from: d  reason: collision with root package name */
    boolean f81198d;

    public ForEachWhileSubscriber(q7.r<? super T> onNext, q7.g<? super Throwable> onError, q7.a onComplete) {
        this.f81195a = onNext;
        this.f81196b = onError;
        this.f81197c = onComplete;
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public void dispose() {
        SubscriptionHelper.cancel(this);
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public boolean isDisposed() {
        return get() == SubscriptionHelper.CANCELLED;
    }

    @Override // org.reactivestreams.d
    public void onComplete() {
        if (this.f81198d) {
            return;
        }
        this.f81198d = true;
        try {
            this.f81197c.run();
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            io.reactivex.rxjava3.plugins.a.Y(th);
        }
    }

    @Override // org.reactivestreams.d
    public void onError(Throwable t9) {
        if (this.f81198d) {
            io.reactivex.rxjava3.plugins.a.Y(t9);
            return;
        }
        this.f81198d = true;
        try {
            this.f81196b.accept(t9);
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            io.reactivex.rxjava3.plugins.a.Y(new CompositeException(t9, th));
        }
    }

    @Override // org.reactivestreams.d
    public void onNext(T t9) {
        if (this.f81198d) {
            return;
        }
        try {
            if (this.f81195a.test(t9)) {
                return;
            }
            dispose();
            onComplete();
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            dispose();
            onError(th);
        }
    }

    @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
    public void onSubscribe(org.reactivestreams.e s9) {
        SubscriptionHelper.setOnce(this, s9, Long.MAX_VALUE);
    }
}
