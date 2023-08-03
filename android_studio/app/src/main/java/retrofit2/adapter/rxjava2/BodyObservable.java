package retrofit2.adapter.rxjava2;

import io.reactivex.disposables.c;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.g0;
import io.reactivex.plugins.a;
import io.reactivex.z;
import retrofit2.Response;

/* loaded from: classes5.dex */
final class BodyObservable<T> extends z<T> {
    private final z<Response<T>> upstream;

    /* loaded from: classes5.dex */
    private static class BodyObserver<R> implements g0<Response<R>> {
        private final g0<? super R> observer;
        private boolean terminated;

        BodyObserver(g0<? super R> g0Var) {
            this.observer = g0Var;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.terminated) {
                return;
            }
            this.observer.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (!this.terminated) {
                this.observer.onError(th);
                return;
            }
            AssertionError assertionError = new AssertionError("This should never happen! Report as a bug with the full stacktrace.");
            assertionError.initCause(th);
            a.Y(assertionError);
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
            if (response.isSuccessful()) {
                this.observer.onNext(response.body());
                return;
            }
            this.terminated = true;
            HttpException httpException = new HttpException(response);
            try {
                this.observer.onError(httpException);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                a.Y(new CompositeException(httpException, th));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BodyObservable(z<Response<T>> zVar) {
        this.upstream = zVar;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(g0<? super T> g0Var) {
        this.upstream.subscribe(new BodyObserver(g0Var));
    }
}
