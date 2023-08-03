package com.google.android.gms.common;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.g2;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
@com.google.android.gms.common.internal.y
/* loaded from: classes2.dex */
public class f {
    @NonNull
    @u2.a

    /* renamed from: b  reason: collision with root package name */
    public static final String f29005b = "com.google.android.gms";
    @NonNull
    @u2.a

    /* renamed from: c  reason: collision with root package name */
    public static final String f29006c = "com.android.vending";
    @u2.a

    /* renamed from: d  reason: collision with root package name */
    static final String f29007d = "d";
    @u2.a

    /* renamed from: e  reason: collision with root package name */
    static final String f29008e = "n";
    @u2.a

    /* renamed from: a  reason: collision with root package name */
    public static final int f29004a = h.f29014a;

    /* renamed from: f  reason: collision with root package name */
    private static final f f29009f = new f();

    @NonNull
    @u2.a
    public static f i() {
        return f29009f;
    }

    @u2.a
    public void a(@NonNull Context context) {
        h.a(context);
    }

    @u2.a
    @com.google.android.gms.common.internal.y
    public int b(@NonNull Context context) {
        return h.d(context);
    }

    @u2.a
    @com.google.android.gms.common.internal.y
    public int c(@NonNull Context context) {
        return h.e(context);
    }

    @u2.a
    @Deprecated
    @Nullable
    @com.google.android.gms.common.internal.y
    public Intent d(int i4) {
        return e(null, i4, null);
    }

    @Nullable
    @u2.a
    @com.google.android.gms.common.internal.y
    public Intent e(@Nullable Context context, int i4, @Nullable String str) {
        if (i4 != 1 && i4 != 2) {
            if (i4 != 3) {
                return null;
            }
            return g2.c("com.google.android.gms");
        } else if (context != null && y2.l.l(context)) {
            return g2.a();
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append("gcore_");
            sb.append(f29004a);
            sb.append("-");
            if (!TextUtils.isEmpty(str)) {
                sb.append(str);
            }
            sb.append("-");
            if (context != null) {
                sb.append(context.getPackageName());
            }
            sb.append("-");
            if (context != null) {
                try {
                    sb.append(com.google.android.gms.common.wrappers.c.a(context).f(context.getPackageName(), 0).versionCode);
                } catch (PackageManager.NameNotFoundException unused) {
                }
            }
            return g2.b("com.google.android.gms", sb.toString());
        }
    }

    @Nullable
    @u2.a
    public PendingIntent f(@NonNull Context context, int i4, int i10) {
        return g(context, i4, i10, null);
    }

    @Nullable
    @u2.a
    @com.google.android.gms.common.internal.y
    public PendingIntent g(@NonNull Context context, int i4, int i10, @Nullable String str) {
        Intent e4 = e(context, i4, str);
        if (e4 == null) {
            return null;
        }
        return com.google.android.gms.internal.common.m.a(context, i10, e4, com.google.android.gms.internal.common.m.f29407a | 134217728);
    }

    @NonNull
    @u2.a
    public String h(int i4) {
        return h.g(i4);
    }

    @com.google.android.gms.common.internal.l
    @u2.a
    public int j(@NonNull Context context) {
        return k(context, f29004a);
    }

    @u2.a
    public int k(@NonNull Context context, int i4) {
        int m9 = h.m(context, i4);
        if (h.o(context, m9)) {
            return 18;
        }
        return m9;
    }

    @u2.a
    @com.google.android.gms.common.internal.y
    public boolean l(@NonNull Context context, int i4) {
        return h.o(context, i4);
    }

    @u2.a
    @com.google.android.gms.common.internal.y
    public boolean m(@NonNull Context context, int i4) {
        return h.p(context, i4);
    }

    @u2.a
    public boolean n(@NonNull Context context, @NonNull String str) {
        return h.u(context, str);
    }

    @u2.a
    public boolean o(int i4) {
        return h.s(i4);
    }

    @u2.a
    public void p(@NonNull Context context, int i4) throws GooglePlayServicesRepairableException, GooglePlayServicesNotAvailableException {
        h.c(context, i4);
    }
}
