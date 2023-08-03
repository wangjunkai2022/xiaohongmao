package com.google.android.gms.common.api.internal;

import androidx.annotation.NonNull;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.i;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
final class f1 implements i.c {

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ z f28688c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f1(j1 j1Var, z zVar) {
        this.f28688c = zVar;
    }

    @Override // com.google.android.gms.common.api.internal.q
    public final void z(@NonNull ConnectionResult connectionResult) {
        this.f28688c.o(new Status(8));
    }
}
