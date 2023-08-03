package com.koushikdutta.async.future;

import com.koushikdutta.async.future.SimpleFuture;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes3.dex */
public class MultiFuture<T> extends SimpleFuture<T> {

    /* renamed from: k  reason: collision with root package name */
    private ArrayList<SimpleFuture.FutureCallbackInternal<T>> f44423k;

    /* renamed from: l  reason: collision with root package name */
    private final SimpleFuture.FutureCallbackInternal<T> f44424l;

    public MultiFuture() {
        this.f44424l = new SimpleFuture.FutureCallbackInternal() { // from class: com.koushikdutta.async.future.u
            @Override // com.koushikdutta.async.future.SimpleFuture.FutureCallbackInternal
            public final void a(Exception exc, Object obj, SimpleFuture.FutureCallsite futureCallsite) {
                MultiFuture.this.j0(exc, obj, futureCallsite);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j0(Exception exc, Object obj, SimpleFuture.FutureCallsite futureCallsite) {
        ArrayList<SimpleFuture.FutureCallbackInternal<T>> arrayList;
        synchronized (this) {
            arrayList = this.f44423k;
            this.f44423k = null;
        }
        if (arrayList == null) {
            return;
        }
        Iterator<SimpleFuture.FutureCallbackInternal<T>> it = arrayList.iterator();
        while (it.hasNext()) {
            it.next().a(exc, obj, futureCallsite);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.koushikdutta.async.future.SimpleFuture
    public void Y(SimpleFuture.FutureCallsite futureCallsite, SimpleFuture.FutureCallbackInternal<T> futureCallbackInternal) {
        synchronized (this) {
            if (futureCallbackInternal != null) {
                if (this.f44423k == null) {
                    this.f44423k = new ArrayList<>();
                }
                this.f44423k.add(futureCallbackInternal);
            }
        }
        super.Y(futureCallsite, this.f44424l);
    }

    public MultiFuture(T t9) {
        super(t9);
        this.f44424l = new SimpleFuture.FutureCallbackInternal() { // from class: com.koushikdutta.async.future.u
            @Override // com.koushikdutta.async.future.SimpleFuture.FutureCallbackInternal
            public final void a(Exception exc, Object obj, SimpleFuture.FutureCallsite futureCallsite) {
                MultiFuture.this.j0(exc, obj, futureCallsite);
            }
        };
    }

    public MultiFuture(Exception exc) {
        super(exc);
        this.f44424l = new SimpleFuture.FutureCallbackInternal() { // from class: com.koushikdutta.async.future.u
            @Override // com.koushikdutta.async.future.SimpleFuture.FutureCallbackInternal
            public final void a(Exception exc2, Object obj, SimpleFuture.FutureCallsite futureCallsite) {
                MultiFuture.this.j0(exc2, obj, futureCallsite);
            }
        };
    }

    public MultiFuture(Future<T> future) {
        super((Future) future);
        this.f44424l = new SimpleFuture.FutureCallbackInternal() { // from class: com.koushikdutta.async.future.u
            @Override // com.koushikdutta.async.future.SimpleFuture.FutureCallbackInternal
            public final void a(Exception exc2, Object obj, SimpleFuture.FutureCallsite futureCallsite) {
                MultiFuture.this.j0(exc2, obj, futureCallsite);
            }
        };
    }
}
