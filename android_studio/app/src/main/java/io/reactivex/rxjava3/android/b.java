package io.reactivex.rxjava3.android;

import android.os.Looper;
import io.reactivex.rxjava3.disposables.f;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: MainThreadDisposable.java */
/* loaded from: classes4.dex */
public abstract class b implements f {

    /* renamed from: a  reason: collision with root package name */
    private final AtomicBoolean f76107a = new AtomicBoolean();

    public static void b() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return;
        }
        throw new IllegalStateException("Expected to be called on the main thread but was " + Thread.currentThread().getName());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void a();

    @Override // io.reactivex.rxjava3.disposables.f
    public final void dispose() {
        if (this.f76107a.compareAndSet(false, true)) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                a();
            } else {
                io.reactivex.rxjava3.android.schedulers.b.e().f(new Runnable() { // from class: io.reactivex.rxjava3.android.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        b.this.a();
                    }
                });
            }
        }
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public final boolean isDisposed() {
        return this.f76107a.get();
    }
}
