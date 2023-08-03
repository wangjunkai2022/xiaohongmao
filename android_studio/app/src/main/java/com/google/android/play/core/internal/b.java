package com.google.android.play.core.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class b extends y1 implements d {
    /* JADX INFO: Access modifiers changed from: package-private */
    public b(IBinder iBinder) {
        super(iBinder, "com.google.android.play.core.inappreview.protocol.IInAppReviewService");
    }

    @Override // com.google.android.play.core.internal.d
    public final void I0(String str, Bundle bundle, f fVar) throws RemoteException {
        Parcel s9 = s();
        s9.writeString(str);
        a2.b(s9, bundle);
        a2.c(s9, fVar);
        x(2, s9);
    }
}
