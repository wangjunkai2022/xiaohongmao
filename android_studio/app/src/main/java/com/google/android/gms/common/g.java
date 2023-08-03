package com.google.android.gms.common;

import android.app.Activity;
import android.app.Dialog;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class g extends h {
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public static final String f29010k = "GooglePlayServicesErrorDialog";
    @Deprecated

    /* renamed from: l  reason: collision with root package name */
    public static final int f29011l = h.f29014a;
    @NonNull
    @Deprecated

    /* renamed from: m  reason: collision with root package name */
    public static final String f29012m = "com.google.android.gms";
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public static final String f29013n = "com.android.vending";

    private g() {
    }

    @Deprecated
    public static void A(int i4, @NonNull Context context) {
        e x9 = e.x();
        if (!h.o(context, i4) && !h.p(context, i4)) {
            x9.C(context, i4);
        } else {
            x9.J(context);
        }
    }

    @NonNull
    @Deprecated
    public static PendingIntent f(int i4, @NonNull Context context, int i10) {
        return h.f(i4, context, i10);
    }

    @NonNull
    @y2.d0
    @Deprecated
    public static String g(int i4) {
        return h.g(i4);
    }

    @NonNull
    public static Context i(@NonNull Context context) {
        return h.i(context);
    }

    @NonNull
    public static Resources j(@NonNull Context context) {
        return h.j(context);
    }

    @com.google.android.gms.common.internal.l
    @Deprecated
    public static int l(@NonNull Context context) {
        return h.l(context);
    }

    @u2.a
    @Deprecated
    public static int m(@NonNull Context context, int i4) {
        return h.m(context, i4);
    }

    @Deprecated
    public static boolean s(int i4) {
        return h.s(i4);
    }

    @Nullable
    @Deprecated
    public static Dialog v(int i4, @NonNull Activity activity, int i10) {
        return w(i4, activity, i10, null);
    }

    @Nullable
    @Deprecated
    public static Dialog w(int i4, @NonNull Activity activity, int i10, @Nullable DialogInterface.OnCancelListener onCancelListener) {
        if (true == h.o(activity, i4)) {
            i4 = 18;
        }
        return e.x().t(activity, i4, i10, onCancelListener);
    }

    @Deprecated
    public static boolean x(int i4, @NonNull Activity activity, int i10) {
        return y(i4, activity, i10, null);
    }

    @Deprecated
    public static boolean y(int i4, @NonNull Activity activity, int i10, @Nullable DialogInterface.OnCancelListener onCancelListener) {
        return z(i4, activity, null, i10, onCancelListener);
    }

    public static boolean z(int i4, @NonNull Activity activity, @Nullable Fragment fragment, int i10, @Nullable DialogInterface.OnCancelListener onCancelListener) {
        if (true == h.o(activity, i4)) {
            i4 = 18;
        }
        e x9 = e.x();
        if (fragment == null) {
            return x9.B(activity, i4, i10, onCancelListener);
        }
        Dialog E = x9.E(activity, i4, com.google.android.gms.common.internal.n0.c(fragment, e.x().e(activity, i4, "d"), i10), onCancelListener);
        if (E == null) {
            return false;
        }
        x9.H(activity, E, f29010k, onCancelListener);
        return true;
    }
}
