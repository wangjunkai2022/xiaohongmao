package com.google.android.play.core.assetpacks;

import android.app.Notification;
import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class r1 implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.play.core.internal.h f31551a = new com.google.android.play.core.internal.h("ExtractionForegroundServiceConnection");

    /* renamed from: b  reason: collision with root package name */
    private final List f31552b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private final Context f31553c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private ExtractionForegroundService f31554d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private Notification f31555e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r1(Context context) {
        this.f31553c = context;
    }

    private final void d() {
        ArrayList arrayList;
        synchronized (this.f31552b) {
            arrayList = new ArrayList(this.f31552b);
            this.f31552b.clear();
        }
        int size = arrayList.size();
        for (int i4 = 0; i4 < size; i4++) {
            try {
                ((com.google.android.play.core.internal.n2) arrayList.get(i4)).P0(new Bundle(), new Bundle());
            } catch (RemoteException unused) {
                this.f31551a.b("Could not resolve Play Store service state update callback.", new Object[0]);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Notification notification) {
        this.f31555e = notification;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        this.f31551a.a("Stopping foreground installation service.", new Object[0]);
        this.f31553c.unbindService(this);
        ExtractionForegroundService extractionForegroundService = this.f31554d;
        if (extractionForegroundService != null) {
            extractionForegroundService.a();
        }
        d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c(com.google.android.play.core.internal.n2 n2Var) {
        synchronized (this.f31552b) {
            this.f31552b.add(n2Var);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.f31551a.a("Starting foreground installation service.", new Object[0]);
        ExtractionForegroundService extractionForegroundService = ((q1) iBinder).f31536c;
        this.f31554d = extractionForegroundService;
        extractionForegroundService.startForeground(-1883842196, this.f31555e);
        d();
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
    }
}
