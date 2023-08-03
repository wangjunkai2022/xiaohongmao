package com.google.android.gms.common.internal;

import android.os.Looper;
import android.util.Log;
import androidx.annotation.NonNull;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public final class d {
    private d() {
        throw new AssertionError("Uninstantiable");
    }

    @u2.a
    public static void a(@NonNull String str) {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            return;
        }
        String valueOf = String.valueOf(Thread.currentThread());
        String valueOf2 = String.valueOf(Looper.getMainLooper().getThread());
        StringBuilder sb = new StringBuilder(valueOf.length() + 57 + valueOf2.length());
        sb.append("checkMainThread: current thread ");
        sb.append(valueOf);
        sb.append(" IS NOT the main thread ");
        sb.append(valueOf2);
        sb.append("!");
        Log.e("Asserts", sb.toString());
        throw new IllegalStateException(str);
    }

    @u2.a
    public static void b(@NonNull String str) {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            return;
        }
        String valueOf = String.valueOf(Thread.currentThread());
        String valueOf2 = String.valueOf(Looper.getMainLooper().getThread());
        StringBuilder sb = new StringBuilder(valueOf.length() + 56 + valueOf2.length());
        sb.append("checkNotMainThread: current thread ");
        sb.append(valueOf);
        sb.append(" IS the main thread ");
        sb.append(valueOf2);
        sb.append("!");
        Log.e("Asserts", sb.toString());
        throw new IllegalStateException(str);
    }

    @u2.a
    @EnsuresNonNull({"#1"})
    public static void c(@r7.h Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException("null reference");
        }
    }

    @u2.a
    @EnsuresNonNull({"#1"})
    public static void d(@r7.h Object obj, @NonNull Object obj2) {
        if (obj == null) {
            throw new IllegalArgumentException(String.valueOf(obj2));
        }
    }

    @u2.a
    public static void e(@NonNull Object obj) {
        if (obj != null) {
            throw new IllegalArgumentException("non-null reference");
        }
    }

    @u2.a
    public static void f(boolean z9) {
        if (!z9) {
            throw new IllegalStateException();
        }
    }

    @u2.a
    public static void g(boolean z9, @NonNull Object obj) {
        if (!z9) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }
}
