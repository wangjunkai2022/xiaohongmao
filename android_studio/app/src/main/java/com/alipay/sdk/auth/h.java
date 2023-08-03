package com.alipay.sdk.auth;

import android.content.DialogInterface;

/* loaded from: classes.dex */
final class h implements DialogInterface.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ g f6827a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(g gVar) {
        this.f6827a = gVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i4) {
        AuthActivity.this.f6811e = true;
        this.f6827a.f6825a.proceed();
        dialogInterface.dismiss();
    }
}
