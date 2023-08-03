package com.google.android.gms.internal.base;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
final class o implements m {
    private o() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ o(n nVar) {
    }

    @Override // com.google.android.gms.internal.base.m
    public final ExecutorService a(int i4, ThreadFactory threadFactory, int i10) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i4, i4, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), threadFactory);
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return Executors.unconfigurableExecutorService(threadPoolExecutor);
    }

    @Override // com.google.android.gms.internal.base.m
    public final ExecutorService b(int i4, int i10) {
        return a(4, Executors.defaultThreadFactory(), 2);
    }

    @Override // com.google.android.gms.internal.base.m
    public final ExecutorService c(ThreadFactory threadFactory, int i4) {
        return a(1, threadFactory, 1);
    }
}
