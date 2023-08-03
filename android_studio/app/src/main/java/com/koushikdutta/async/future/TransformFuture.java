package com.koushikdutta.async.future;

/* loaded from: classes3.dex */
public abstract class TransformFuture<T, F> extends SimpleFuture<T> implements FutureCallback<F> {
    public TransformFuture(F f10) {
        c(null, f10);
    }

    @Override // com.koushikdutta.async.future.FutureCallback
    public void c(Exception exc, F f10) {
        if (isCancelled()) {
            return;
        }
        if (exc != null) {
            i0(exc);
            return;
        }
        try {
            j0(f10);
        } catch (Exception e4) {
            i0(e4);
        }
    }

    protected void i0(Exception exc) {
        b0(exc);
    }

    protected abstract void j0(F f10) throws Exception;

    public TransformFuture() {
    }
}
