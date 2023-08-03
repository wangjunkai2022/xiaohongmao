package com.google.android.play.core.assetpacks;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public class AssetPackExtractionService extends Service {

    /* renamed from: a  reason: collision with root package name */
    h0 f31235a;

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return this.f31235a;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        j2.a(getApplicationContext()).a(this);
    }
}
