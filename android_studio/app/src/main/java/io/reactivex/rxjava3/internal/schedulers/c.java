package io.reactivex.rxjava3.internal.schedulers;

import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/* compiled from: DisposeOnCancel.java */
/* loaded from: classes4.dex */
final class c implements Future<Object> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.disposables.f f81065a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(io.reactivex.rxjava3.disposables.f d4) {
        this.f81065a = d4;
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean mayInterruptIfRunning) {
        this.f81065a.dispose();
        return false;
    }

    @Override // java.util.concurrent.Future
    public Object get() {
        return null;
    }

    @Override // java.util.concurrent.Future
    public Object get(long timeout, @p7.e TimeUnit unit) {
        return null;
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return false;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return false;
    }
}
