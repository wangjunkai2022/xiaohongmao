package com.google.android.gms.common.internal;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    private final String f29148a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final String f29149b;

    @u2.a
    public k(@NonNull String str) {
        this(str, null);
    }

    private final String r(String str) {
        String str2 = this.f29149b;
        return str2 == null ? str : str2.concat(str);
    }

    private final String s(String str, Object... objArr) {
        String format = String.format(str, objArr);
        String str2 = this.f29149b;
        return str2 == null ? format : str2.concat(format);
    }

    @u2.a
    public boolean a(int i4) {
        return Log.isLoggable(this.f29148a, i4);
    }

    @u2.a
    public boolean b() {
        return false;
    }

    @u2.a
    public void c(@NonNull String str, @NonNull String str2) {
        if (a(3)) {
            Log.d(str, r(str2));
        }
    }

    @u2.a
    public void d(@NonNull String str, @NonNull String str2, @NonNull Throwable th) {
        if (a(3)) {
            Log.d(str, r(str2), th);
        }
    }

    @u2.a
    public void e(@NonNull String str, @NonNull String str2) {
        if (a(6)) {
            Log.e(str, r(str2));
        }
    }

    @u2.a
    public void f(@NonNull String str, @NonNull String str2, @NonNull Throwable th) {
        if (a(6)) {
            Log.e(str, r(str2), th);
        }
    }

    @u2.a
    public void g(@NonNull String str, @NonNull String str2, @NonNull Object... objArr) {
        if (a(6)) {
            Log.e(str, s(str2, objArr));
        }
    }

    @u2.a
    public void h(@NonNull String str, @NonNull String str2) {
        if (a(4)) {
            Log.i(str, r(str2));
        }
    }

    @u2.a
    public void i(@NonNull String str, @NonNull String str2, @NonNull Throwable th) {
        if (a(4)) {
            Log.i(str, r(str2), th);
        }
    }

    @u2.a
    public void j(@NonNull String str, @NonNull String str2) {
    }

    @u2.a
    public void k(@NonNull String str, @NonNull String str2, @NonNull Throwable th) {
    }

    @u2.a
    public void l(@NonNull String str, @NonNull String str2) {
        if (a(2)) {
            Log.v(str, r(str2));
        }
    }

    @u2.a
    public void m(@NonNull String str, @NonNull String str2, @NonNull Throwable th) {
        if (a(2)) {
            Log.v(str, r(str2), th);
        }
    }

    @u2.a
    public void n(@NonNull String str, @NonNull String str2) {
        if (a(5)) {
            Log.w(str, r(str2));
        }
    }

    @u2.a
    public void o(@NonNull String str, @NonNull String str2, @NonNull Throwable th) {
        if (a(5)) {
            Log.w(str, r(str2), th);
        }
    }

    @u2.a
    public void p(@NonNull String str, @NonNull String str2, @NonNull Object... objArr) {
        if (a(5)) {
            Log.w(this.f29148a, s(str2, objArr));
        }
    }

    @u2.a
    public void q(@NonNull String str, @NonNull String str2, @NonNull Throwable th) {
        if (a(7)) {
            Log.e(str, r(str2), th);
            Log.wtf(str, r(str2), th);
        }
    }

    @u2.a
    public k(@NonNull String str, @Nullable String str2) {
        u.l(str, "log tag cannot be null");
        u.c(str.length() <= 23, "tag \"%s\" is longer than the %d character maximum", str, 23);
        this.f29148a = str;
        if (str2 == null || str2.length() <= 0) {
            this.f29149b = null;
        } else {
            this.f29149b = str2;
        }
    }
}
