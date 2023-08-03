package com.google.android.gms.common.api;

import android.os.Looper;
import androidx.annotation.NonNull;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class m {
    @u2.a
    private m() {
    }

    @NonNull
    public static l<Status> a() {
        com.google.android.gms.common.api.internal.z zVar = new com.google.android.gms.common.api.internal.z(Looper.getMainLooper());
        zVar.f();
        return zVar;
    }

    @NonNull
    public static <R extends q> l<R> b(@NonNull R r9) {
        com.google.android.gms.common.internal.u.l(r9, "Result must not be null");
        com.google.android.gms.common.internal.u.b(r9.getStatus().getStatusCode() == 16, "Status code must be CommonStatusCodes.CANCELED");
        a0 a0Var = new a0(r9);
        a0Var.f();
        return a0Var;
    }

    @NonNull
    @u2.a
    public static <R extends q> l<R> c(@NonNull R r9, @NonNull i iVar) {
        com.google.android.gms.common.internal.u.l(r9, "Result must not be null");
        com.google.android.gms.common.internal.u.b(!r9.getStatus().isSuccess(), "Status code must not be SUCCESS");
        b0 b0Var = new b0(iVar, r9);
        b0Var.o(r9);
        return b0Var;
    }

    @NonNull
    @u2.a
    public static <R extends q> k<R> d(@NonNull R r9) {
        com.google.android.gms.common.internal.u.l(r9, "Result must not be null");
        c0 c0Var = new c0(null);
        c0Var.o(r9);
        return new com.google.android.gms.common.api.internal.r(c0Var);
    }

    @NonNull
    @u2.a
    public static <R extends q> k<R> e(@NonNull R r9, @NonNull i iVar) {
        com.google.android.gms.common.internal.u.l(r9, "Result must not be null");
        c0 c0Var = new c0(iVar);
        c0Var.o(r9);
        return new com.google.android.gms.common.api.internal.r(c0Var);
    }

    @NonNull
    @u2.a
    public static l<Status> f(@NonNull Status status) {
        com.google.android.gms.common.internal.u.l(status, "Result must not be null");
        com.google.android.gms.common.api.internal.z zVar = new com.google.android.gms.common.api.internal.z(Looper.getMainLooper());
        zVar.o(status);
        return zVar;
    }

    @NonNull
    @u2.a
    public static l<Status> g(@NonNull Status status, @NonNull i iVar) {
        com.google.android.gms.common.internal.u.l(status, "Result must not be null");
        com.google.android.gms.common.api.internal.z zVar = new com.google.android.gms.common.api.internal.z(iVar);
        zVar.o(status);
        return zVar;
    }
}
