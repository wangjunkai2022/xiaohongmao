package io.reactivex.android.schedulers;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Message;
import io.reactivex.disposables.c;
import io.reactivex.disposables.d;
import io.reactivex.h0;
import java.util.Objects;
import java.util.concurrent.TimeUnit;

/* compiled from: HandlerScheduler.java */
/* loaded from: classes3.dex */
final class b extends h0 {

    /* renamed from: c  reason: collision with root package name */
    private final Handler f71074c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f71075d;

    /* compiled from: HandlerScheduler.java */
    /* loaded from: classes3.dex */
    private static final class a extends h0.c {

        /* renamed from: a  reason: collision with root package name */
        private final Handler f71076a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f71077b;

        /* renamed from: c  reason: collision with root package name */
        private volatile boolean f71078c;

        a(Handler handler, boolean z9) {
            this.f71076a = handler;
            this.f71077b = z9;
        }

        @Override // io.reactivex.h0.c
        @SuppressLint({"NewApi"})
        public c c(Runnable runnable, long j4, TimeUnit timeUnit) {
            Objects.requireNonNull(runnable, "run == null");
            Objects.requireNonNull(timeUnit, "unit == null");
            if (this.f71078c) {
                return d.a();
            }
            RunnableC0539b runnableC0539b = new RunnableC0539b(this.f71076a, io.reactivex.plugins.a.b0(runnable));
            Message obtain = Message.obtain(this.f71076a, runnableC0539b);
            obtain.obj = this;
            if (this.f71077b) {
                obtain.setAsynchronous(true);
            }
            this.f71076a.sendMessageDelayed(obtain, timeUnit.toMillis(j4));
            if (this.f71078c) {
                this.f71076a.removeCallbacks(runnableC0539b);
                return d.a();
            }
            return runnableC0539b;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f71078c = true;
            this.f71076a.removeCallbacksAndMessages(this);
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f71078c;
        }
    }

    /* compiled from: HandlerScheduler.java */
    /* renamed from: io.reactivex.android.schedulers.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    private static final class RunnableC0539b implements Runnable, c {

        /* renamed from: a  reason: collision with root package name */
        private final Handler f71079a;

        /* renamed from: b  reason: collision with root package name */
        private final Runnable f71080b;

        /* renamed from: c  reason: collision with root package name */
        private volatile boolean f71081c;

        RunnableC0539b(Handler handler, Runnable runnable) {
            this.f71079a = handler;
            this.f71080b = runnable;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f71079a.removeCallbacks(this);
            this.f71081c = true;
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f71081c;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f71080b.run();
            } catch (Throwable th) {
                io.reactivex.plugins.a.Y(th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Handler handler, boolean z9) {
        this.f71074c = handler;
        this.f71075d = z9;
    }

    @Override // io.reactivex.h0
    public h0.c d() {
        return new a(this.f71074c, this.f71075d);
    }

    @Override // io.reactivex.h0
    @SuppressLint({"NewApi"})
    public c g(Runnable runnable, long j4, TimeUnit timeUnit) {
        Objects.requireNonNull(runnable, "run == null");
        Objects.requireNonNull(timeUnit, "unit == null");
        RunnableC0539b runnableC0539b = new RunnableC0539b(this.f71074c, io.reactivex.plugins.a.b0(runnable));
        Message obtain = Message.obtain(this.f71074c, runnableC0539b);
        if (this.f71075d) {
            obtain.setAsynchronous(true);
        }
        this.f71074c.sendMessageDelayed(obtain, timeUnit.toMillis(j4));
        return runnableC0539b;
    }
}
