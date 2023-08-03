package com.google.common.util.concurrent;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;

/* compiled from: ForwardingListeningExecutorService.java */
@CanIgnoreReturnValue
@h3.c
/* loaded from: classes2.dex */
public abstract class g0 extends c0 implements u0 {
    protected g0() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.util.concurrent.c0
    /* renamed from: N */
    public abstract u0 M();

    @Override // com.google.common.util.concurrent.c0, java.util.concurrent.ExecutorService
    public /* bridge */ /* synthetic */ Future submit(Runnable runnable, Object obj) {
        return submit(runnable, (Runnable) obj);
    }

    @Override // com.google.common.util.concurrent.c0, java.util.concurrent.ExecutorService
    public <T> q0<T> submit(Callable<T> callable) {
        return M().submit((Callable) callable);
    }

    @Override // com.google.common.util.concurrent.c0, java.util.concurrent.ExecutorService
    public q0<?> submit(Runnable runnable) {
        return M().submit(runnable);
    }

    @Override // com.google.common.util.concurrent.c0, java.util.concurrent.ExecutorService
    public <T> q0<T> submit(Runnable runnable, T t9) {
        return M().submit(runnable, (Runnable) t9);
    }
}
