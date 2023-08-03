package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@y2.d0
/* loaded from: classes2.dex */
public final class s1 implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    private final int f29188a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ e f29189b;

    public s1(e eVar, int i4) {
        this.f29189b = eVar;
        this.f29188a = i4;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        Object obj;
        p h1Var;
        e eVar = this.f29189b;
        if (iBinder == null) {
            e.j0(eVar, 16);
            return;
        }
        obj = eVar.f29086n;
        synchronized (obj) {
            e eVar2 = this.f29189b;
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (queryLocalInterface != null && (queryLocalInterface instanceof p)) {
                h1Var = (p) queryLocalInterface;
            } else {
                h1Var = new h1(iBinder);
            }
            eVar2.f29087o = h1Var;
        }
        this.f29189b.k0(0, null, this.f29188a);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        Object obj;
        obj = this.f29189b.f29086n;
        synchronized (obj) {
            this.f29189b.f29087o = null;
        }
        Handler handler = this.f29189b.f29084l;
        handler.sendMessage(handler.obtainMessage(6, this.f29188a, 1));
    }
}
