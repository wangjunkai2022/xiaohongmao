package com.alipay.sdk.auth;

import android.content.DialogInterface;

/* loaded from: classes.dex */
final class i implements DialogInterface.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ g f6828a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(g gVar) {
        this.f6828a = gVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i4) {
        String str;
        this.f6828a.f6825a.cancel();
        AuthActivity.this.f6811e = false;
        StringBuilder sb = new StringBuilder();
        str = AuthActivity.this.f6808b;
        sb.append(str);
        sb.append("?resultCode=150");
        j.d(AuthActivity.this, sb.toString());
        AuthActivity.this.finish();
    }
}
