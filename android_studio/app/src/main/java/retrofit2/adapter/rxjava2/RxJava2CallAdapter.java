package retrofit2.adapter.rxjava2;

import io.reactivex.h0;
import java.lang.reflect.Type;
import r7.h;
import retrofit2.CallAdapter;

/* loaded from: classes5.dex */
final class RxJava2CallAdapter<R> implements CallAdapter<R, Object> {
    private final boolean isAsync;
    private final boolean isBody;
    private final boolean isCompletable;
    private final boolean isFlowable;
    private final boolean isMaybe;
    private final boolean isResult;
    private final boolean isSingle;
    private final Type responseType;
    @h
    private final h0 scheduler;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RxJava2CallAdapter(Type type, @h h0 h0Var, boolean z9, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15) {
        this.responseType = type;
        this.scheduler = h0Var;
        this.isAsync = z9;
        this.isResult = z10;
        this.isBody = z11;
        this.isFlowable = z12;
        this.isSingle = z13;
        this.isMaybe = z14;
        this.isCompletable = z15;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0037  */
    @Override // retrofit2.CallAdapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object adapt(retrofit2.Call<R> r2) {
        /*
            r1 = this;
            boolean r0 = r1.isAsync
            if (r0 == 0) goto La
            retrofit2.adapter.rxjava2.CallEnqueueObservable r0 = new retrofit2.adapter.rxjava2.CallEnqueueObservable
            r0.<init>(r2)
            goto Lf
        La:
            retrofit2.adapter.rxjava2.CallExecuteObservable r0 = new retrofit2.adapter.rxjava2.CallExecuteObservable
            r0.<init>(r2)
        Lf:
            boolean r2 = r1.isResult
            if (r2 == 0) goto L1a
            retrofit2.adapter.rxjava2.ResultObservable r2 = new retrofit2.adapter.rxjava2.ResultObservable
            r2.<init>(r0)
        L18:
            r0 = r2
            goto L24
        L1a:
            boolean r2 = r1.isBody
            if (r2 == 0) goto L24
            retrofit2.adapter.rxjava2.BodyObservable r2 = new retrofit2.adapter.rxjava2.BodyObservable
            r2.<init>(r0)
            goto L18
        L24:
            io.reactivex.h0 r2 = r1.scheduler
            if (r2 == 0) goto L2c
            io.reactivex.z r0 = r0.subscribeOn(r2)
        L2c:
            boolean r2 = r1.isFlowable
            if (r2 == 0) goto L37
            io.reactivex.BackpressureStrategy r2 = io.reactivex.BackpressureStrategy.LATEST
            io.reactivex.j r2 = r0.toFlowable(r2)
            return r2
        L37:
            boolean r2 = r1.isSingle
            if (r2 == 0) goto L40
            io.reactivex.i0 r2 = r0.singleOrError()
            return r2
        L40:
            boolean r2 = r1.isMaybe
            if (r2 == 0) goto L49
            io.reactivex.q r2 = r0.singleElement()
            return r2
        L49:
            boolean r2 = r1.isCompletable
            if (r2 == 0) goto L52
            io.reactivex.a r2 = r0.ignoreElements()
            return r2
        L52:
            io.reactivex.z r2 = io.reactivex.plugins.a.R(r0)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: retrofit2.adapter.rxjava2.RxJava2CallAdapter.adapt(retrofit2.Call):java.lang.Object");
    }

    @Override // retrofit2.CallAdapter
    public Type responseType() {
        return this.responseType;
    }
}
