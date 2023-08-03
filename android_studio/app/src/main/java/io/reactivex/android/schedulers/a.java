package io.reactivex.android.schedulers;

import android.annotation.SuppressLint;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import io.reactivex.h0;
import java.util.Objects;
import java.util.concurrent.Callable;

/* compiled from: AndroidSchedulers.java */
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final h0 f71072a = io.reactivex.android.plugins.a.f(new CallableC0538a());

    /* compiled from: AndroidSchedulers.java */
    /* renamed from: io.reactivex.android.schedulers.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    static class CallableC0538a implements Callable<h0> {
        CallableC0538a() {
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public h0 call() throws Exception {
            return b.f71073a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AndroidSchedulers.java */
    /* loaded from: classes3.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        static final h0 f71073a = new io.reactivex.android.schedulers.b(new Handler(Looper.getMainLooper()), false);

        private b() {
        }
    }

    private a() {
        throw new AssertionError("No instances.");
    }

    public static h0 a(Looper looper) {
        return b(looper, false);
    }

    @SuppressLint({"NewApi"})
    public static h0 b(Looper looper, boolean z9) {
        Objects.requireNonNull(looper, "looper == null");
        int i4 = Build.VERSION.SDK_INT;
        if (z9 && i4 < 22) {
            Message obtain = Message.obtain();
            try {
                obtain.setAsynchronous(true);
            } catch (NoSuchMethodError unused) {
                z9 = false;
            }
            obtain.recycle();
        }
        return new io.reactivex.android.schedulers.b(new Handler(looper), z9);
    }

    public static h0 c() {
        return io.reactivex.android.plugins.a.g(f71072a);
    }
}
