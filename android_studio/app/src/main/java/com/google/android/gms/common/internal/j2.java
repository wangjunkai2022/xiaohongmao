package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.RemoteException;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public final class j2 extends com.google.android.gms.internal.common.a implements n {
    /* JADX INFO: Access modifiers changed from: package-private */
    public j2(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.ICancelToken");
    }

    @Override // com.google.android.gms.common.internal.n
    public final void cancel() throws RemoteException {
        z(2, n1());
    }
}
