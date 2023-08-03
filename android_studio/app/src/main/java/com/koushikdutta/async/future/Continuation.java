package com.koushikdutta.async.future;

import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.callback.ContinuationCallback;
import java.util.LinkedList;

/* loaded from: classes3.dex */
public class Continuation extends SimpleCancellable implements ContinuationCallback, Runnable, Cancellable {

    /* renamed from: f  reason: collision with root package name */
    CompletedCallback f44377f;

    /* renamed from: g  reason: collision with root package name */
    Runnable f44378g;

    /* renamed from: h  reason: collision with root package name */
    LinkedList<ContinuationCallback> f44379h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f44380i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f44381j;

    /* renamed from: k  reason: collision with root package name */
    boolean f44382k;

    public Continuation() {
        this(null);
    }

    private CompletedCallback J() {
        return new CompletedCallback() { // from class: com.koushikdutta.async.future.Continuation.2

            /* renamed from: a  reason: collision with root package name */
            boolean f44385a;

            @Override // com.koushikdutta.async.callback.CompletedCallback
            public void g(Exception exc) {
                if (this.f44385a) {
                    return;
                }
                this.f44385a = true;
                Continuation.this.f44381j = false;
                if (exc == null) {
                    Continuation.this.y();
                } else {
                    Continuation.this.z(exc);
                }
            }
        };
    }

    private ContinuationCallback v(ContinuationCallback continuationCallback) {
        if (continuationCallback instanceof DependentCancellable) {
            ((DependentCancellable) continuationCallback).b(this);
        }
        return continuationCallback;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y() {
        if (this.f44380i) {
            return;
        }
        while (this.f44379h.size() > 0 && !this.f44381j && !isDone() && !isCancelled()) {
            ContinuationCallback remove = this.f44379h.remove();
            try {
                try {
                    this.f44380i = true;
                    this.f44381j = true;
                    remove.a(this, J());
                } catch (Exception e4) {
                    z(e4);
                }
            } finally {
                this.f44380i = false;
            }
        }
        if (this.f44381j || isDone() || isCancelled()) {
            return;
        }
        z(null);
    }

    public void A(CompletedCallback completedCallback) {
        this.f44377f = completedCallback;
    }

    public void D(final Cancellable cancellable) {
        if (cancellable == null) {
            this.f44378g = null;
        } else {
            this.f44378g = new Runnable() { // from class: com.koushikdutta.async.future.Continuation.1
                @Override // java.lang.Runnable
                public void run() {
                    cancellable.cancel();
                }
            };
        }
    }

    public void G(Runnable runnable) {
        this.f44378g = runnable;
    }

    public Continuation H() {
        if (!this.f44382k) {
            this.f44382k = true;
            y();
            return this;
        }
        throw new IllegalStateException("already started");
    }

    @Override // com.koushikdutta.async.callback.ContinuationCallback
    public void a(Continuation continuation, CompletedCallback completedCallback) throws Exception {
        A(completedCallback);
        H();
    }

    @Override // com.koushikdutta.async.future.SimpleCancellable, com.koushikdutta.async.future.Cancellable
    public boolean cancel() {
        if (super.cancel()) {
            Runnable runnable = this.f44378g;
            if (runnable != null) {
                runnable.run();
                return true;
            }
            return true;
        }
        return false;
    }

    public Continuation q(ContinuationCallback continuationCallback) {
        this.f44379h.add(v(continuationCallback));
        return this;
    }

    public Continuation r(final DependentFuture dependentFuture) {
        dependentFuture.b(this);
        q(new ContinuationCallback() { // from class: com.koushikdutta.async.future.Continuation.3
            @Override // com.koushikdutta.async.callback.ContinuationCallback
            public void a(Continuation continuation, CompletedCallback completedCallback) throws Exception {
                dependentFuture.get();
                completedCallback.g(null);
            }
        });
        return this;
    }

    @Override // java.lang.Runnable
    public void run() {
        H();
    }

    public CompletedCallback s() {
        return this.f44377f;
    }

    public Runnable u() {
        return this.f44378g;
    }

    public Continuation x(ContinuationCallback continuationCallback) {
        this.f44379h.add(0, v(continuationCallback));
        return this;
    }

    void z(Exception exc) {
        CompletedCallback completedCallback;
        if (i() && (completedCallback = this.f44377f) != null) {
            completedCallback.g(exc);
        }
    }

    public Continuation(CompletedCallback completedCallback) {
        this(completedCallback, null);
    }

    public Continuation(CompletedCallback completedCallback, Runnable runnable) {
        this.f44379h = new LinkedList<>();
        this.f44378g = runnable;
        this.f44377f = completedCallback;
    }
}
