package com.google.android.gms.common.api.internal;

import android.os.Handler;
import com.google.android.gms.common.internal.e;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class u1 implements e.InterfaceC0197e {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ v1 f28902a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u1(v1 v1Var) {
        this.f28902a = v1Var;
    }

    @Override // com.google.android.gms.common.internal.e.InterfaceC0197e
    public final void a() {
        Handler handler;
        handler = this.f28902a.f28919o.f28740p;
        handler.post(new t1(this));
    }
}
