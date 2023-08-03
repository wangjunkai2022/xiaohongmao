package com.google.android.gms.common.api.internal;

import android.app.Dialog;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
final class t3 extends b2 {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Dialog f28888a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ u3 f28889b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t3(u3 u3Var, Dialog dialog) {
        this.f28889b = u3Var;
        this.f28888a = dialog;
    }

    @Override // com.google.android.gms.common.api.internal.b2
    public final void a() {
        this.f28889b.f28905b.p();
        if (this.f28888a.isShowing()) {
            this.f28888a.dismiss();
        }
    }
}
