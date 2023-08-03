package com.google.android.play.core.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class s implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ t f31741a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ s(t tVar, r rVar) {
        this.f31741a = tVar;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        t.f(this.f31741a).d("ServiceConnectionImpl.onServiceConnected(%s)", componentName);
        this.f31741a.c().post(new p(this, iBinder));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        t.f(this.f31741a).d("ServiceConnectionImpl.onServiceDisconnected(%s)", componentName);
        this.f31741a.c().post(new q(this));
    }
}
