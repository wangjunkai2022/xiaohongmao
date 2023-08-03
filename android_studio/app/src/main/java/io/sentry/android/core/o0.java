package io.sentry.android.core;

import android.app.Activity;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.ref.WeakReference;
import m8.a;

/* compiled from: CurrentActivityHolder.java */
@a.c
/* loaded from: classes4.dex */
public class o0 {
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private static final o0 f82544b = new o0();
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private WeakReference<Activity> f82545a;

    private o0() {
    }

    @NonNull
    public static o0 c() {
        return f82544b;
    }

    public void a() {
        this.f82545a = null;
    }

    @Nullable
    public Activity b() {
        WeakReference<Activity> weakReference = this.f82545a;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public void d(@NonNull Activity activity) {
        WeakReference<Activity> weakReference = this.f82545a;
        if (weakReference == null || weakReference.get() != activity) {
            this.f82545a = new WeakReference<>(activity);
        }
    }
}
