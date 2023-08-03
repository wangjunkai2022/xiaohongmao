package com.google.android.gms.common.config;

import android.os.Binder;
import android.os.StrictMode;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import y2.d0;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public abstract class a<T> {

    /* renamed from: d  reason: collision with root package name */
    private static final Object f28968d = new Object();
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    protected final String f28969a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    protected final T f28970b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private T f28971c = null;

    /* JADX INFO: Access modifiers changed from: protected */
    public a(@NonNull String str, @NonNull T t9) {
        this.f28969a = str;
        this.f28970b = t9;
    }

    @u2.a
    public static boolean c() {
        synchronized (f28968d) {
        }
        return false;
    }

    @NonNull
    @u2.a
    public static a<Float> f(@NonNull String str, @NonNull Float f10) {
        return new e(str, f10);
    }

    @NonNull
    @u2.a
    public static a<Integer> g(@NonNull String str, @NonNull Integer num) {
        return new d(str, num);
    }

    @NonNull
    @u2.a
    public static a<Long> h(@NonNull String str, @NonNull Long l10) {
        return new c(str, l10);
    }

    @NonNull
    @u2.a
    public static a<String> i(@NonNull String str, @NonNull String str2) {
        return new f(str, str2);
    }

    @NonNull
    @u2.a
    public static a<Boolean> j(@NonNull String str, boolean z9) {
        return new b(str, Boolean.valueOf(z9));
    }

    @NonNull
    @u2.a
    public final T a() {
        T t9 = this.f28971c;
        if (t9 != null) {
            return t9;
        }
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        Object obj = f28968d;
        synchronized (obj) {
        }
        synchronized (obj) {
        }
        try {
            return k(this.f28969a);
        } catch (SecurityException unused) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            T k10 = k(this.f28969a);
            Binder.restoreCallingIdentity(clearCallingIdentity);
            return k10;
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    @NonNull
    @u2.a
    @Deprecated
    public final T b() {
        return a();
    }

    @u2.a
    @d0
    public void d(@NonNull T t9) {
        Log.w("GservicesValue", "GservicesValue.override(): test should probably call initForTests() first");
        this.f28971c = t9;
        Object obj = f28968d;
        synchronized (obj) {
            synchronized (obj) {
            }
        }
    }

    @u2.a
    @d0
    public void e() {
        this.f28971c = null;
    }

    @NonNull
    protected abstract T k(@NonNull String str);
}
