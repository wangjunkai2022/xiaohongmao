package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.m;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
@Deprecated
/* loaded from: classes2.dex */
public final class j {

    /* renamed from: e  reason: collision with root package name */
    private static final Object f28751e = new Object();
    @Nullable
    @s7.a("sLock")

    /* renamed from: f  reason: collision with root package name */
    private static j f28752f;
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final String f28753a;

    /* renamed from: b  reason: collision with root package name */
    private final Status f28754b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f28755c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f28756d;

    @u2.a
    @y2.d0
    j(Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("google_app_measurement_enable", TypedValues.Custom.S_INT, resources.getResourcePackageName(m.b.f29232a));
        if (identifier != 0) {
            int integer = resources.getInteger(identifier);
            boolean z9 = integer == 0;
            r2 = integer != 0;
            this.f28756d = z9;
        } else {
            this.f28756d = false;
        }
        this.f28755c = r2;
        String b10 = com.google.android.gms.common.internal.l1.b(context);
        b10 = b10 == null ? new com.google.android.gms.common.internal.z(context).a("google_app_id") : b10;
        if (TextUtils.isEmpty(b10)) {
            this.f28754b = new Status(10, "Missing google app id value from from string resources with name google_app_id.");
            this.f28753a = null;
            return;
        }
        this.f28753a = b10;
        this.f28754b = Status.RESULT_SUCCESS;
    }

    @u2.a
    @y2.d0
    j(String str, boolean z9) {
        this.f28753a = str;
        this.f28754b = Status.RESULT_SUCCESS;
        this.f28755c = z9;
        this.f28756d = !z9;
    }

    @u2.a
    private static j b(String str) {
        j jVar;
        synchronized (f28751e) {
            jVar = f28752f;
            if (jVar == null) {
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 34);
                sb.append("Initialize must be called before ");
                sb.append(str);
                sb.append(".");
                throw new IllegalStateException(sb.toString());
            }
        }
        return jVar;
    }

    @u2.a
    @y2.d0
    static void c() {
        synchronized (f28751e) {
            f28752f = null;
        }
    }

    @Nullable
    @u2.a
    public static String d() {
        return b("getGoogleAppId").f28753a;
    }

    @NonNull
    @u2.a
    public static Status e(@NonNull Context context) {
        Status status;
        com.google.android.gms.common.internal.u.l(context, "Context must not be null.");
        synchronized (f28751e) {
            if (f28752f == null) {
                f28752f = new j(context);
            }
            status = f28752f.f28754b;
        }
        return status;
    }

    @NonNull
    @u2.a
    public static Status f(@NonNull Context context, @NonNull String str, boolean z9) {
        com.google.android.gms.common.internal.u.l(context, "Context must not be null.");
        com.google.android.gms.common.internal.u.h(str, "App ID must be nonempty.");
        synchronized (f28751e) {
            j jVar = f28752f;
            if (jVar != null) {
                return jVar.a(str);
            }
            j jVar2 = new j(str, z9);
            f28752f = jVar2;
            return jVar2.f28754b;
        }
    }

    @u2.a
    public static boolean g() {
        j b10 = b("isMeasurementEnabled");
        return b10.f28754b.isSuccess() && b10.f28755c;
    }

    @u2.a
    public static boolean h() {
        return b("isMeasurementExplicitlyDisabled").f28756d;
    }

    @u2.a
    @y2.d0
    Status a(String str) {
        String str2 = this.f28753a;
        if (str2 == null || str2.equals(str)) {
            return Status.RESULT_SUCCESS;
        }
        String str3 = this.f28753a;
        StringBuilder sb = new StringBuilder(String.valueOf(str3).length() + 97);
        sb.append("Initialize was called with two different Google App IDs.  Only the first app ID will be used: '");
        sb.append(str3);
        sb.append("'.");
        return new Status(10, sb.toString());
    }
}
