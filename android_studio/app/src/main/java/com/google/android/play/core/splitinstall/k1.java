package com.google.android.play.core.splitinstall;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class k1 extends com.google.android.play.core.listener.d {
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private static k1 f31896j;

    /* renamed from: g  reason: collision with root package name */
    private final Handler f31897g;

    /* renamed from: h  reason: collision with root package name */
    private final u0 f31898h;

    /* renamed from: i  reason: collision with root package name */
    private final Set f31899i;

    @VisibleForTesting
    public k1(Context context, u0 u0Var) {
        super(new com.google.android.play.core.internal.h("SplitInstallListenerRegistry"), new IntentFilter("com.google.android.play.core.splitinstall.receiver.SplitInstallUpdateIntentService"), context);
        this.f31897g = new Handler(Looper.getMainLooper());
        this.f31899i = new LinkedHashSet();
        this.f31898h = u0Var;
    }

    public static synchronized k1 j(Context context) {
        k1 k1Var;
        synchronized (k1.class) {
            if (f31896j == null) {
                f31896j = new k1(context, zzo.INSTANCE);
            }
            k1Var = f31896j;
        }
        return k1Var;
    }

    @Override // com.google.android.play.core.listener.d
    protected final void a(Context context, Intent intent) {
        Bundle bundleExtra = intent.getBundleExtra("session_state");
        if (bundleExtra == null) {
            return;
        }
        f n9 = f.n(bundleExtra);
        this.f31788a.a("ListenerRegistryBroadcastReceiver.onReceive: %s", n9);
        v0 zza = this.f31898h.zza();
        if (n9.i() == 3 && zza != null) {
            zza.a(n9.m(), new i1(this, n9, intent, context));
        } else {
            n(n9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized void l(g gVar) {
        this.f31899i.add(gVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized void m(g gVar) {
        this.f31899i.remove(gVar);
    }

    public final synchronized void n(f fVar) {
        Iterator it = new LinkedHashSet(this.f31899i).iterator();
        while (it.hasNext()) {
            ((g) it.next()).onStateUpdate(fVar);
        }
        super.g(fVar);
    }
}
