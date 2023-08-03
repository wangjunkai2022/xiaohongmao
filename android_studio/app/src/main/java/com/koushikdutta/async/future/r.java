package com.koushikdutta.async.future;

import java.util.concurrent.Executor;

/* compiled from: Future.java */
/* loaded from: classes3.dex */
public final /* synthetic */ class r<T> {
    public static Future a(final Future future, Executor executor) {
        final SimpleFuture simpleFuture = new SimpleFuture();
        executor.execute(new Runnable() { // from class: com.koushikdutta.async.future.q
            @Override // java.lang.Runnable
            public final void run() {
                simpleFuture.Z(Future.this);
            }
        });
        return simpleFuture;
    }
}
