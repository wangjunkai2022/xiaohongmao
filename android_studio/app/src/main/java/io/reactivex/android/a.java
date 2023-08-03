package io.reactivex.android;

import android.os.Looper;
import io.reactivex.disposables.c;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: MainThreadDisposable.java */
/* loaded from: classes3.dex */
public abstract class a implements c {

    /* renamed from: a  reason: collision with root package name */
    private final AtomicBoolean f71068a = new AtomicBoolean();

    /* compiled from: MainThreadDisposable.java */
    /* renamed from: io.reactivex.android.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class RunnableC0537a implements Runnable {
        RunnableC0537a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.a();
        }
    }

    public static void b() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return;
        }
        throw new IllegalStateException("Expected to be called on the main thread but was " + Thread.currentThread().getName());
    }

    protected abstract void a();

    @Override // io.reactivex.disposables.c
    public final void dispose() {
        if (this.f71068a.compareAndSet(false, true)) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                a();
            } else {
                io.reactivex.android.schedulers.a.c().f(new RunnableC0537a());
            }
        }
    }

    @Override // io.reactivex.disposables.c
    public final boolean isDisposed() {
        return this.f71068a.get();
    }
}
