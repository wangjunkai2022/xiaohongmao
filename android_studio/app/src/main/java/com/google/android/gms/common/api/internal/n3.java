package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.internal.n;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class n3 extends g3<Boolean> {

    /* renamed from: c  reason: collision with root package name */
    public final n.a<?> f28832c;

    public n3(n.a<?> aVar, com.google.android.gms.tasks.l<Boolean> lVar) {
        super(4, lVar);
        this.f28832c = aVar;
    }

    @Override // com.google.android.gms.common.api.internal.g3, com.google.android.gms.common.api.internal.o3
    public final /* bridge */ /* synthetic */ void d(@NonNull h0 h0Var, boolean z9) {
    }

    @Override // com.google.android.gms.common.api.internal.f2
    public final boolean f(v1<?> v1Var) {
        o2 o2Var = v1Var.v().get(this.f28832c);
        return o2Var != null && o2Var.f28836a.f();
    }

    @Override // com.google.android.gms.common.api.internal.f2
    @Nullable
    public final Feature[] g(v1<?> v1Var) {
        o2 o2Var = v1Var.v().get(this.f28832c);
        if (o2Var == null) {
            return null;
        }
        return o2Var.f28836a.c();
    }

    @Override // com.google.android.gms.common.api.internal.g3
    public final void h(v1<?> v1Var) throws RemoteException {
        o2 remove = v1Var.v().remove(this.f28832c);
        if (remove != null) {
            remove.f28837b.b(v1Var.t(), this.f28698b);
            remove.f28836a.a();
            return;
        }
        this.f28698b.e(Boolean.FALSE);
    }
}
