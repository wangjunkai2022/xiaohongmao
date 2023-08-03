package com.google.android.gms.common.api.internal;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.i;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class p3 implements i.c {

    /* renamed from: c  reason: collision with root package name */
    public final int f28857c;

    /* renamed from: d  reason: collision with root package name */
    public final com.google.android.gms.common.api.i f28858d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public final i.c f28859e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ q3 f28860f;

    public p3(q3 q3Var, int i4, @Nullable com.google.android.gms.common.api.i iVar, i.c cVar) {
        this.f28860f = q3Var;
        this.f28857c = i4;
        this.f28858d = iVar;
        this.f28859e = cVar;
    }

    @Override // com.google.android.gms.common.api.internal.q
    public final void z(@NonNull ConnectionResult connectionResult) {
        Log.d("AutoManageHelper", "beginFailureResolution for ".concat(String.valueOf(connectionResult)));
        this.f28860f.t(connectionResult, this.f28857c);
    }
}
