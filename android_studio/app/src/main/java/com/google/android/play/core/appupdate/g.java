package com.google.android.play.core.appupdate;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.android.play.core.install.InstallState;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class g extends com.google.android.play.core.listener.d {
    public g(Context context) {
        super(new com.google.android.play.core.internal.h("AppUpdateListenerRegistry"), new IntentFilter("com.google.android.play.core.install.ACTION_INSTALL_STATUS"), context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.play.core.listener.d
    public final void a(Context context, Intent intent) {
        if (!context.getPackageName().equals(intent.getStringExtra("package.name"))) {
            this.f31788a.a("ListenerRegistryBroadcastReceiver received broadcast for third party app: %s", intent.getStringExtra("package.name"));
            return;
        }
        this.f31788a.a("List of extras in received intent:", new Object[0]);
        for (String str : intent.getExtras().keySet()) {
            this.f31788a.a("Key: %s; value: %s", str, intent.getExtras().get(str));
        }
        InstallState g4 = InstallState.g(intent, this.f31788a);
        this.f31788a.a("ListenerRegistryBroadcastReceiver.onReceive: %s", g4);
        g(g4);
    }
}
