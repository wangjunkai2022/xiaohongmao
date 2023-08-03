package com.google.android.play.core.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public abstract class e2 extends z1 implements f2 {
    public e2() {
        super("com.google.android.play.core.appupdate.protocol.IAppUpdateServiceCallback");
    }

    @Override // com.google.android.play.core.internal.z1
    protected final boolean s(int i4, Parcel parcel, Parcel parcel2, int i10) throws RemoteException {
        if (i4 == 2) {
            h((Bundle) a2.a(parcel, Bundle.CREATOR));
            return true;
        } else if (i4 != 3) {
            return false;
        } else {
            y((Bundle) a2.a(parcel, Bundle.CREATOR));
            return true;
        }
    }
}
