package com.alipay.sdk.app;

import android.app.Activity;
import android.content.DialogInterface;

/* loaded from: classes.dex */
final class e implements DialogInterface.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ c f6761a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(c cVar) {
        this.f6761a = cVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i4) {
        Activity activity;
        this.f6761a.f6758a.cancel();
        this.f6761a.f6759b.f6753b = false;
        h.f6764a = h.a();
        activity = this.f6761a.f6759b.f6752a;
        activity.finish();
    }
}
