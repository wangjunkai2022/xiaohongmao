package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.HandlerThread;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public abstract class j {

    /* renamed from: a  reason: collision with root package name */
    private static int f29141a = 4225;

    /* renamed from: b  reason: collision with root package name */
    private static final Object f29142b = new Object();
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private static e2 f29143c = null;
    @Nullable
    @y2.d0

    /* renamed from: d  reason: collision with root package name */
    static HandlerThread f29144d = null;

    /* renamed from: e  reason: collision with root package name */
    private static boolean f29145e = false;

    @u2.a
    public static int c() {
        return f29141a;
    }

    @NonNull
    @u2.a
    public static j d(@NonNull Context context) {
        Looper mainLooper;
        synchronized (f29142b) {
            if (f29143c == null) {
                Context applicationContext = context.getApplicationContext();
                if (f29145e) {
                    mainLooper = e().getLooper();
                } else {
                    mainLooper = context.getMainLooper();
                }
                f29143c = new e2(applicationContext, mainLooper);
            }
        }
        return f29143c;
    }

    @NonNull
    @u2.a
    public static HandlerThread e() {
        synchronized (f29142b) {
            HandlerThread handlerThread = f29144d;
            if (handlerThread != null) {
                return handlerThread;
            }
            HandlerThread handlerThread2 = new HandlerThread("GoogleApiHandler", 9);
            f29144d = handlerThread2;
            handlerThread2.start();
            return f29144d;
        }
    }

    @u2.a
    public static void f() {
        synchronized (f29142b) {
            e2 e2Var = f29143c;
            if (e2Var != null && !f29145e) {
                e2Var.q(e().getLooper());
            }
            f29145e = true;
        }
    }

    @u2.a
    public boolean a(@NonNull ComponentName componentName, @NonNull ServiceConnection serviceConnection, @NonNull String str) {
        return k(new a2(componentName, c()), serviceConnection, str, null);
    }

    @u2.a
    public boolean b(@NonNull String str, @NonNull ServiceConnection serviceConnection, @NonNull String str2) {
        return k(new a2(str, c(), false), serviceConnection, str2, null);
    }

    @u2.a
    public void g(@NonNull ComponentName componentName, @NonNull ServiceConnection serviceConnection, @NonNull String str) {
        i(new a2(componentName, c()), serviceConnection, str);
    }

    @u2.a
    public void h(@NonNull String str, @NonNull ServiceConnection serviceConnection, @NonNull String str2) {
        i(new a2(str, c(), false), serviceConnection, str2);
    }

    protected abstract void i(a2 a2Var, ServiceConnection serviceConnection, String str);

    public final void j(@NonNull String str, @NonNull String str2, int i4, @NonNull ServiceConnection serviceConnection, @NonNull String str3, boolean z9) {
        i(new a2(str, str2, i4, z9), serviceConnection, str3);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract boolean k(a2 a2Var, ServiceConnection serviceConnection, String str, @Nullable Executor executor);
}
