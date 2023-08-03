package com.google.android.gms.common.internal.service;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.c0;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class q extends com.google.android.gms.common.internal.i<j> {
    private final c0 O;

    public q(Context context, Looper looper, com.google.android.gms.common.internal.f fVar, c0 c0Var, com.google.android.gms.common.api.internal.f fVar2, com.google.android.gms.common.api.internal.q qVar) {
        super(context, looper, (int) com.facebook.imagepipeline.common.e.f12206f, fVar, fVar2, qVar);
        this.O = c0Var;
    }

    @Override // com.google.android.gms.common.internal.e
    public final Feature[] B() {
        return com.google.android.gms.internal.base.d.f29357b;
    }

    @Override // com.google.android.gms.common.internal.e
    protected final Bundle G() {
        return this.O.c();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.e
    @NonNull
    public final String L() {
        return "com.google.android.gms.common.internal.service.IClientTelemetryService";
    }

    @Override // com.google.android.gms.common.internal.e
    @NonNull
    protected final String M() {
        return "com.google.android.gms.common.telemetry.service.START";
    }

    @Override // com.google.android.gms.common.internal.e
    protected final boolean P() {
        return true;
    }

    @Override // com.google.android.gms.common.internal.e, com.google.android.gms.common.api.a.f
    public final int r() {
        return 203400000;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.e
    @Nullable
    public final /* synthetic */ IInterface y(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.service.IClientTelemetryService");
        return queryLocalInterface instanceof j ? (j) queryLocalInterface : new j(iBinder);
    }
}
