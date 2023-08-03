package com.google.mlkit.common.sdkinternal;

import androidx.annotation.NonNull;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: com.google.mlkit:common@@18.4.0 */
@u2.a
/* loaded from: classes2.dex */
public class l extends com.google.android.gms.internal.mlkit_common.a0 {

    /* renamed from: b  reason: collision with root package name */
    private static final ThreadLocal f35807b = new ThreadLocal();

    /* renamed from: a  reason: collision with root package name */
    private final ThreadPoolExecutor f35808a;

    public l() {
        final ThreadFactory defaultThreadFactory = Executors.defaultThreadFactory();
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(availableProcessors, availableProcessors, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactory() { // from class: com.google.mlkit.common.sdkinternal.a0
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(final Runnable runnable) {
                return defaultThreadFactory.newThread(new Runnable() { // from class: com.google.mlkit.common.sdkinternal.z
                    @Override // java.lang.Runnable
                    public final void run() {
                        l.d(runnable);
                    }
                });
            }
        });
        this.f35808a = threadPoolExecutor;
        threadPoolExecutor.allowCoreThreadTimeOut(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void d(Runnable runnable) {
        f35807b.set(new ArrayDeque());
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void e(Deque deque, Runnable runnable) {
        com.google.android.gms.common.internal.u.k(deque);
        deque.add(runnable);
        if (deque.size() <= 1) {
            do {
                runnable.run();
                deque.removeFirst();
                runnable = (Runnable) deque.peekFirst();
            } while (runnable != null);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_common.a0, com.google.android.gms.internal.mlkit_common.h
    @NonNull
    protected final /* synthetic */ Object a() {
        return this.f35808a;
    }

    @Override // com.google.android.gms.internal.mlkit_common.a0
    @NonNull
    protected final ExecutorService b() {
        return this.f35808a;
    }

    @Override // com.google.android.gms.internal.mlkit_common.a0, java.util.concurrent.Executor
    public final void execute(@NonNull final Runnable runnable) {
        Deque deque = (Deque) f35807b.get();
        if (deque != null && deque.size() <= 1) {
            e(deque, runnable);
        } else {
            this.f35808a.execute(new Runnable() { // from class: com.google.mlkit.common.sdkinternal.b0
                @Override // java.lang.Runnable
                public final void run() {
                    l.e((Deque) l.f35807b.get(), runnable);
                }
            });
        }
    }
}
