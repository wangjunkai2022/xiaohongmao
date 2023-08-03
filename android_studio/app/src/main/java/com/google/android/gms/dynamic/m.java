package com.google.android.gms.dynamic;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.view.View;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
final class m implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f29325a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Intent f29326b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(Context context, Intent intent) {
        this.f29325a = context;
        this.f29326b = intent;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        try {
            this.f29325a.startActivity(this.f29326b);
        } catch (ActivityNotFoundException e4) {
            Log.e("DeferredLifecycleHelper", "Failed to start resolution intent", e4);
        }
    }
}
