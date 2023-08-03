package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.os.Message;
import android.util.Log;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class h1 extends com.google.android.gms.internal.base.q {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ j1 f28706a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h1(j1 j1Var, Looper looper) {
        super(looper);
        this.f28706a = j1Var;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i4 = message.what;
        if (i4 == 1) {
            j1.Q(this.f28706a);
        } else if (i4 != 2) {
            StringBuilder sb = new StringBuilder(31);
            sb.append("Unknown message id: ");
            sb.append(i4);
            Log.w("GoogleApiClientImpl", sb.toString());
        } else {
            j1.P(this.f28706a);
        }
    }
}
