package com.google.android.gms.common.api.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public class b0 {
    @u2.a
    public static void a(@NonNull Status status, @NonNull com.google.android.gms.tasks.l<Void> lVar) {
        b(status, null, lVar);
    }

    @u2.a
    public static <TResult> void b(@NonNull Status status, @Nullable TResult tresult, @NonNull com.google.android.gms.tasks.l<TResult> lVar) {
        if (status.isSuccess()) {
            lVar.c(tresult);
        } else {
            lVar.b(new ApiException(status));
        }
    }

    @NonNull
    @u2.a
    @Deprecated
    public static com.google.android.gms.tasks.k<Void> c(@NonNull com.google.android.gms.tasks.k<Boolean> kVar) {
        return kVar.m(new d3());
    }

    @u2.a
    public static <ResultT> boolean d(@NonNull Status status, @Nullable ResultT resultt, @NonNull com.google.android.gms.tasks.l<ResultT> lVar) {
        if (status.isSuccess()) {
            return lVar.e(resultt);
        }
        return lVar.d(new ApiException(status));
    }
}
