package io.reactivex.rxjava3.android.schedulers;

import android.annotation.SuppressLint;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import io.reactivex.rxjava3.core.o0;
import java.util.Objects;

/* compiled from: AndroidSchedulers.java */
/* loaded from: classes4.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final o0 f76111a = io.reactivex.rxjava3.android.plugins.a.f(io.reactivex.rxjava3.android.schedulers.a.f76110a);

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AndroidSchedulers.java */
    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        static final o0 f76112a = new c(new Handler(Looper.getMainLooper()), true);

        private a() {
        }
    }

    private b() {
        throw new AssertionError("No instances.");
    }

    public static o0 b(Looper looper) {
        return c(looper, true);
    }

    @SuppressLint({"NewApi"})
    public static o0 c(Looper looper, boolean z9) {
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
        return new c(new Handler(looper), z9);
    }

    public static o0 e() {
        return io.reactivex.rxjava3.android.plugins.a.g(f76111a);
    }
}
