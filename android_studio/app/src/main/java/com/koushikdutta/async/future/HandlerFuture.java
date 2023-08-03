package com.koushikdutta.async.future;

import android.os.Handler;
import android.os.Looper;

/* loaded from: classes3.dex */
public class HandlerFuture<T> extends SimpleFuture<T> {

    /* renamed from: k  reason: collision with root package name */
    Handler f44417k;

    /* renamed from: com.koushikdutta.async.future.HandlerFuture$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements FutureCallback<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FutureCallback f44418a;

        AnonymousClass1(FutureCallback futureCallback) {
            this.f44418a = futureCallback;
        }

        @Override // com.koushikdutta.async.future.FutureCallback
        public void c(final Exception exc, final T t9) {
            if (Looper.myLooper() == HandlerFuture.this.f44417k.getLooper()) {
                this.f44418a.c(exc, t9);
            } else {
                HandlerFuture.this.f44417k.post(new Runnable() { // from class: com.koushikdutta.async.future.HandlerFuture.1.1
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // java.lang.Runnable
                    public void run() {
                        AnonymousClass1.this.c(exc, t9);
                    }
                });
            }
        }
    }

    public HandlerFuture() {
        Looper myLooper = Looper.myLooper();
        this.f44417k = new Handler(myLooper == null ? Looper.getMainLooper() : myLooper);
    }

    @Override // com.koushikdutta.async.future.SimpleFuture, com.koushikdutta.async.future.Future
    public void B(FutureCallback<T> futureCallback) {
        super.B(new AnonymousClass1(futureCallback));
    }
}
