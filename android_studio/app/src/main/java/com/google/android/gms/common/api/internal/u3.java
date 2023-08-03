package com.google.android.gms.common.api.internal;

import android.app.Dialog;
import android.app.PendingIntent;
import androidx.annotation.MainThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class u3 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final s3 f28904a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ v3 f28905b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u3(v3 v3Var, s3 s3Var) {
        this.f28905b = v3Var;
        this.f28904a = s3Var;
    }

    @Override // java.lang.Runnable
    @MainThread
    public final void run() {
        if (this.f28905b.f28921b) {
            ConnectionResult b10 = this.f28904a.b();
            if (b10.hasResolution()) {
                v3 v3Var = this.f28905b;
                v3Var.f28615a.startActivityForResult(GoogleApiActivity.a(v3Var.b(), (PendingIntent) com.google.android.gms.common.internal.u.k(b10.getResolution()), this.f28904a.a(), false), 1);
                return;
            }
            v3 v3Var2 = this.f28905b;
            if (v3Var2.f28924e.e(v3Var2.b(), b10.getErrorCode(), null) != null) {
                v3 v3Var3 = this.f28905b;
                v3Var3.f28924e.K(v3Var3.b(), this.f28905b.f28615a, b10.getErrorCode(), 2, this.f28905b);
            } else if (b10.getErrorCode() == 18) {
                v3 v3Var4 = this.f28905b;
                Dialog F = v3Var4.f28924e.F(v3Var4.b(), this.f28905b);
                v3 v3Var5 = this.f28905b;
                v3Var5.f28924e.G(v3Var5.b().getApplicationContext(), new t3(this, F));
            } else {
                this.f28905b.m(b10, this.f28904a.a());
            }
        }
    }
}
