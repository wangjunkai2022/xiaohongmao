package com.koushikdutta.async.future;

/* loaded from: classes3.dex */
public abstract class MultiTransformFuture<T, F> extends MultiFuture<T> implements FutureCallback<F> {
    @Override // com.koushikdutta.async.future.FutureCallback
    public void c(Exception exc, F f10) {
        if (isCancelled()) {
            return;
        }
        if (exc != null) {
            k0(exc);
            return;
        }
        try {
            l0(f10);
        } catch (Exception e4) {
            k0(e4);
        }
    }

    protected void k0(Exception exc) {
        b0(exc);
    }

    protected abstract void l0(F f10) throws Exception;
}
