package retrofit2.adapter.rxjava2;

import io.reactivex.disposables.c;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.a;
import io.reactivex.g0;
import io.reactivex.z;
import retrofit2.Call;
import retrofit2.Response;

/* loaded from: classes5.dex */
final class CallExecuteObservable<T> extends z<Response<T>> {
    private final Call<T> originalCall;

    /* loaded from: classes5.dex */
    private static final class CallDisposable implements c {
        private final Call<?> call;
        private volatile boolean disposed;

        CallDisposable(Call<?> call) {
            this.call = call;
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
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CallExecuteObservable(Call<T> call) {
        this.originalCall = call;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(g0<? super Response<T>> g0Var) {
        boolean z9;
        Call<T> clone = this.originalCall.clone();
        CallDisposable callDisposable = new CallDisposable(clone);
        g0Var.onSubscribe(callDisposable);
        if (callDisposable.isDisposed()) {
            return;
        }
        try {
            Response<T> execute = clone.execute();
            if (!callDisposable.isDisposed()) {
                g0Var.onNext(execute);
            }
            if (callDisposable.isDisposed()) {
                return;
            }
            try {
                g0Var.onComplete();
            } catch (Throwable th) {
                th = th;
                z9 = true;
                a.b(th);
                if (z9) {
                    io.reactivex.plugins.a.Y(th);
                } else if (callDisposable.isDisposed()) {
                } else {
                    try {
                        g0Var.onError(th);
                    } catch (Throwable th2) {
                        a.b(th2);
                        io.reactivex.plugins.a.Y(new CompositeException(th, th2));
                    }
                }
            }
        } catch (Throwable th3) {
            th = th3;
            z9 = false;
        }
    }
}
