package com.google.android.gms.common.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public class t {

    /* renamed from: a  reason: collision with root package name */
    private static final z0 f29200a = new v0();

    /* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    @u2.a
    /* loaded from: classes2.dex */
    public interface a<R extends com.google.android.gms.common.api.q, T> {
        @Nullable
        @u2.a
        T a(@NonNull R r9);
    }

    @NonNull
    @u2.a
    public static <R extends com.google.android.gms.common.api.q, T extends com.google.android.gms.common.api.p<R>> com.google.android.gms.tasks.k<T> a(@NonNull com.google.android.gms.common.api.l<R> lVar, @NonNull T t9) {
        return b(lVar, new x0(t9));
    }

    @NonNull
    @u2.a
    public static <R extends com.google.android.gms.common.api.q, T> com.google.android.gms.tasks.k<T> b(@NonNull com.google.android.gms.common.api.l<R> lVar, @NonNull a<R, T> aVar) {
        z0 z0Var = f29200a;
        com.google.android.gms.tasks.l lVar2 = new com.google.android.gms.tasks.l();
        lVar.c(new w0(lVar, lVar2, aVar, z0Var));
        return lVar2.a();
    }

    @NonNull
    @u2.a
    public static <R extends com.google.android.gms.common.api.q> com.google.android.gms.tasks.k<Void> c(@NonNull com.google.android.gms.common.api.l<R> lVar) {
        return b(lVar, new y0());
    }
}
