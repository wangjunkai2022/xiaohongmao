package com.google.android.play.core.assetpacks;

import android.annotation.TargetApi;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class h0 extends com.google.android.play.core.internal.l2 {

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.play.core.internal.h f31318c = new com.google.android.play.core.internal.h("AssetPackExtractionService");

    /* renamed from: d  reason: collision with root package name */
    private final Context f31319d;

    /* renamed from: e  reason: collision with root package name */
    private final p0 f31320e;

    /* renamed from: f  reason: collision with root package name */
    private final k4 f31321f;

    /* renamed from: g  reason: collision with root package name */
    private final r1 f31322g;
    @VisibleForTesting

    /* renamed from: h  reason: collision with root package name */
    final NotificationManager f31323h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h0(Context context, p0 p0Var, k4 k4Var, r1 r1Var) {
        this.f31319d = context;
        this.f31320e = p0Var;
        this.f31321f = k4Var;
        this.f31322g = r1Var;
        this.f31323h = (NotificationManager) context.getSystemService("notification");
    }

    @TargetApi(26)
    private final synchronized void x(@Nullable String str) {
        if (str == null) {
            str = "File downloads by Play";
        }
        this.f31323h.createNotificationChannel(new NotificationChannel("playcore-assetpacks-service-notification-channel", str, 2));
    }

    private final synchronized void z(Bundle bundle, com.google.android.play.core.internal.n2 n2Var) throws RemoteException {
        Notification.Builder priority;
        this.f31318c.a("updateServiceState AIDL call", new Object[0]);
        if (com.google.android.play.core.internal.h1.b(this.f31319d) && com.google.android.play.core.internal.h1.a(this.f31319d)) {
            int i4 = bundle.getInt("action_type");
            this.f31322g.c(n2Var);
            if (i4 != 1) {
                if (i4 == 2) {
                    this.f31321f.r(false);
                    this.f31322g.b();
                    return;
                }
                this.f31318c.b("Unknown action type received: %d", Integer.valueOf(i4));
                n2Var.w(new Bundle());
                return;
            }
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 26) {
                x(bundle.getString("notification_channel_name"));
            }
            this.f31321f.r(true);
            r1 r1Var = this.f31322g;
            String string = bundle.getString("notification_title");
            String string2 = bundle.getString("notification_subtext");
            long j4 = bundle.getLong("notification_timeout", 600000L);
            Parcelable parcelable = bundle.getParcelable("notification_on_click_intent");
            if (i10 >= 26) {
                priority = new Notification.Builder(this.f31319d, "playcore-assetpacks-service-notification-channel").setTimeoutAfter(j4);
            } else {
                priority = new Notification.Builder(this.f31319d).setPriority(-2);
            }
            if (parcelable instanceof PendingIntent) {
                priority.setContentIntent((PendingIntent) parcelable);
            }
            Notification.Builder ongoing = priority.setSmallIcon(17301633).setOngoing(false);
            if (string == null) {
                string = "Downloading additional file";
            }
            Notification.Builder contentTitle = ongoing.setContentTitle(string);
            if (string2 == null) {
                string2 = "Transferring";
            }
            contentTitle.setSubText(string2);
            int i11 = bundle.getInt("notification_color");
            if (i11 != 0) {
                priority.setColor(i11).setVisibility(-1);
            }
            r1Var.a(priority.build());
            this.f31319d.bindService(new Intent(this.f31319d, ExtractionForegroundService.class), this.f31322g, 1);
            return;
        }
        n2Var.w(new Bundle());
    }

    @Override // com.google.android.play.core.internal.m2
    public final void m0(Bundle bundle, com.google.android.play.core.internal.n2 n2Var) throws RemoteException {
        this.f31318c.a("clearAssetPackStorage AIDL call", new Object[0]);
        if (com.google.android.play.core.internal.h1.b(this.f31319d) && com.google.android.play.core.internal.h1.a(this.f31319d)) {
            this.f31320e.Q();
            n2Var.h(new Bundle());
            return;
        }
        n2Var.w(new Bundle());
    }

    @Override // com.google.android.play.core.internal.m2
    public final void t0(Bundle bundle, com.google.android.play.core.internal.n2 n2Var) throws RemoteException {
        z(bundle, n2Var);
    }
}
