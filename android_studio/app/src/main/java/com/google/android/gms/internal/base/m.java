package com.google.android.gms.internal.base;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.ThreadFactory;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public interface m {
    ExecutorService a(int i4, ThreadFactory threadFactory, int i10);

    ExecutorService b(int i4, int i10);

    ExecutorService c(ThreadFactory threadFactory, int i4);
}
