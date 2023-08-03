package com.posthog.android;

import android.util.Log;
import com.posthog.android.PostHog;
import com.posthog.android.internal.Utils;

/* compiled from: Logger.java */
/* loaded from: classes3.dex */
public final class i {

    /* renamed from: c  reason: collision with root package name */
    private static final String f47493c = "PostHog";

    /* renamed from: a  reason: collision with root package name */
    public final PostHog.LogLevel f47494a;

    /* renamed from: b  reason: collision with root package name */
    private final String f47495b;

    public i(String str, PostHog.LogLevel logLevel) {
        this.f47495b = str;
        this.f47494a = logLevel;
    }

    private boolean d(PostHog.LogLevel logLevel) {
        return this.f47494a.ordinal() >= logLevel.ordinal();
    }

    public static i g(PostHog.LogLevel logLevel) {
        return new i(f47493c, logLevel);
    }

    public void a(String str, Object... objArr) {
        if (d(PostHog.LogLevel.DEBUG)) {
            Log.d(this.f47495b, String.format(str, objArr));
        }
    }

    public void b(Throwable th, String str, Object... objArr) {
        if (d(PostHog.LogLevel.INFO)) {
            Log.e(this.f47495b, String.format(str, objArr), th);
        }
    }

    public void c(String str, Object... objArr) {
        if (d(PostHog.LogLevel.INFO)) {
            Log.i(this.f47495b, String.format(str, objArr));
        }
    }

    public i e(String str) {
        return new i(Utils.f47496a + str, this.f47494a);
    }

    public void f(String str, Object... objArr) {
        if (d(PostHog.LogLevel.VERBOSE)) {
            Log.v(this.f47495b, String.format(str, objArr));
        }
    }
}
