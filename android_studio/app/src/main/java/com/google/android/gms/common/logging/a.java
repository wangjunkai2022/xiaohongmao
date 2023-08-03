package com.google.android.gms.common.logging;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.k;
import java.util.Locale;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final String f29227a;

    /* renamed from: b  reason: collision with root package name */
    private final String f29228b;

    /* renamed from: c  reason: collision with root package name */
    private final k f29229c;

    /* renamed from: d  reason: collision with root package name */
    private final int f29230d;

    @u2.a
    public a(@NonNull String str, @NonNull String... strArr) {
        String sb;
        if (strArr.length == 0) {
            sb = "";
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append('[');
            for (String str2 : strArr) {
                if (sb2.length() > 1) {
                    sb2.append(",");
                }
                sb2.append(str2);
            }
            sb2.append("] ");
            sb = sb2.toString();
        }
        this.f29228b = sb;
        this.f29227a = str;
        this.f29229c = new k(str);
        int i4 = 2;
        while (i4 <= 7 && !Log.isLoggable(this.f29227a, i4)) {
            i4++;
        }
        this.f29230d = i4;
    }

    @u2.a
    public void a(@NonNull String str, @Nullable Object... objArr) {
        if (g(3)) {
            Log.d(this.f29227a, d(str, objArr));
        }
    }

    @u2.a
    public void b(@NonNull String str, @NonNull Throwable th, @Nullable Object... objArr) {
        Log.e(this.f29227a, d(str, objArr), th);
    }

    @u2.a
    public void c(@NonNull String str, @Nullable Object... objArr) {
        Log.e(this.f29227a, d(str, objArr));
    }

    @NonNull
    @u2.a
    protected String d(@NonNull String str, @Nullable Object... objArr) {
        if (objArr != null && objArr.length > 0) {
            str = String.format(Locale.US, str, objArr);
        }
        return this.f29228b.concat(str);
    }

    @NonNull
    @u2.a
    public String e() {
        return this.f29227a;
    }

    @u2.a
    public void f(@NonNull String str, @Nullable Object... objArr) {
        Log.i(this.f29227a, d(str, objArr));
    }

    @u2.a
    public boolean g(int i4) {
        return this.f29230d <= i4;
    }

    @u2.a
    public void h(@NonNull String str, @NonNull Throwable th, @Nullable Object... objArr) {
        if (g(2)) {
            Log.v(this.f29227a, d(str, objArr), th);
        }
    }

    @u2.a
    public void i(@NonNull String str, @Nullable Object... objArr) {
        if (g(2)) {
            Log.v(this.f29227a, d(str, objArr));
        }
    }

    @u2.a
    public void j(@NonNull String str, @Nullable Object... objArr) {
        Log.w(this.f29227a, d(str, objArr));
    }

    @u2.a
    public void k(@NonNull String str, @NonNull Throwable th, @Nullable Object... objArr) {
        Log.wtf(this.f29227a, d(str, objArr), th);
    }

    @u2.a
    public void l(@NonNull Throwable th) {
        Log.wtf(this.f29227a, th);
    }
}
