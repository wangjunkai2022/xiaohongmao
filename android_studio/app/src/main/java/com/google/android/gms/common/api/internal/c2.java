package com.google.android.gms.common.api.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class c2 extends BroadcastReceiver {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    Context f28655a;

    /* renamed from: b  reason: collision with root package name */
    private final b2 f28656b;

    public c2(b2 b2Var) {
        this.f28656b = b2Var;
    }

    public final void a(Context context) {
        this.f28655a = context;
    }

    public final synchronized void b() {
        Context context = this.f28655a;
        if (context != null) {
            context.unregisterReceiver(this);
        }
        this.f28655a = null;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Uri data = intent.getData();
        if ("com.google.android.gms".equals(data != null ? data.getSchemeSpecificPart() : null)) {
            this.f28656b.a();
            b();
        }
    }
}
