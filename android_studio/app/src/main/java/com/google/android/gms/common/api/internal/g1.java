package com.google.android.gms.common.api.internal;

import android.content.Context;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.Status;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class g1 implements com.google.android.gms.common.api.r<Status> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ z f28694a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ boolean f28695b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ com.google.android.gms.common.api.i f28696c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ j1 f28697d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g1(j1 j1Var, z zVar, boolean z9, com.google.android.gms.common.api.i iVar) {
        this.f28697d = j1Var;
        this.f28694a = zVar;
        this.f28695b = z9;
        this.f28696c = iVar;
    }

    @Override // com.google.android.gms.common.api.r
    public final /* bridge */ /* synthetic */ void a(@NonNull Status status) {
        Context context;
        Status status2 = status;
        context = this.f28697d.f28763i;
        com.google.android.gms.auth.api.signin.internal.b.b(context).i();
        if (status2.isSuccess() && this.f28697d.u()) {
            j1 j1Var = this.f28697d;
            j1Var.i();
            j1Var.g();
        }
        this.f28694a.o(status2);
        if (this.f28695b) {
            this.f28696c.i();
        }
    }
}
