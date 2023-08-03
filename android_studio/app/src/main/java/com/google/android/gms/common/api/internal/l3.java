package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.internal.n;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class l3 extends g3<Void> {

    /* renamed from: c  reason: collision with root package name */
    public final o2 f28799c;

    public l3(o2 o2Var, com.google.android.gms.tasks.l<Void> lVar) {
        super(3, lVar);
        this.f28799c = o2Var;
    }

    @Override // com.google.android.gms.common.api.internal.g3, com.google.android.gms.common.api.internal.o3
    public final /* bridge */ /* synthetic */ void d(@NonNull h0 h0Var, boolean z9) {
    }

    @Override // com.google.android.gms.common.api.internal.f2
    public final boolean f(v1<?> v1Var) {
        return this.f28799c.f28836a.f();
    }

    @Override // com.google.android.gms.common.api.internal.f2
    @Nullable
    public final Feature[] g(v1<?> v1Var) {
        return this.f28799c.f28836a.c();
    }

    @Override // com.google.android.gms.common.api.internal.g3
    public final void h(v1<?> v1Var) throws RemoteException {
        this.f28799c.f28836a.d(v1Var.t(), this.f28698b);
        n.a<?> b10 = this.f28799c.f28836a.b();
        if (b10 != null) {
            v1Var.v().put(b10, this.f28799c);
        }
    }
}
