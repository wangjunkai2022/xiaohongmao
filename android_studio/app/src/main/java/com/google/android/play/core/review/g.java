package com.google.android.play.core.review;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.internal.t;
import com.google.android.play.core.tasks.o;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
class g extends com.google.android.play.core.internal.e {

    /* renamed from: c  reason: collision with root package name */
    final com.google.android.play.core.internal.h f31809c;

    /* renamed from: d  reason: collision with root package name */
    final o f31810d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ i f31811e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(i iVar, com.google.android.play.core.internal.h hVar, o oVar) {
        this.f31811e = iVar;
        this.f31809c = hVar;
        this.f31810d = oVar;
    }

    @Override // com.google.android.play.core.internal.f
    public void y(Bundle bundle) throws RemoteException {
        t tVar = this.f31811e.f31814a;
        if (tVar != null) {
            tVar.s(this.f31810d);
        }
        this.f31809c.d("onGetLaunchReviewFlowInfo", new Object[0]);
    }
}
