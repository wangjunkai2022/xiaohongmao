package com.google.android.play.core.assetpacks;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class j0 extends com.google.android.play.core.listener.d {

    /* renamed from: g  reason: collision with root package name */
    private final o2 f31346g;

    /* renamed from: h  reason: collision with root package name */
    private final u1 f31347h;

    /* renamed from: i  reason: collision with root package name */
    private final com.google.android.play.core.internal.n1 f31348i;

    /* renamed from: j  reason: collision with root package name */
    private final f1 f31349j;

    /* renamed from: k  reason: collision with root package name */
    private final x1 f31350k;

    /* renamed from: l  reason: collision with root package name */
    private final com.google.android.play.core.internal.n1 f31351l;

    /* renamed from: m  reason: collision with root package name */
    private final com.google.android.play.core.internal.n1 f31352m;

    /* renamed from: n  reason: collision with root package name */
    private final m3 f31353n;

    /* renamed from: o  reason: collision with root package name */
    private final Handler f31354o;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j0(Context context, o2 o2Var, u1 u1Var, com.google.android.play.core.internal.n1 n1Var, x1 x1Var, f1 f1Var, com.google.android.play.core.internal.n1 n1Var2, com.google.android.play.core.internal.n1 n1Var3, m3 m3Var) {
        super(new com.google.android.play.core.internal.h("AssetPackServiceListenerRegistry"), new IntentFilter("com.google.android.play.core.assetpacks.receiver.ACTION_SESSION_UPDATE"), context);
        this.f31354o = new Handler(Looper.getMainLooper());
        this.f31346g = o2Var;
        this.f31347h = u1Var;
        this.f31348i = n1Var;
        this.f31350k = x1Var;
        this.f31349j = f1Var;
        this.f31351l = n1Var2;
        this.f31352m = n1Var3;
        this.f31353n = m3Var;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.play.core.listener.d
    public final void a(Context context, Intent intent) {
        final Bundle bundleExtra = intent.getBundleExtra("com.google.android.play.core.assetpacks.receiver.EXTRA_SESSION_STATE");
        if (bundleExtra != null) {
            ArrayList<String> stringArrayList = bundleExtra.getStringArrayList("pack_names");
            if (stringArrayList != null && stringArrayList.size() == 1) {
                final AssetPackState i4 = AssetPackState.i(bundleExtra, stringArrayList.get(0), this.f31350k, this.f31353n, l0.f31402a);
                this.f31788a.a("ListenerRegistryBroadcastReceiver.onReceive: %s", i4);
                PendingIntent pendingIntent = (PendingIntent) bundleExtra.getParcelable("confirmation_intent");
                if (pendingIntent != null) {
                    this.f31349j.b(pendingIntent);
                }
                ((Executor) this.f31352m.zza()).execute(new Runnable() { // from class: com.google.android.play.core.assetpacks.g0
                    @Override // java.lang.Runnable
                    public final void run() {
                        j0.this.j(bundleExtra, i4);
                    }
                });
                ((Executor) this.f31351l.zza()).execute(new Runnable() { // from class: com.google.android.play.core.assetpacks.f0
                    @Override // java.lang.Runnable
                    public final void run() {
                        j0.this.i(bundleExtra);
                    }
                });
                return;
            }
            this.f31788a.b("Corrupt bundle received from broadcast.", new Object[0]);
            return;
        }
        this.f31788a.b("Empty bundle received from broadcast.", new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void i(Bundle bundle) {
        if (this.f31346g.p(bundle)) {
            this.f31347h.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void j(Bundle bundle, AssetPackState assetPackState) {
        if (this.f31346g.o(bundle)) {
            k(assetPackState);
            ((x4) this.f31348i.zza()).n();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void k(final AssetPackState assetPackState) {
        this.f31354o.post(new Runnable() { // from class: com.google.android.play.core.assetpacks.i0
            @Override // java.lang.Runnable
            public final void run() {
                j0.this.g(assetPackState);
            }
        });
    }
}
