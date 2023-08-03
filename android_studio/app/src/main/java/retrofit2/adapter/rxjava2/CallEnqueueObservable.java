package retrofit2.adapter.rxjava2;

import io.reactivex.disposables.c;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.a;
import io.reactivex.g0;
import io.reactivex.z;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* loaded from: classes5.dex */
final class CallEnqueueObservable<T> extends z<Response<T>> {
    private final Call<T> originalCall;

    /* loaded from: classes5.dex */
    private static final class CallCallback<T> implements c, Callback<T> {
        private final Call<?> call;
        private volatile boolean disposed;
        private final g0<? super Response<T>> observer;
        boolean terminated = false;

        CallCallback(Call<?> call, g0<? super Response<T>> g0Var) {
            this.call = call;
            this.observer = g0Var;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.disposed = true;
            this.call.cancel();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.disposed;
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<T> call, Throwable th) {
            if (call.isCanceled()) {
                return;
            }
            try {
                this.observer.onError(th);
            } catch (Throwable th2) {
                a.b(th2);
                io.reactivex.plugins.a.Y(new CompositeException(th, th2));
            }
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<T> call, Response<T> response) {
            if (this.disposed) {
                return;
            }
            try {
                this.observer.onNext(response);
                if (this.disposed) {
                    return;
                }
                this.terminated = true;
                this.observer.onComplete();
            } catch (Throwable th) {
                a.b(th);
                if (this.terminated) {
                    io.reactivex.plugins.a.Y(th);
                } else if (this.disposed) {
                } else {
                    try {
                        this.observer.onError(th);
                    } catch (Throwable th2) {
                        a.b(th2);
                        io.reactivex.plugins.a.Y(new CompositeException(th, th2));
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CallEnqueueObservable(Call<T> call) {
        this.originalCall = call;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(g0<? super Response<T>> g0Var) {
        Call<T> clone = this.originalCall.clone();
        CallCallback callCallback = new CallCallback(clone, g0Var);
        g0Var.onSubscribe(callCallback);
        if (callCallback.isDisposed()) {
            return;
        }
        clone.enqueue(callCallback);
    }
}
