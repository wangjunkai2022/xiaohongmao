package com.google.common.util.concurrent;

import com.google.common.util.concurrent.f0;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.lang.Exception;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* compiled from: AbstractCheckedFuture.java */
@h3.c
@h3.a
@Deprecated
/* loaded from: classes2.dex */
public abstract class b<V, X extends Exception> extends f0.a<V> implements q<V, X> {
    /* JADX INFO: Access modifiers changed from: protected */
    public b(q0<V> q0Var) {
        super(q0Var);
    }

    protected abstract X O(Exception exc);

    @Override // com.google.common.util.concurrent.q
    @CanIgnoreReturnValue
    public V d() throws Exception {
        try {
            return get();
        } catch (InterruptedException e4) {
            Thread.currentThread().interrupt();
            throw O(e4);
        } catch (CancellationException e10) {
            e = e10;
            throw O(e);
        } catch (ExecutionException e11) {
            e = e11;
            throw O(e);
        }
    }

    @Override // com.google.common.util.concurrent.q
    @CanIgnoreReturnValue
    public V m(long j4, TimeUnit timeUnit) throws TimeoutException, Exception {
        try {
            return get(j4, timeUnit);
        } catch (InterruptedException e4) {
            Thread.currentThread().interrupt();
            throw O(e4);
        } catch (CancellationException e10) {
            e = e10;
            throw O(e);
        } catch (ExecutionException e11) {
            e = e11;
            throw O(e);
        }
    }
}
