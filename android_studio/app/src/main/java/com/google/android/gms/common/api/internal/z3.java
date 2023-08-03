package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.i;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class z3 implements i.b, i.c {

    /* renamed from: c  reason: collision with root package name */
    public final com.google.android.gms.common.api.a<?> f28950c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f28951d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private a4 f28952e;

    public z3(com.google.android.gms.common.api.a<?> aVar, boolean z9) {
        this.f28950c = aVar;
        this.f28951d = z9;
    }

    private final a4 b() {
        com.google.android.gms.common.internal.u.l(this.f28952e, "Callbacks must be attached to a ClientConnectionHelper instance before connecting the client.");
        return this.f28952e;
    }

    public final void a(a4 a4Var) {
        this.f28952e = a4Var;
    }

    @Override // com.google.android.gms.common.api.internal.f
    public final void s(@Nullable Bundle bundle) {
        b().s(bundle);
    }

    @Override // com.google.android.gms.common.api.internal.f
    public final void x(int i4) {
        b().x(i4);
    }

    @Override // com.google.android.gms.common.api.internal.q
    public final void z(@NonNull ConnectionResult connectionResult) {
        b().n1(connectionResult, this.f28950c, this.f28951d);
    }
}
