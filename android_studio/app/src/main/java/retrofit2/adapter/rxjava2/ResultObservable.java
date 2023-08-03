package retrofit2.adapter.rxjava2;

import io.reactivex.disposables.c;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.a;
import io.reactivex.g0;
import io.reactivex.z;
import retrofit2.Response;

/* loaded from: classes5.dex */
final class ResultObservable<T> extends z<Result<T>> {
    private final z<Response<T>> upstream;

    /* loaded from: classes5.dex */
    private static class ResultObserver<R> implements g0<Response<R>> {
        private final g0<? super Result<R>> observer;

        ResultObserver(g0<? super Result<R>> g0Var) {
            this.observer = g0Var;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.observer.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            try {
                this.observer.onNext(Result.error(th));
                this.observer.onComplete();
            } catch (Throwable th2) {
                try {
                    this.observer.onError(th2);
                } catch (Throwable th3) {
                    a.b(th3);
                    io.reactivex.plugins.a.Y(new CompositeException(th2, th3));
                }
            }
        }

        @Override // io.reactivex.g0
        public /* bridge */ /* synthetic */ void onNext(Object obj) {
            onNext((Response) ((Response) obj));
        }

        @Override // io.reactivex.g0
        public void onSubscribe(c cVar) {
            this.observer.onSubscribe(cVar);
        }

        public void onNext(Response<R> response) {
            this.observer.onNext(Result.response(response));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ResultObservable(z<Response<T>> zVar) {
        this.upstream = zVar;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(g0<? super Result<T>> g0Var) {
        this.upstream.subscribe(new ResultObserver(g0Var));
    }
}
