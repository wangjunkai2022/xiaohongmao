package com.koushikdutta.async.future;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class Futures {
    public static <T, F> Future<T> c(Iterable<F> iterable, ThenFutureCallback<T, F> thenFutureCallback) {
        SimpleFuture simpleFuture = new SimpleFuture();
        e(iterable.iterator(), thenFutureCallback, simpleFuture, null);
        return simpleFuture;
    }

    public static <T, F> Future<T> d(F[] fArr, ThenFutureCallback<T, F> thenFutureCallback) {
        return c(Arrays.asList(fArr), thenFutureCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T, F> void e(final Iterator<F> it, final ThenFutureCallback<T, F> thenFutureCallback, final SimpleFuture<T> simpleFuture, Exception e4) {
        while (it.hasNext()) {
            try {
                Future<T> a10 = thenFutureCallback.a(it.next());
                simpleFuture.getClass();
                a10.I(new SuccessCallback() { // from class: com.koushikdutta.async.future.t
                    @Override // com.koushikdutta.async.future.SuccessCallback
                    public final void a(Object obj) {
                        SimpleFuture.this.e0(obj);
                    }
                }).p(new FailCallback() { // from class: com.koushikdutta.async.future.s
                    @Override // com.koushikdutta.async.future.FailCallback
                    public final void a(Exception exc) {
                        Futures.e(it, thenFutureCallback, simpleFuture, exc);
                    }
                });
                return;
            } catch (Exception e10) {
                e4 = e10;
            }
        }
        if (e4 == null) {
            simpleFuture.b0(new Exception("empty list"));
        } else {
            simpleFuture.b0(e4);
        }
    }

    public static <T> Future<List<T>> f(final List<Future<T>> list) {
        final ArrayList arrayList = new ArrayList();
        final SimpleFuture simpleFuture = new SimpleFuture();
        if (list.isEmpty()) {
            simpleFuture.e0(arrayList);
            return simpleFuture;
        }
        list.get(0).B(new FutureCallback<T>() { // from class: com.koushikdutta.async.future.Futures.1

            /* renamed from: a  reason: collision with root package name */
            int f44413a = 0;

            @Override // com.koushikdutta.async.future.FutureCallback
            public void c(Exception exc, T t9) {
                arrayList.add(t9);
                int i4 = this.f44413a + 1;
                this.f44413a = i4;
                if (i4 < list.size()) {
                    ((Future) list.get(this.f44413a)).B(this);
                } else {
                    simpleFuture.e0(arrayList);
                }
            }
        });
        return simpleFuture;
    }

    public static <T> Future<List<T>> g(Future<T>... futureArr) {
        return f(Arrays.asList(futureArr));
    }
}
