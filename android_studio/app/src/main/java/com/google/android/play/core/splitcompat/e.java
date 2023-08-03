package com.google.android.play.core.splitcompat;

import androidx.annotation.Nullable;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class e {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private static ThreadPoolExecutor f31825a;

    public static Executor a() {
        if (f31825a == null) {
            ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new d());
            f31825a = threadPoolExecutor;
            threadPoolExecutor.allowCoreThreadTimeOut(true);
        }
        return f31825a;
    }
}
