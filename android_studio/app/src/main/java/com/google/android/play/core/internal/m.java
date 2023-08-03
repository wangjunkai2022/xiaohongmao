package com.google.android.play.core.internal;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.IInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class m extends i {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ t f31730b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(t tVar) {
        this.f31730b = tVar;
    }

    @Override // com.google.android.play.core.internal.i
    public final void a() {
        IInterface iInterface;
        h hVar;
        Context context;
        ServiceConnection serviceConnection;
        t tVar = this.f31730b;
        iInterface = tVar.f31759n;
        if (iInterface != null) {
            hVar = tVar.f31747b;
            hVar.d("Unbind from service.", new Object[0]);
            t tVar2 = this.f31730b;
            context = tVar2.f31746a;
            serviceConnection = tVar2.f31758m;
            context.unbindService(serviceConnection);
            this.f31730b.f31752g = false;
            this.f31730b.f31759n = null;
            this.f31730b.f31758m = null;
        }
        this.f31730b.u();
    }
}
