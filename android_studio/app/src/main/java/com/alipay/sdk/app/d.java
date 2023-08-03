package com.alipay.sdk.app;

import android.content.DialogInterface;

/* loaded from: classes.dex */
final class d implements DialogInterface.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ c f6760a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(c cVar) {
        this.f6760a = cVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i4) {
        this.f6760a.f6759b.f6753b = true;
        this.f6760a.f6758a.proceed();
        dialogInterface.dismiss();
    }
}
