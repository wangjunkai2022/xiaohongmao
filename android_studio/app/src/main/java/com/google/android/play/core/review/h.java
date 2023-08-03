package com.google.android.play.core.review;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.tasks.o;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class h extends g {

    /* renamed from: f  reason: collision with root package name */
    final String f31812f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(i iVar, o oVar, String str) {
        super(iVar, new com.google.android.play.core.internal.h("OnRequestInstallCallback"), oVar);
        this.f31812f = str;
    }

    @Override // com.google.android.play.core.review.g, com.google.android.play.core.internal.f
    public final void y(Bundle bundle) throws RemoteException {
        super.y(bundle);
        this.f31810d.e(new zza((PendingIntent) bundle.get("confirmation_intent"), bundle.getBoolean("is_review_no_op")));
    }
}
