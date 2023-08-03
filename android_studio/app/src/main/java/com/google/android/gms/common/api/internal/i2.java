package com.google.android.gms.common.api.internal;

import android.app.Activity;
import androidx.annotation.NonNull;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import java.util.concurrent.CancellationException;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class i2 extends v3 {

    /* renamed from: f  reason: collision with root package name */
    private com.google.android.gms.tasks.l<Void> f28745f;

    private i2(m mVar) {
        super(mVar, com.google.android.gms.common.e.x());
        this.f28745f = new com.google.android.gms.tasks.l<>();
        this.f28615a.h("GmsAvailabilityHelper", this);
    }

    public static i2 u(@NonNull Activity activity) {
        m c10 = LifecycleCallback.c(activity);
        i2 i2Var = (i2) c10.m("GmsAvailabilityHelper", i2.class);
        if (i2Var != null) {
            if (i2Var.f28745f.a().u()) {
                i2Var.f28745f = new com.google.android.gms.tasks.l<>();
            }
            return i2Var;
        }
        return new i2(c10);
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void h() {
        super.h();
        this.f28745f.d(new CancellationException("Host activity was destroyed before Google Play services could be made available."));
    }

    @Override // com.google.android.gms.common.api.internal.v3
    protected final void n(ConnectionResult connectionResult, int i4) {
        String errorMessage = connectionResult.getErrorMessage();
        if (errorMessage == null) {
            errorMessage = "Error connecting to Google Play services";
        }
        this.f28745f.b(new ApiException(new Status(connectionResult, errorMessage, connectionResult.getErrorCode())));
    }

    @Override // com.google.android.gms.common.api.internal.v3
    protected final void o() {
        Activity H = this.f28615a.H();
        if (H == null) {
            this.f28745f.d(new ApiException(new Status(8)));
            return;
        }
        int j4 = this.f28924e.j(H);
        if (j4 == 0) {
            this.f28745f.e(null);
        } else if (this.f28745f.a().u()) {
        } else {
            t(new ConnectionResult(j4, null), 0);
        }
    }

    public final com.google.android.gms.tasks.k<Void> v() {
        return this.f28745f.a();
    }
}
