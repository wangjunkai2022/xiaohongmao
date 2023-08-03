package com.google.android.gms.common.api.internal;

import android.os.Handler;
import com.google.android.gms.common.api.internal.d;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
final class q1 implements d.a {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ i f28863a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q1(i iVar) {
        this.f28863a = iVar;
    }

    @Override // com.google.android.gms.common.api.internal.d.a
    public final void a(boolean z9) {
        Handler handler;
        Handler handler2;
        i iVar = this.f28863a;
        handler = iVar.f28740p;
        handler2 = iVar.f28740p;
        handler.sendMessage(handler2.obtainMessage(1, Boolean.valueOf(z9)));
    }
}
