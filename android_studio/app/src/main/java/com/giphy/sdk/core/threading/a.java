package com.giphy.sdk.core.threading;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import androidx.exifinterface.media.ExifInterface;
import java.io.InterruptedIOException;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: ApiTask.kt */
@Metadata(bv = {}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u0000 \u0018*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u0001\nB\u0017\b\u0016\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\t¢\u0006\u0004\b\u0015\u0010\u0016B'\b\u0016\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\t\u0012\u0006\u0010\u0010\u001a\u00020\r\u0012\u0006\u0010\u0014\u001a\u00020\u0011¢\u0006\u0004\b\u0015\u0010\u0017J\u001c\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u00052\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0003J\r\u0010\u0007\u001a\u00028\u0000¢\u0006\u0004\b\u0007\u0010\bR\u001a\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0019"}, d2 = {"Lcom/giphy/sdk/core/threading/a;", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "", "Lcom/giphy/sdk/core/network/api/a;", "completionHandler", "Ljava/util/concurrent/Future;", "k", "m", "()Ljava/lang/Object;", "Ljava/util/concurrent/Callable;", "a", "Ljava/util/concurrent/Callable;", "callable", "Ljava/util/concurrent/ExecutorService;", "b", "Ljava/util/concurrent/ExecutorService;", "networkRequestExecutor", "Ljava/util/concurrent/Executor;", "c", "Ljava/util/concurrent/Executor;", "completionExecutor", "<init>", "(Ljava/util/concurrent/Callable;)V", "(Ljava/util/concurrent/Callable;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Executor;)V", "j", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class a<V> {

    /* renamed from: d  reason: collision with root package name */
    private static final int f16967d;

    /* renamed from: e  reason: collision with root package name */
    private static final int f16968e;

    /* renamed from: f  reason: collision with root package name */
    private static final int f16969f;

    /* renamed from: g  reason: collision with root package name */
    private static final long f16970g;

    /* renamed from: h  reason: collision with root package name */
    private static ExecutorService f16971h;

    /* renamed from: i  reason: collision with root package name */
    private static Executor f16972i;
    @g

    /* renamed from: j  reason: collision with root package name */
    public static final C0133a f16973j = new C0133a(null);

    /* renamed from: a  reason: collision with root package name */
    private final Callable<V> f16974a;

    /* renamed from: b  reason: collision with root package name */
    private final ExecutorService f16975b;

    /* renamed from: c  reason: collision with root package name */
    private final Executor f16976c;

    /* compiled from: ApiTask.kt */
    @Metadata(bv = {}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\u000b\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0004R\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR\u0017\u0010\u000b\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u000b\u0010\b\u001a\u0004\b\f\u0010\nR\u0017\u0010\r\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\r\u0010\b\u001a\u0004\b\u000e\u0010\nR\u001a\u0010\u0010\u001a\u00020\u000f8\u0006X\u0086D¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u001a"}, d2 = {"Lcom/giphy/sdk/core/threading/a$a;", "", "Ljava/util/concurrent/ExecutorService;", "c", "Ljava/util/concurrent/Executor;", "b", "", "CPU_COUNT", "I", "a", "()I", "THREAD_POOL_CORE_SIZE", "d", "THREAD_POOL_MAX_SIZE", "f", "", "THREAD_POOL_KEEP_ALIVE_TIME", "J", "e", "()J", "COMPLETION_EXECUTOR", "Ljava/util/concurrent/Executor;", "NETWORK_REQUEST_EXECUTOR", "Ljava/util/concurrent/ExecutorService;", "<init>", "()V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* renamed from: com.giphy.sdk.core.threading.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0133a {
        private C0133a() {
        }

        public final int a() {
            return a.f16967d;
        }

        @g
        public final Executor b() {
            if (a.f16972i == null) {
                a.f16972i = new com.giphy.sdk.core.threading.b(new Handler(Looper.getMainLooper()));
            }
            Executor executor = a.f16972i;
            Intrinsics.checkNotNull(executor);
            return executor;
        }

        @g
        public final ExecutorService c() {
            if (a.f16971h == null) {
                a.f16971h = new ThreadPoolExecutor(d(), f(), e(), TimeUnit.SECONDS, new LinkedBlockingQueue());
            }
            ExecutorService executorService = a.f16971h;
            Intrinsics.checkNotNull(executorService);
            return executorService;
        }

        public final int d() {
            return a.f16968e;
        }

        public final long e() {
            return a.f16970g;
        }

        public final int f() {
            return a.f16969f;
        }

        public /* synthetic */ C0133a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ApiTask.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "run"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class b implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.giphy.sdk.core.network.api.a f16978b;

        /* compiled from: ApiTask.kt */
        @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "run"}, k = 3, mv = {1, 4, 1})
        /* renamed from: com.giphy.sdk.core.threading.a$b$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        static final class RunnableC0134a implements Runnable {

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ Object f16980b;

            RunnableC0134a(Object obj) {
                this.f16980b = obj;
            }

            @Override // java.lang.Runnable
            public final void run() {
                com.giphy.sdk.core.network.api.a aVar = b.this.f16978b;
                if (aVar != null) {
                    aVar.a(this.f16980b, null);
                }
            }
        }

        /* compiled from: ApiTask.kt */
        @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "run"}, k = 3, mv = {1, 4, 1})
        /* renamed from: com.giphy.sdk.core.threading.a$b$b  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        static final class RunnableC0135b implements Runnable {

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ ExecutionException f16982b;

            RunnableC0135b(ExecutionException executionException) {
                this.f16982b = executionException;
            }

            @Override // java.lang.Runnable
            public final void run() {
                com.giphy.sdk.core.network.api.a aVar = b.this.f16978b;
                if (aVar != null) {
                    aVar.a(null, this.f16982b);
                }
            }
        }

        /* compiled from: ApiTask.kt */
        @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "run"}, k = 3, mv = {1, 4, 1})
        /* loaded from: classes2.dex */
        static final class c implements Runnable {

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ Throwable f16984b;

            c(Throwable th) {
                this.f16984b = th;
            }

            @Override // java.lang.Runnable
            public final void run() {
                com.giphy.sdk.core.network.api.a aVar = b.this.f16978b;
                if (aVar != null) {
                    aVar.a(null, this.f16984b);
                }
            }
        }

        b(com.giphy.sdk.core.network.api.a aVar) {
            this.f16978b = aVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                Object call = a.this.f16974a.call();
                Thread currentThread = Thread.currentThread();
                Intrinsics.checkNotNullExpressionValue(currentThread, "Thread.currentThread()");
                if (!currentThread.isInterrupted()) {
                    a.this.f16976c.execute(new RunnableC0134a(call));
                    return;
                }
                throw new InterruptedException();
            } catch (InterruptedIOException | InterruptedException unused) {
            } catch (ExecutionException e4) {
                Log.e(a.class.getName(), "Unable to perform async task, cancelling…", e4);
                a.this.f16976c.execute(new RunnableC0135b(e4));
            } catch (Throwable th) {
                a.this.f16976c.execute(new c(th));
            }
        }
    }

    static {
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        f16967d = availableProcessors;
        f16968e = availableProcessors + 2;
        f16969f = (availableProcessors * 2) + 2;
        f16970g = 1L;
    }

    public a(@g Callable<V> callable) {
        Intrinsics.checkNotNullParameter(callable, "callable");
        this.f16974a = callable;
        C0133a c0133a = f16973j;
        this.f16975b = c0133a.c();
        this.f16976c = c0133a.b();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Future l(a aVar, com.giphy.sdk.core.network.api.a aVar2, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            aVar2 = null;
        }
        return aVar.k(aVar2);
    }

    @g
    public final Future<?> k(@h com.giphy.sdk.core.network.api.a<? super V> aVar) {
        Future<?> submit = this.f16975b.submit(new b(aVar));
        Intrinsics.checkNotNullExpressionValue(submit, "networkRequestExecutor.s…}\n            }\n        }");
        return submit;
    }

    public final V m() throws Exception {
        return this.f16974a.call();
    }

    public a(@g Callable<V> callable, @g ExecutorService networkRequestExecutor, @g Executor completionExecutor) {
        Intrinsics.checkNotNullParameter(callable, "callable");
        Intrinsics.checkNotNullParameter(networkRequestExecutor, "networkRequestExecutor");
        Intrinsics.checkNotNullParameter(completionExecutor, "completionExecutor");
        this.f16974a = callable;
        this.f16975b = networkRequestExecutor;
        this.f16976c = completionExecutor;
    }
}
