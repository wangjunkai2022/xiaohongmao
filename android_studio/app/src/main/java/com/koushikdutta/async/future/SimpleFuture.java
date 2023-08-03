package com.koushikdutta.async.future;

import com.koushikdutta.async.AsyncSemaphore;
import com.koushikdutta.async.future.SimpleFuture;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes3.dex */
public class SimpleFuture<T> extends SimpleCancellable implements DependentFuture<T> {

    /* renamed from: f  reason: collision with root package name */
    private AsyncSemaphore f44430f;

    /* renamed from: g  reason: collision with root package name */
    private Exception f44431g;

    /* renamed from: h  reason: collision with root package name */
    private T f44432h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f44433i;

    /* renamed from: j  reason: collision with root package name */
    private FutureCallbackInternal<T> f44434j;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes3.dex */
    public interface FutureCallbackInternal<T> {
        void a(Exception exc, T t9, FutureCallsite futureCallsite);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class FutureCallsite {

        /* renamed from: a  reason: collision with root package name */
        Exception f44435a;

        /* renamed from: b  reason: collision with root package name */
        Object f44436b;

        /* renamed from: c  reason: collision with root package name */
        FutureCallbackInternal f44437c;

        FutureCallsite() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        void a() {
            while (true) {
                FutureCallbackInternal futureCallbackInternal = this.f44437c;
                if (futureCallbackInternal == 0) {
                    return;
                }
                Exception exc = this.f44435a;
                Object obj = this.f44436b;
                this.f44437c = null;
                this.f44435a = null;
                this.f44436b = null;
                futureCallbackInternal.a(exc, obj, this);
            }
        }
    }

    public SimpleFuture() {
    }

    private boolean A(boolean z9) {
        FutureCallbackInternal<T> L;
        if (super.cancel()) {
            synchronized (this) {
                this.f44431g = new CancellationException();
                W();
                L = L();
                this.f44433i = z9;
            }
            K(null, L);
            return true;
        }
        return false;
    }

    private T J() throws ExecutionException {
        if (this.f44431g == null) {
            return this.f44432h;
        }
        throw new ExecutionException(this.f44431g);
    }

    private void K(FutureCallsite futureCallsite, FutureCallbackInternal<T> futureCallbackInternal) {
        if (this.f44433i || futureCallbackInternal == null) {
            return;
        }
        boolean z9 = false;
        if (futureCallsite == null) {
            z9 = true;
            futureCallsite = new FutureCallsite();
        }
        futureCallsite.f44437c = futureCallbackInternal;
        futureCallsite.f44435a = this.f44431g;
        futureCallsite.f44436b = this.f44432h;
        if (z9) {
            futureCallsite.a();
        }
    }

    private FutureCallbackInternal<T> L() {
        FutureCallbackInternal<T> futureCallbackInternal = this.f44434j;
        this.f44434j = null;
        return futureCallbackInternal;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void M(DoneCallback doneCallback, SimpleFuture simpleFuture, Exception e4, Object obj, FutureCallsite futureCallsite) {
        if (e4 == null) {
            try {
                doneCallback.a(e4, obj);
            } catch (Exception e10) {
                e4 = e10;
            }
        }
        simpleFuture.d0(e4, obj, futureCallsite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Future N(FailCallback failCallback, Exception exc) throws Exception {
        failCallback.a(exc);
        return new SimpleFuture((Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Future O(FailConvertCallback failConvertCallback, Exception exc) throws Exception {
        return new SimpleFuture(failConvertCallback.a(exc));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void P(SimpleFuture simpleFuture, FailRecoverCallback failRecoverCallback, Exception exc, Object obj, FutureCallsite futureCallsite) {
        if (exc == null) {
            simpleFuture.d0(exc, obj, futureCallsite);
            return;
        }
        try {
            simpleFuture.a0(failRecoverCallback.a(exc), futureCallsite);
        } catch (Exception e4) {
            simpleFuture.d0(e4, null, futureCallsite);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ void R(SimpleFuture simpleFuture, Exception exc, Object obj, FutureCallsite futureCallsite) {
        simpleFuture.d0(d0(exc, obj, futureCallsite) ? null : new CancellationException(), obj, futureCallsite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ void S(SimpleFuture simpleFuture, Exception exc, Object obj) {
        simpleFuture.b0(d0(exc, obj, null) ? null : new CancellationException());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void T(SuccessCallback successCallback, SimpleFuture simpleFuture, Exception e4, Object obj, FutureCallsite futureCallsite) {
        if (e4 == null) {
            try {
                successCallback.a(obj);
            } catch (Exception e10) {
                e4 = e10;
            }
        }
        simpleFuture.d0(e4, obj, futureCallsite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void U(SimpleFuture simpleFuture, ThenFutureCallback thenFutureCallback, Exception exc, Object obj, FutureCallsite futureCallsite) {
        if (exc != null) {
            simpleFuture.d0(exc, null, futureCallsite);
            return;
        }
        try {
            simpleFuture.a0(thenFutureCallback.a(obj), futureCallsite);
        } catch (Exception e4) {
            simpleFuture.d0(e4, null, futureCallsite);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Future V(ThenCallback thenCallback, Object obj) throws Exception {
        return new SimpleFuture(thenCallback.a(obj));
    }

    private Future<T> a0(Future<T> future, FutureCallsite futureCallsite) {
        b(future);
        final SimpleFuture simpleFuture = new SimpleFuture();
        if (future instanceof SimpleFuture) {
            ((SimpleFuture) future).Y(futureCallsite, new FutureCallbackInternal() { // from class: com.koushikdutta.async.future.b0
                @Override // com.koushikdutta.async.future.SimpleFuture.FutureCallbackInternal
                public final void a(Exception exc, Object obj, SimpleFuture.FutureCallsite futureCallsite2) {
                    SimpleFuture.this.R(simpleFuture, exc, obj, futureCallsite2);
                }
            });
        } else {
            future.B(new FutureCallback() { // from class: com.koushikdutta.async.future.x
                @Override // com.koushikdutta.async.future.FutureCallback
                public final void c(Exception exc, Object obj) {
                    SimpleFuture.this.S(simpleFuture, exc, obj);
                }
            });
        }
        return simpleFuture;
    }

    private boolean d0(Exception exc, T t9, FutureCallsite futureCallsite) {
        synchronized (this) {
            if (super.i()) {
                this.f44432h = t9;
                this.f44431g = exc;
                W();
                K(futureCallsite, L());
                return true;
            }
            return false;
        }
    }

    public void B(final FutureCallback<T> futureCallback) {
        if (futureCallback == null) {
            Y(null, null);
        } else {
            Y(null, new FutureCallbackInternal() { // from class: com.koushikdutta.async.future.z
                @Override // com.koushikdutta.async.future.SimpleFuture.FutureCallbackInternal
                public final void a(Exception exc, Object obj, SimpleFuture.FutureCallsite futureCallsite) {
                    FutureCallback.this.c(exc, obj);
                }
            });
        }
    }

    @Override // com.koushikdutta.async.future.Future
    public /* synthetic */ Future C(Executor executor) {
        return r.a(this, executor);
    }

    public boolean D() {
        return A(true);
    }

    @Override // com.koushikdutta.async.future.Future
    public T E() {
        return this.f44432h;
    }

    @Override // com.koushikdutta.async.future.Future
    public <R> Future<R> F(final ThenCallback<R, T> thenCallback) {
        return t(new ThenFutureCallback() { // from class: com.koushikdutta.async.future.e0
            @Override // com.koushikdutta.async.future.ThenFutureCallback
            public final Future a(Object obj) {
                Future V;
                V = SimpleFuture.V(ThenCallback.this, obj);
                return V;
            }
        });
    }

    AsyncSemaphore G() {
        if (this.f44430f == null) {
            this.f44430f = new AsyncSemaphore();
        }
        return this.f44430f;
    }

    @Deprecated
    public Object H() {
        return this.f44434j;
    }

    @Override // com.koushikdutta.async.future.Future
    public Future<T> I(final SuccessCallback<T> successCallback) {
        final SimpleFuture simpleFuture = new SimpleFuture();
        simpleFuture.b(this);
        Y(null, new FutureCallbackInternal() { // from class: com.koushikdutta.async.future.d0
            @Override // com.koushikdutta.async.future.SimpleFuture.FutureCallbackInternal
            public final void a(Exception exc, Object obj, SimpleFuture.FutureCallsite futureCallsite) {
                SimpleFuture.T(SuccessCallback.this, simpleFuture, exc, obj, futureCallsite);
            }
        });
        return simpleFuture;
    }

    void W() {
        AsyncSemaphore asyncSemaphore = this.f44430f;
        if (asyncSemaphore != null) {
            asyncSemaphore.b();
            this.f44430f = null;
        }
    }

    @Override // com.koushikdutta.async.future.SimpleCancellable
    /* renamed from: X */
    public SimpleFuture<T> h() {
        super.h();
        this.f44432h = null;
        this.f44431g = null;
        this.f44430f = null;
        this.f44434j = null;
        this.f44433i = false;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Y(FutureCallsite futureCallsite, FutureCallbackInternal<T> futureCallbackInternal) {
        synchronized (this) {
            this.f44434j = futureCallbackInternal;
            if (isDone() || isCancelled()) {
                K(futureCallsite, L());
            }
        }
    }

    public Future<T> Z(Future<T> future) {
        return a0(future, null);
    }

    @Override // com.koushikdutta.async.future.SimpleCancellable, com.koushikdutta.async.future.DependentCancellable
    public boolean b(Cancellable cancellable) {
        return super.b(cancellable);
    }

    public boolean b0(Exception exc) {
        return d0(exc, null, null);
    }

    public boolean c0(Exception exc, T t9) {
        return d0(exc, t9, null);
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z9) {
        return cancel();
    }

    public boolean e0(T t9) {
        return d0(null, t9, null);
    }

    public boolean f0(Exception exc) {
        return d0(exc, null, null);
    }

    public Future<T> g0(Future<T> future) {
        return a0(future, null);
    }

    @Override // java.util.concurrent.Future
    public T get() throws InterruptedException, ExecutionException {
        synchronized (this) {
            if (!isCancelled() && !isDone()) {
                G().a();
                return J();
            }
            return J();
        }
    }

    public boolean h0(T t9) {
        return d0(null, t9, null);
    }

    @Override // com.koushikdutta.async.future.SimpleCancellable
    public boolean i() {
        return e0(null);
    }

    @Override // com.koushikdutta.async.future.Future
    public Exception l() {
        return this.f44431g;
    }

    @Override // com.koushikdutta.async.future.Future
    public Future<T> n(final FailRecoverCallback<T> failRecoverCallback) {
        final SimpleFuture simpleFuture = new SimpleFuture();
        simpleFuture.b(this);
        Y(null, new FutureCallbackInternal() { // from class: com.koushikdutta.async.future.a0
            @Override // com.koushikdutta.async.future.SimpleFuture.FutureCallbackInternal
            public final void a(Exception exc, Object obj, SimpleFuture.FutureCallsite futureCallsite) {
                SimpleFuture.P(SimpleFuture.this, failRecoverCallback, exc, obj, futureCallsite);
            }
        });
        return simpleFuture;
    }

    @Override // com.koushikdutta.async.future.Future
    public Future<T> o(final DoneCallback<T> doneCallback) {
        final SimpleFuture simpleFuture = new SimpleFuture();
        simpleFuture.b(this);
        Y(null, new FutureCallbackInternal() { // from class: com.koushikdutta.async.future.y
            @Override // com.koushikdutta.async.future.SimpleFuture.FutureCallbackInternal
            public final void a(Exception exc, Object obj, SimpleFuture.FutureCallsite futureCallsite) {
                SimpleFuture.M(DoneCallback.this, simpleFuture, exc, obj, futureCallsite);
            }
        });
        return simpleFuture;
    }

    @Override // com.koushikdutta.async.future.Future
    public Future<T> p(final FailCallback failCallback) {
        return n(new FailRecoverCallback() { // from class: com.koushikdutta.async.future.v
            @Override // com.koushikdutta.async.future.FailRecoverCallback
            public final Future a(Exception exc) {
                Future N;
                N = SimpleFuture.N(FailCallback.this, exc);
                return N;
            }
        });
    }

    @Override // com.koushikdutta.async.future.Future
    public <R> Future<R> t(final ThenFutureCallback<R, T> thenFutureCallback) {
        final SimpleFuture simpleFuture = new SimpleFuture();
        simpleFuture.b(this);
        Y(null, new FutureCallbackInternal() { // from class: com.koushikdutta.async.future.c0
            @Override // com.koushikdutta.async.future.SimpleFuture.FutureCallbackInternal
            public final void a(Exception exc, Object obj, SimpleFuture.FutureCallsite futureCallsite) {
                SimpleFuture.U(SimpleFuture.this, thenFutureCallback, exc, obj, futureCallsite);
            }
        });
        return simpleFuture;
    }

    @Override // com.koushikdutta.async.future.Future
    public Future<T> w(final FailConvertCallback<T> failConvertCallback) {
        return n(new FailRecoverCallback() { // from class: com.koushikdutta.async.future.w
            @Override // com.koushikdutta.async.future.FailRecoverCallback
            public final Future a(Exception exc) {
                Future O;
                O = SimpleFuture.O(FailConvertCallback.this, exc);
                return O;
            }
        });
    }

    public SimpleFuture(T t9) {
        e0(t9);
    }

    @Override // com.koushikdutta.async.future.SimpleCancellable, com.koushikdutta.async.future.Cancellable
    public boolean cancel() {
        return A(this.f44433i);
    }

    public SimpleFuture(Exception exc) {
        b0(exc);
    }

    public SimpleFuture(Future<T> future) {
        Z(future);
    }

    @Override // java.util.concurrent.Future
    public T get(long j4, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        synchronized (this) {
            if (!isCancelled() && !isDone()) {
                AsyncSemaphore G = G();
                if (G.c(j4, timeUnit)) {
                    return J();
                }
                throw new TimeoutException();
            }
            return J();
        }
    }
}
