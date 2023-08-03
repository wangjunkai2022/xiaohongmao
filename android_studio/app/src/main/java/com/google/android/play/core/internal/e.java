package com.google.android.play.core.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public abstract class e extends z1 implements f {
    public e() {
        super("com.google.android.play.core.inappreview.protocol.IInAppReviewServiceCallback");
    }

    @Override // com.google.android.play.core.internal.z1
    protected final boolean s(int i4, Parcel parcel, Parcel parcel2, int i10) throws RemoteException {
        if (i4 == 2) {
            y((Bundle) a2.a(parcel, Bundle.CREATOR));
            return true;
        }
        return false;
    }
}
