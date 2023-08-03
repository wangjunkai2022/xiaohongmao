package io.reactivex.rxjava3.android.schedulers;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Message;
import io.reactivex.rxjava3.core.o0;
import io.reactivex.rxjava3.disposables.e;
import io.reactivex.rxjava3.disposables.f;
import java.util.Objects;
import java.util.concurrent.TimeUnit;

/* compiled from: HandlerScheduler.java */
/* loaded from: classes4.dex */
final class c extends o0 {

    /* renamed from: b  reason: collision with root package name */
    private final Handler f76113b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f76114c;

    /* compiled from: HandlerScheduler.java */
    /* loaded from: classes4.dex */
    private static final class a extends o0.c {

        /* renamed from: a  reason: collision with root package name */
        private final Handler f76115a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f76116b;

        /* renamed from: c  reason: collision with root package name */
        private volatile boolean f76117c;

        a(Handler handler, boolean z9) {
            this.f76115a = handler;
            this.f76116b = z9;
        }

        @Override // io.reactivex.rxjava3.core.o0.c
        @SuppressLint({"NewApi"})
        public f c(Runnable runnable, long j4, TimeUnit timeUnit) {
            Objects.requireNonNull(runnable, "run == null");
            Objects.requireNonNull(timeUnit, "unit == null");
            if (this.f76117c) {
                return e.a();
            }
            b bVar = new b(this.f76115a, io.reactivex.rxjava3.plugins.a.b0(runnable));
            Message obtain = Message.obtain(this.f76115a, bVar);
            obtain.obj = this;
            if (this.f76116b) {
                obtain.setAsynchronous(true);
            }
            this.f76115a.sendMessageDelayed(obtain, timeUnit.toMillis(j4));
            if (this.f76117c) {
                this.f76115a.removeCallbacks(bVar);
                return e.a();
            }
            return bVar;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f76117c = true;
            this.f76115a.removeCallbacksAndMessages(this);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f76117c;
        }
    }

    /* compiled from: HandlerScheduler.java */
    /* loaded from: classes4.dex */
    private static final class b implements Runnable, f {

        /* renamed from: a  reason: collision with root package name */
        private final Handler f76118a;

        /* renamed from: b  reason: collision with root package name */
        private final Runnable f76119b;

        /* renamed from: c  reason: collision with root package name */
        private volatile boolean f76120c;

        b(Handler handler, Runnable runnable) {
            this.f76118a = handler;
            this.f76119b = runnable;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f76118a.removeCallbacks(this);
            this.f76120c = true;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f76120c;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f76119b.run();
            } catch (Throwable th) {
                io.reactivex.rxjava3.plugins.a.Y(th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(Handler handler, boolean z9) {
        this.f76113b = handler;
        this.f76114c = z9;
    }

    @Override // io.reactivex.rxjava3.core.o0
    public o0.c d() {
        return new a(this.f76113b, this.f76114c);
    }

    @Override // io.reactivex.rxjava3.core.o0
    @SuppressLint({"NewApi"})
    public f g(Runnable runnable, long j4, TimeUnit timeUnit) {
        Objects.requireNonNull(runnable, "run == null");
        Objects.requireNonNull(timeUnit, "unit == null");
        b bVar = new b(this.f76113b, io.reactivex.rxjava3.plugins.a.b0(runnable));
        Message obtain = Message.obtain(this.f76113b, bVar);
        if (this.f76114c) {
            obtain.setAsynchronous(true);
        }
        this.f76113b.sendMessageDelayed(obtain, timeUnit.toMillis(j4));
        return bVar;
    }
}
