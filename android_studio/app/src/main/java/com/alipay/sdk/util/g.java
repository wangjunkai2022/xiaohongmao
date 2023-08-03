package com.alipay.sdk.util;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.alipay.android.app.IAlixPay;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class g implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ f f6962a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(f fVar) {
        this.f6962a = fVar;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        Object obj;
        Object obj2;
        obj = this.f6962a.f6957c;
        synchronized (obj) {
            this.f6962a.f6956b = IAlixPay.Stub.asInterface(iBinder);
            obj2 = this.f6962a.f6957c;
            obj2.notify();
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.f6962a.f6956b = null;
    }
}
