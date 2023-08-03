package com.alipay.android.phone.mrpc.core;

import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

/* loaded from: classes.dex */
final class q extends FutureTask<y> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ u f6659a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ p f6660b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q(p pVar, Callable callable, u uVar) {
        super(callable);
        this.f6660b = pVar;
        this.f6659a = uVar;
    }

    @Override // java.util.concurrent.FutureTask
    protected final void done() {
        s c10 = this.f6659a.c();
        if (c10.a() == null) {
            super.done();
            return;
        }
        try {
            get();
            if (isCancelled() || c10.c()) {
                c10.b();
                if (isCancelled() && isDone()) {
                    return;
                }
                cancel(false);
            }
        } catch (InterruptedException e4) {
            e4.toString();
        } catch (CancellationException unused) {
            c10.b();
        } catch (ExecutionException e10) {
            if (e10.getCause() == null || !(e10.getCause() instanceof HttpException)) {
                e10.toString();
                return;
            }
            HttpException httpException = (HttpException) e10.getCause();
            httpException.getCode();
            httpException.getMsg();
        } catch (Throwable th) {
            throw new RuntimeException("An error occured while executing http request", th);
        }
    }
}
