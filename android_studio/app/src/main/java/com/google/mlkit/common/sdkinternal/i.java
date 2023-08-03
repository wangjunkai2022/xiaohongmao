package com.google.mlkit.common.sdkinternal;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.mlkit.common.MlKitException;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* compiled from: com.google.mlkit:common@@18.4.0 */
@u2.a
/* loaded from: classes2.dex */
public class i {

    /* renamed from: b  reason: collision with root package name */
    private static final Object f35798b = new Object();
    @Nullable
    @GuardedBy(org.aspectj.lang.c.f91028k)

    /* renamed from: c  reason: collision with root package name */
    private static i f35799c;

    /* renamed from: a  reason: collision with root package name */
    private Handler f35800a;

    private i(Looper looper) {
        this.f35800a = new com.google.android.gms.internal.mlkit_common.a(looper);
    }

    @NonNull
    @u2.a
    public static i b() {
        i iVar;
        synchronized (f35798b) {
            if (f35799c == null) {
                HandlerThread handlerThread = new HandlerThread("MLHandler", 9);
                handlerThread.start();
                f35799c = new i(handlerThread.getLooper());
            }
            iVar = f35799c;
        }
        return iVar;
    }

    @NonNull
    @u2.a
    public static Executor g() {
        return y.f35919a;
    }

    @NonNull
    @u2.a
    public Handler a() {
        return this.f35800a;
    }

    @NonNull
    @u2.a
    public <ResultT> com.google.android.gms.tasks.k<ResultT> c(@NonNull final Callable<ResultT> callable) {
        final com.google.android.gms.tasks.l lVar = new com.google.android.gms.tasks.l();
        d(new Runnable() { // from class: com.google.mlkit.common.sdkinternal.w
            @Override // java.lang.Runnable
            public final void run() {
                Callable callable2 = callable;
                com.google.android.gms.tasks.l lVar2 = lVar;
                try {
                    lVar2.c(callable2.call());
                } catch (MlKitException e4) {
                    lVar2.b(e4);
                } catch (Exception e10) {
                    lVar2.b(new MlKitException("Internal error has occurred when executing ML Kit tasks", 13, e10));
                }
            }
        });
        return lVar.a();
    }

    @u2.a
    public void d(@NonNull Runnable runnable) {
        g().execute(runnable);
    }

    @u2.a
    public void e(@NonNull Runnable runnable, long j4) {
        this.f35800a.postDelayed(runnable, j4);
    }

    @NonNull
    @u2.a
    public <ResultT> com.google.android.gms.tasks.k<ResultT> f(@NonNull Callable<com.google.android.gms.tasks.k<ResultT>> callable) {
        return (com.google.android.gms.tasks.k<ResultT>) c(callable).p(com.google.android.gms.internal.mlkit_common.b0.a(), x.f35918a);
    }
}
