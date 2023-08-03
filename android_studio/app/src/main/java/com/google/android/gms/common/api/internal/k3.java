package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.util.Log;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.internal.e;
import com.google.android.gms.common.api.internal.e.a;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class k3<A extends e.a<? extends com.google.android.gms.common.api.q, a.b>> extends o3 {

    /* renamed from: b  reason: collision with root package name */
    protected final A f28794b;

    public k3(int i4, A a10) {
        super(i4);
        this.f28794b = (A) com.google.android.gms.common.internal.u.l(a10, "Null methods are not runnable.");
    }

    @Override // com.google.android.gms.common.api.internal.o3
    public final void a(@NonNull Status status) {
        try {
            this.f28794b.b(status);
        } catch (IllegalStateException e4) {
            Log.w("ApiCallRunner", "Exception reporting failure", e4);
        }
    }

    @Override // com.google.android.gms.common.api.internal.o3
    public final void b(@NonNull Exception exc) {
        String simpleName = exc.getClass().getSimpleName();
        String localizedMessage = exc.getLocalizedMessage();
        StringBuilder sb = new StringBuilder(simpleName.length() + 2 + String.valueOf(localizedMessage).length());
        sb.append(simpleName);
        sb.append(": ");
        sb.append(localizedMessage);
        try {
            this.f28794b.b(new Status(10, sb.toString()));
        } catch (IllegalStateException e4) {
            Log.w("ApiCallRunner", "Exception reporting failure", e4);
        }
    }

    @Override // com.google.android.gms.common.api.internal.o3
    public final void c(v1<?> v1Var) throws DeadObjectException {
        try {
            this.f28794b.A(v1Var.t());
        } catch (RuntimeException e4) {
            b(e4);
        }
    }

    @Override // com.google.android.gms.common.api.internal.o3
    public final void d(@NonNull h0 h0Var, boolean z9) {
        h0Var.c(this.f28794b, z9);
    }
}
