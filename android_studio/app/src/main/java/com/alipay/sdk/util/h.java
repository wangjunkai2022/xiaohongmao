package com.alipay.sdk.util;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import com.alipay.android.app.IRemoteServiceCallback;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class h extends IRemoteServiceCallback.Stub {

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ f f6963c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(f fVar) {
        this.f6963c = fVar;
    }

    @Override // com.alipay.android.app.IRemoteServiceCallback
    public final boolean isHideLoadingScreen() throws RemoteException {
        return false;
    }

    @Override // com.alipay.android.app.IRemoteServiceCallback
    public final void payEnd(boolean z9, String str) throws RemoteException {
    }

    @Override // com.alipay.android.app.IRemoteServiceCallback
    public final void startActivity(String str, String str2, int i4, Bundle bundle) throws RemoteException {
        Activity activity;
        Activity activity2;
        Intent intent = new Intent("android.intent.action.MAIN", (Uri) null);
        if (bundle == null) {
            bundle = new Bundle();
        }
        try {
            bundle.putInt("CallingPid", i4);
            intent.putExtras(bundle);
        } catch (Exception unused) {
        }
        intent.setClassName(str, str2);
        activity = this.f6963c.f6955a;
        if (activity != null) {
            activity2 = this.f6963c.f6955a;
            activity2.startActivity(intent);
        }
    }
}
